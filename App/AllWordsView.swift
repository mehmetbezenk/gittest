import SwiftUI

/// Tüm kelimeler: arama ve sıralama.
struct AllWordsView: View {
    @State private var query = ""
    @State private var alphabetical = false

    private var todaySlot: Int { WordStore.slot(for: Date()) }

    private var results: [DailyWord] {
        let base = alphabetical
            ? WordStore.all.sorted { $0.word.localizedCaseInsensitiveCompare($1.word) == .orderedAscending }
            : WordStore.all
        let text = query.trimmingCharacters(in: .whitespaces)
        guard !text.isEmpty else { return base }
        return base.filter { matches($0.word, text) || matches($0.meaning, text) }
    }

    var body: some View {
        NavigationStack {
            ScrollViewReader { proxy in
                List(results) { item in
                    NavigationLink(value: item) {
                        WordRow(word: item, isToday: item.id == todaySlot)
                    }
                }
                .listStyle(.plain)
                .onAppear {
                    if query.isEmpty && !alphabetical {
                        proxy.scrollTo(todaySlot, anchor: .center)
                    }
                }
            }
            .navigationTitle("Kelimeler")
            .searchable(text: $query, prompt: "İngilizce ya da Türkçe ara")
            .navigationDestination(for: DailyWord.self) { item in
                WordDetailView(word: item)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Picker("Sıralama", selection: $alphabetical) {
                            Text("Takvim sırası").tag(false)
                            Text("Alfabetik").tag(true)
                        }
                    } label: {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                    .accessibilityLabel("Sıralama")
                }
            }
        }
    }

    private func matches(_ text: String, _ query: String) -> Bool {
        text.range(of: query, options: [.caseInsensitive, .diacriticInsensitive],
                   locale: Locale(identifier: "tr_TR")) != nil
    }
}

private struct WordRow: View {
    let word: DailyWord
    let isToday: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                Text(verbatim: word.word)
                    .font(.system(.headline, design: .serif))
                Text(verbatim: word.posLabel)
                    .font(.caption)
                    .foregroundStyle(Theme.english)
                Spacer(minLength: 4)
                Text(verbatim: isToday ? "Bugün" : WordStore.dayLabel(for: word))
                    .font(.caption.weight(isToday ? .bold : .regular))
                    .foregroundStyle(isToday ? Theme.english : Theme.secondary)
            }
            Text(verbatim: word.meaning)
                .font(.subheadline)
                .foregroundStyle(Theme.secondary)
                .lineLimit(1)
        }
        .padding(.vertical, 2)
    }
}

struct WordDetailView: View {
    let word: DailyWord
    @StateObject private var speaker = Speaker()

    init(word: DailyWord) {
        self.word = word
    }

    var body: some View {
        ScrollView {
            WordCardView(word: word, speaker: speaker)
                .padding(16)
        }
        .background(Theme.appBackground.ignoresSafeArea())
        .navigationTitle(WordStore.dayLabel(for: word))
        .navigationBarTitleDisplayMode(.inline)
    }
}
