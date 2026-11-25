import SwiftUI

/// Kelime kartı: kelime, örnek cümle ve Türkçesi.
struct WordCardView: View {
    let word: DailyWord
    @ObservedObject var speaker: Speaker

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(verbatim: word.posLabel)
                .font(.caption.weight(.semibold))
                .foregroundStyle(Theme.english)
                .padding(.horizontal, 10)
                .padding(.vertical, 3)
                .background(Theme.chip, in: Capsule())

            HStack(alignment: .center, spacing: 12) {
                Text(verbatim: word.word)
                    .font(.system(size: 40, weight: .bold, design: .serif))
                    .foregroundStyle(Theme.text)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Spacer(minLength: 0)
                Button {
                    speaker.speak(word.word, rate: 0.42)
                } label: {
                    Image(systemName: "speaker.wave.2.fill")
                        .font(.title3)
                        .frame(width: 46, height: 46)
                        .background(Theme.chip, in: Circle())
                }
                .foregroundStyle(Theme.english)
                .accessibilityLabel("Kelimeyi dinle")
            }
            .padding(.top, 12)

            sectionLabel("ÖRNEK CÜMLE", color: Theme.secondary)
                .padding(.top, 20)
            highlightedExample
                .font(.system(size: 21, design: .serif).italic())
                .foregroundStyle(Theme.text)
                .fixedSize(horizontal: false, vertical: true)

            Button {
                speaker.speak(word.plainExample, rate: 0.46)
            } label: {
                Label("Cümleyi dinle", systemImage: "speaker.wave.2.fill")
                    .font(.subheadline.weight(.semibold))
                    .padding(.horizontal, 14)
                    .padding(.vertical, 9)
                    .background(Theme.chip, in: Capsule())
            }
            .foregroundStyle(Theme.english)
            .padding(.top, 12)

            Divider()
                .padding(.top, 20)

            sectionLabel("TÜRKÇESİ", color: Theme.turkish)
                .padding(.top, 20)
            Text(verbatim: word.meaning)
                .font(.title3.weight(.bold))
                .foregroundStyle(Theme.turkish)
                .fixedSize(horizontal: false, vertical: true)
            Text(verbatim: word.translation)
                .font(.body)
                .foregroundStyle(Theme.text.opacity(0.9))
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(Theme.card, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24, style: .continuous).stroke(Theme.line, lineWidth: 1))
        .shadow(color: Color.black.opacity(0.05), radius: 12, x: 0, y: 6)
    }

    private func sectionLabel(_ title: String, color: Color) -> some View {
        Text(verbatim: title)
            .font(.caption2.weight(.bold))
            .kerning(1.2)
            .foregroundStyle(color)
            .padding(.bottom, 8)
    }

    /// Kelimenin geçtiği yer kalın ve mavi.
    private var highlightedExample: Text {
        var result = Text(verbatim: "")
        for segment in word.exampleSegments {
            let piece = Text(verbatim: segment.text)
            result = result + (segment.highlighted ? piece.bold().foregroundColor(Theme.english) : piece)
        }
        return result
    }
}
