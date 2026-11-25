import Foundation

/// Takvimdeki bir güne ait kelime.
struct DailyWord: Identifiable, Hashable {
    /// Takvim sırası (0 = 1 Ocak, 59 = 29 Şubat, 365 = 31 Aralık)
    let id: Int
    let word: String
    let pos: String
    /// Türkçe anlam
    let meaning: String
    /// İngilizce örnek cümle; kelime *yıldız* içinde
    let example: String
    /// Örnek cümlenin Türkçe çevirisi
    let translation: String

    var posLabel: String { WordStore.posLabels[pos] ?? pos }

    var plainExample: String { example.replacingOccurrences(of: "*", with: "") }

    /// Anlamın ilk parçası (virgül veya noktalı virgüle kadar)
    var firstMeaning: String {
        let first = meaning.split(whereSeparator: { $0 == ";" || $0 == "," }).first.map(String.init) ?? meaning
        return first.trimmingCharacters(in: .whitespaces)
    }

    /// Örnek cümle parçaları; vurgulu parça kelimenin geçtiği yer.
    var exampleSegments: [(text: String, highlighted: Bool)] {
        var result: [(text: String, highlighted: Bool)] = []
        for (index, part) in example.components(separatedBy: "*").enumerated() where !part.isEmpty {
            result.append((text: part, highlighted: index % 2 == 1))
        }
        return result
    }
}

enum WordStore {
    static let posLabels: [String: String] = [
        "n": "isim", "v": "fiil", "adj": "sıfat", "adv": "zarf", "phr": "phrasal verb", "idm": "deyim",
    ]

    static let monthNames = [
        "Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
        "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık",
    ]

    /// Her ayın 366 günlük takvimdeki başlangıç sırası (Şubat 29 gün sayılır).
    private static let monthStart = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335]

    static var calendar: Calendar {
        var cal = Calendar(identifier: .gregorian)
        cal.timeZone = .current
        return cal
    }

    static let all: [DailyWord] = {
        var list: [DailyWord] = []
        for line in wordData.split(separator: "\n") {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            if trimmed.isEmpty || trimmed.hasPrefix("#") { continue }
            let fields = trimmed.components(separatedBy: "|").map { $0.trimmingCharacters(in: .whitespaces) }
            guard fields.count == 5 else { continue }
            list.append(DailyWord(id: list.count, word: fields[0], pos: fields[1], meaning: fields[2],
                                  example: fields[3], translation: fields[4]))
        }
        return list
    }()

    static let placeholder = DailyWord(
        id: 329, word: "persistent", pos: "adj", meaning: "azimli, ısrarlı, sebatkâr",
        example: "Learning a language takes *persistent* effort, not talent.",
        translation: "Dil öğrenmek yetenekten çok azimli bir çaba ister.")

    static func slot(for date: Date) -> Int {
        let parts = calendar.dateComponents([.month, .day], from: date)
        let month = min(max((parts.month ?? 1) - 1, 0), 11)
        return monthStart[month] + (parts.day ?? 1) - 1
    }

    static func word(for date: Date) -> DailyWord {
        guard !all.isEmpty else { return placeholder }
        return all[slot(for: date) % all.count]
    }

    static func date(byAddingDays days: Int, to date: Date) -> Date {
        calendar.date(byAdding: .day, value: days, to: date) ?? date
    }

    /// Kelimenin takvimdeki günü, ör. "25 Kasım"
    static func dayLabel(for word: DailyWord) -> String {
        var month = 0
        for (index, start) in monthStart.enumerated() where word.id >= start { month = index }
        return "\(word.id - monthStart[month] + 1) \(monthNames[month])"
    }

    static func relativeLabel(_ offset: Int) -> String {
        switch offset {
        case 0: return "Bugün"
        case -1: return "Dün"
        case 1: return "Yarın"
        default: return offset < 0 ? "\(-offset) gün önce" : "\(offset) gün sonra"
        }
    }
}

enum TurkishDate {
    private static let turkish = Locale(identifier: "tr_TR")

    private static let longFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "tr_TR")
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = "d MMMM EEEE"
        return formatter
    }()

    private static let shortFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "tr_TR")
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = "d MMMM"
        return formatter
    }()

    /// "25 Kasım Çarşamba"
    static func long(_ date: Date) -> String { longFormatter.string(from: date) }

    /// "25 KASIM"
    static func shortUppercased(_ date: Date) -> String {
        shortFormatter.string(from: date).uppercased(with: turkish)
    }
}
