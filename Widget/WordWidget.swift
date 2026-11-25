import SwiftUI
import WidgetKit

// MARK: - Zaman çizelgesi

struct WordEntry: TimelineEntry {
    let date: Date
    let word: DailyWord
    let yesterday: DailyWord
}

struct WordProvider: TimelineProvider {
    func placeholder(in context: Context) -> WordEntry {
        makeEntry(for: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (WordEntry) -> Void) {
        completion(makeEntry(for: Date()))
    }

    /// Bugün ve sonraki 7 günün gece yarısı için kayıt; kelime tam gece yarısı değişir.
    func getTimeline(in context: Context, completion: @escaping (Timeline<WordEntry>) -> Void) {
        let calendar = WordStore.calendar
        let now = Date()
        let startOfToday = calendar.startOfDay(for: now)
        var entries = [makeEntry(for: now)]
        for day in 1...7 {
            if let date = calendar.date(byAdding: .day, value: day, to: startOfToday) {
                entries.append(makeEntry(for: date))
            }
        }
        completion(Timeline(entries: entries, policy: .atEnd))
    }

    private func makeEntry(for date: Date) -> WordEntry {
        WordEntry(date: date,
                  word: WordStore.word(for: date),
                  yesterday: WordStore.word(for: WordStore.date(byAddingDays: -1, to: date)))
    }
}

// MARK: - Görünümler

struct WordWidgetEntryView: View {
    @Environment(\.widgetFamily) private var family
    let entry: WordEntry

    private var isAccessory: Bool {
        family == .accessoryCircular || family == .accessoryRectangular || family == .accessoryInline
    }

    var body: some View {
        content
            .containerBackground(for: .widget) {
                if isAccessory { Color.clear } else { Theme.widgetBackground }
            }
    }

    @ViewBuilder private var content: some View {
        switch family {
        case .systemSmall: SmallWordView(entry: entry)
        case .systemLarge, .systemExtraLarge: LargeWordView(entry: entry)
        case .accessoryInline: Text(verbatim: "\(entry.word.word) · \(entry.word.firstMeaning)")
        case .accessoryCircular: CircularWordView(entry: entry)
        case .accessoryRectangular: RectangularWordView(entry: entry)
        default: MediumWordView(entry: entry)
        }
    }
}

private struct WidgetHeader: View {
    let date: Date
    let size: CGFloat

    var body: some View {
        HStack(spacing: 6) {
            Text(verbatim: "GÜNÜN KELİMESİ")
                .font(.system(size: size, weight: .bold))
                .foregroundStyle(Theme.english)
                .lineLimit(1)
            Spacer(minLength: 6)
            Text(verbatim: TurkishDate.long(date))
                .font(.system(size: size, weight: .medium))
                .foregroundStyle(Theme.secondary)
                .lineLimit(1)
                .minimumScaleFactor(0.8)
        }
    }
}

private struct PosChip: View {
    let label: String
    let size: CGFloat

    var body: some View {
        Text(verbatim: label)
            .font(.system(size: size, weight: .semibold))
            .foregroundStyle(Theme.english)
            .lineLimit(1)
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(Theme.chip, in: RoundedRectangle(cornerRadius: 6, style: .continuous))
    }
}

private struct SmallWordView: View {
    let entry: WordEntry

    var body: some View {
        let word = entry.word
        VStack(alignment: .leading, spacing: 0) {
            Text(verbatim: TurkishDate.shortUppercased(entry.date))
                .font(.system(size: 9.5, weight: .bold))
                .foregroundStyle(Theme.english)
                .lineLimit(1)
            Text(verbatim: word.word)
                .font(.system(size: 21, weight: .bold, design: .serif))
                .foregroundStyle(Theme.text)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .widgetAccentable()
                .padding(.top, 3)
            Text(verbatim: "“\(word.plainExample)”")
                .font(.system(size: 11.5, design: .serif).italic())
                .foregroundStyle(Theme.text)
                .lineLimit(3)
                .minimumScaleFactor(0.8)
                .padding(.top, 4)
            Spacer(minLength: 2)
            Text(verbatim: word.meaning)
                .font(.system(size: 11.5, weight: .semibold))
                .foregroundStyle(Theme.turkish)
                .lineLimit(2)
                .minimumScaleFactor(0.75)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(EdgeInsets(top: 13, leading: 14, bottom: 12, trailing: 14))
    }
}

private struct MediumWordView: View {
    let entry: WordEntry

