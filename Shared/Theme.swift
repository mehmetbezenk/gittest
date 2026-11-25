import SwiftUI
import UIKit

extension Color {
    /// Açık ve koyu temaya göre değişen renk.
    init(light: UInt32, dark: UInt32, lightAlpha: CGFloat = 1, darkAlpha: CGFloat = 1) {
        self.init(uiColor: UIColor { traits in
            let isDark = traits.userInterfaceStyle == .dark
            let hex = isDark ? dark : light
            return UIColor(red: CGFloat((hex >> 16) & 0xFF) / 255,
                           green: CGFloat((hex >> 8) & 0xFF) / 255,
                           blue: CGFloat(hex & 0xFF) / 255,
                           alpha: isDark ? darkAlpha : lightAlpha)
        })
    }
}

enum Theme {
    static let widgetBackground = Color(light: 0xFFFCF5, dark: 0x16181D)
    static let appBackground = Color(light: 0xF6F3EC, dark: 0x0E1014)
    static let card = Color(light: 0xFFFFFF, dark: 0x1A1D23)
    static let text = Color(light: 0x1C1C1E, dark: 0xF2F2F7)
    static let secondary = Color(light: 0x6E6E73, dark: 0xA1A1A8)
    static let english = Color(light: 0x2F5BD3, dark: 0x8AB4FF)
    static let turkish = Color(light: 0xC8102E, dark: 0xFF7A86)
    static let chip = Color(light: 0x2F5BD3, dark: 0x8AB4FF, lightAlpha: 0.12, darkAlpha: 0.18)
    static let line = Color(light: 0x000000, dark: 0xFFFFFF, lightAlpha: 0.08, darkAlpha: 0.10)
}
