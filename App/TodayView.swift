import SwiftUI

struct TodayView: View {
    let resetToken: UUID

    @State private var offset = 0
    @State private var now = Date()
    @StateObject private var speaker = Speaker()
    @Environment(\.scenePhase) private var scenePhase

    init(resetToken: UUID) {
        self.resetToken = resetToken
    }

    private var shownDate: Date { WordStore.date(byAddingDays: offset, to: now) }
    private var word: DailyWord { WordStore.word(for: shownDate) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                header
                WordCardView(word: word, speaker: speaker)
                    .id(word.id)
                    .transition(.opacity)
                    .simultaneousGesture(swipe)
                navigation
                Text(verbatim: "Kartı sağa-sola kaydırarak da gezinebilirsin.")
                    .font(.caption)
                    .foregroundStyle(Theme.secondary)
                    .frame(maxWidth: .infinity)
                recent
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 32)
        }
        .background(Theme.appBackground.ignoresSafeArea())
        .onChange(of: scenePhase) { _, phase in
            if phase == .active { now = Date() }
        }
        .onChange(of: resetToken) { _, _ in
            now = Date()
            withAnimation { offset = 0 }
        }
    }

    private var header: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading, spacing: 2) {
                Text(verbatim: "GÜNÜN KELİMESİ")
                    .font(.caption.weight(.bold))
                    .kerning(1.2)
                    .foregroundStyle(Theme.english)
                Text(verbatim: TurkishDate.long(shownDate))
                    .font(.subheadline)
                    .foregroundStyle(Theme.secondary)
            }
            Spacer()
            Text(verbatim: WordStore.relativeLabel(offset))
                .font(.caption.weight(.semibold))
                .foregroundStyle(offset == 0 ? Theme.english : Theme.secondary)
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(offset == 0 ? Theme.chip : Color.clear, in: Capsule())
                .overlay(Capsule().stroke(Theme.line, lineWidth: offset == 0 ? 0 : 1))
        }
        .padding(.top, 8)
        .padding(.horizontal, 4)
    }

    private var navigation: some View {
        HStack(spacing: 10) {
            Button("‹ Önceki") { move(-1) }
                .buttonStyle(PillButtonStyle())
            Button("Bugün") { withAnimation(.easeInOut(duration: 0.2)) { offset = 0 } }
                .buttonStyle(PillButtonStyle(accent: true))
                .disabled(offset == 0)
                .opacity(offset == 0 ? 0.4 : 1)
            Button("Sonraki ›") { move(1) }
                .buttonStyle(PillButtonStyle())
        }
    }

    private var recent: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(verbatim: "SON 7 GÜN")
                .font(.caption.weight(.bold))
                .kerning(1.2)
                .foregroundStyle(Theme.secondary)
                .padding(.top, 8)
                .padding(.horizontal, 4)
            VStack(spacing: 0) {
                ForEach(1...7, id: \.self) { daysAgo in
                    let item = WordStore.word(for: WordStore.date(byAddingDays: -daysAgo, to: now))
                    Button {
                        withAnimation(.easeInOut(duration: 0.2)) { offset = -daysAgo }
                    } label: {
                        HStack(alignment: .firstTextBaseline, spacing: 10) {
                            Text(verbatim: item.word)
                                .font(.system(.body, design: .serif).weight(.bold))
                                .foregroundStyle(Theme.text)
                            Text(verbatim: item.meaning.components(separatedBy: ";").first ?? item.meaning)
                                .font(.subheadline)
                                .foregroundStyle(Theme.secondary)
                                .lineLimit(1)
                            Spacer(minLength: 4)
                            Text(verbatim: WordStore.relativeLabel(-daysAgo))
                                .font(.caption)
                                .foregroundStyle(Theme.secondary)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 13)
                        .contentShape(Rectangle())
                    }
                    .buttonStyle(.plain)
                    if daysAgo < 7 {
                        Divider().padding(.leading, 16)
                    }
                }
            }
            .background(Theme.card, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Theme.line, lineWidth: 1))
        }
    }

    private var swipe: some Gesture {
        DragGesture(minimumDistance: 30)
            .onEnded { value in
                let dx = value.translation.width
                let dy = value.translation.height
                guard abs(dx) > 60, abs(dx) > abs(dy) * 1.5 else { return }
                move(dx < 0 ? 1 : -1)
            }
    }

    private func move(_ delta: Int) {
        withAnimation(.easeInOut(duration: 0.2)) { offset += delta }
    }
}

struct PillButtonStyle: ButtonStyle {
    var accent = false

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.body.weight(.semibold))
            .lineLimit(1)
            .minimumScaleFactor(0.8)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 13)
            .foregroundStyle(accent ? Theme.english : Theme.text)
            .background(Theme.card, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 14, style: .continuous).stroke(Theme.line, lineWidth: 1))
            .opacity(configuration.isPressed ? 0.6 : 1)
    }
}