    var body: some View {
        let word = entry.word
        VStack(alignment: .leading, spacing: 0) {
            WidgetHeader(date: entry.date, size: 9.5)
            HStack(spacing: 8) {
                Text(verbatim: word.word)
                    .font(.system(size: 23, weight: .bold, design: .serif))
                    .foregroundStyle(Theme.text)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .widgetAccentable()
                PosChip(label: word.posLabel, size: 9)
                Spacer(minLength: 0)
            }
            .padding(.top, 4)
            Text(verbatim: "“\(word.plainExample)”")
                .font(.system(size: 13.5, design: .serif).italic())
                .foregroundStyle(Theme.text)
                .lineLimit(2)
                .minimumScaleFactor(0.75)
                .padding(.top, 3)
            Spacer(minLength: 4)
            Text(verbatim: word.meaning)
                .font(.system(size: 12.5, weight: .semibold))
                .foregroundStyle(Theme.turkish)
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(verbatim: word.translation)
                .font(.system(size: 11.5))
                .foregroundStyle(Theme.secondary)
                .lineLimit(2)
                .minimumScaleFactor(0.75)
                .padding(.top, 1)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(EdgeInsets(top: 13, leading: 16, bottom: 13, trailing: 16))
    }
}

private struct LargeWordView: View {
    let entry: WordEntry

    var body: some View {
        let word = entry.word
        VStack(alignment: .leading, spacing: 0) {
            WidgetHeader(date: entry.date, size: 11)
            Text(verbatim: word.word)
                .font(.system(size: 34, weight: .bold, design: .serif))
                .foregroundStyle(Theme.text)
                .lineLimit(1)
                .minimumScaleFactor(0.45)
                .widgetAccentable()
                .padding(.top, 12)
            PosChip(label: word.posLabel, size: 11)
                .padding(.top, 6)
            Text(verbatim: "ÖRNEK CÜMLE")
                .font(.system(size: 10, weight: .bold))
                .foregroundStyle(Theme.secondary)
                .padding(.top, 14)
            Text(verbatim: "“\(word.plainExample)”")
                .font(.system(size: 18, design: .serif).italic())
                .foregroundStyle(Theme.text)
                .lineLimit(4)
                .minimumScaleFactor(0.75)
                .padding(.top, 4)
            Text(verbatim: "TÜRKÇESİ")
                .font(.system(size: 10, weight: .bold))
                .foregroundStyle(Theme.turkish)
                .padding(.top, 14)
            Text(verbatim: word.meaning)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(Theme.turkish)
                .lineLimit(2)
                .minimumScaleFactor(0.75)
                .padding(.top, 4)
            Text(verbatim: word.translation)
                .font(.system(size: 15))
                .foregroundStyle(Theme.text)
                .lineLimit(3)
                .minimumScaleFactor(0.8)
                .padding(.top, 3)
            Spacer(minLength: 6)
            HStack(spacing: 4) {
                Text(verbatim: "Dün:")
                    .font(.system(size: 11.5, weight: .semibold))
                Text(verbatim: "\(entry.yesterday.word) — \(entry.yesterday.firstMeaning)")
                    .font(.system(size: 11.5))
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
            }
            .foregroundStyle(Theme.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(EdgeInsets(top: 18, leading: 18, bottom: 16, trailing: 18))
    }
}

private struct RectangularWordView: View {
    let entry: WordEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text(verbatim: entry.word.word)
                .font(.system(size: 15, weight: .bold))
                .lineLimit(1)
                .minimumScaleFactor(0.6)
                .widgetAccentable()
            Text(verbatim: entry.word.meaning)
                .font(.system(size: 12, weight: .medium))
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(verbatim: entry.word.plainExample)
                .font(.system(size: 11))
                .lineLimit(2)
                .minimumScaleFactor(0.8)
                .opacity(0.75)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
}

private struct CircularWordView: View {
    let entry: WordEntry

    var body: some View {
        ZStack {
            AccessoryWidgetBackground()
            Text(verbatim: entry.word.word)
                .font(.system(size: 13, weight: .bold))
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .minimumScaleFactor(0.45)
                .padding(4)
        }
    }
}

// MARK: - Widget

struct WordWidget: Widget {
    let kind = "GununKelimesiWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: WordProvider()) { entry in
            WordWidgetEntryView(entry: entry)
                .widgetURL(URL(string: "gununkelimesi://bugun"))
        }
        .configurationDisplayName("Günün Kelimesi")
        .description("Her gün bir İngilizce kelime, örnek cümlesi ve Türkçe anlamı.")
        .supportedFamilies([
            .systemSmall, .systemMedium, .systemLarge,
            .accessoryRectangular, .accessoryInline, .accessoryCircular,
        ])
        .contentMarginsDisabled()
    }
}

@main
struct GununKelimesiWidgetBundle: WidgetBundle {
    var body: some Widget {
        WordWidget()
    }
}
