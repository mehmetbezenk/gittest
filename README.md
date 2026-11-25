# Günün Kelimesi · iPhone uygulaması + widget

Her gün bir İngilizce kelime: örnek cümlesi, altında Türkçe anlamı ve çevirisi.

- **Uygulama:** Bugünün kelime kartı, sesli telaffuz (kelime ve cümle), günler arasında gezinme (kaydırarak da), son 7 günün tekrarı, tüm kelimelerde İngilizce/Türkçe arama.
- **Widget:** Ana ekran (küçük, orta, büyük) ve kilit ekranı (dikdörtgen, satır içi, yuvarlak). Kelime tam gece yarısı değişir. Widget'a dokununca uygulama bugünün kelimesiyle açılır.
- **Kelimeler:** 366 kelime, her takvim gününe bir tane (29 Şubat dahil). Liste `Shared/WordData.swift` dosyasında.

## Proje yapısı

```
App/            Uygulama (SwiftUI)
Widget/         Widget (WidgetKit)
Shared/         Kelime listesi, tarih eşleme, renkler (iki hedef de kullanır)
project.yml     XcodeGen proje tanımı
.github/workflows/build.yml   GitHub'ın Mac sunucularında imzasız .ipa derler
```

## 1) .ipa dosyasını derlemek (Mac gerekmez)

1. GitHub'da yeni bir depo aç ve bu klasördeki her şeyi (gizli `.github` klasörü dahil) yükle.
2. Depoda **Actions** sekmesine gir, gerekirse iş akışlarını etkinleştir.
3. "iPhone uygulamasını derle (.ipa)" iş akışını seç ve **Run workflow** düğmesine bas. `main` dalına her gönderimde de kendiliğinden çalışır.
4. Yaklaşık 5–10 dakika sonra çalıştırmanın altındaki **Artifacts** bölümünden `GununKelimesi-ipa` dosyasını indir. İçindeki `GununKelimesi.ipa` kurulacak dosyadır.

## 2) Windows'tan iPhone'a kurmak (Sideloadly)

1. iTunes ve iCloud'u **Apple'ın sitesinden** kur. Microsoft Store sürümleri çalışmaz, yüklüyse kaldır.
2. sideloadly.io adresinden Sideloadly'yi indirip kur.
3. iPhone'u USB kabloyla bağla, kilidini aç, "Bu Bilgisayara Güven" sorusuna **Güven** de.
4. Sideloadly'de Apple ID'ni yaz, `GununKelimesi.ipa` dosyasını pencereye sürükle, **Start**'a bas ve Apple ID şifreni gir.
5. iPhone'da: **Ayarlar › Genel › VPN ve Aygıt Yönetimi** › Apple ID'ne dokun › **Güven**.
6. iPhone'da: **Ayarlar › Gizlilik ve Güvenlik › Geliştirici Modu**'nu aç. Telefon yeniden başlar, açılınca **Aç** diyerek onayla.
7. Uygulamayı bir kez aç, sonra ana ekrana basılı tut › **Düzenle › Widget Ekle** › "Günün Kelimesi".

**7 gün kuralı:** Ücretsiz Apple ID ile imzalanan uygulamalar 7 gün sonra açılmaz. Aynı .ipa'yı aynı Apple ID ile Sideloadly'den yeniden kurman yeterli. Uygulamayı silme, üzerine kur. Ücretli Apple geliştirici hesabıyla bu süre 1 yıl olur.

## 3) Mac ve Xcode ile (alternatif)

```bash
brew install xcodegen
xcodegen generate
open GununKelimesi.xcodeproj
```

Her iki hedefte de (GununKelimesi ve GununKelimesiWidget) **Signing & Capabilities** altında kendi ekibini (Apple ID'ni) seç. Gerekirse paket kimliğini benzersiz yap, örneğin `com.adin.gununkelimesi` ve `com.adin.gununkelimesi.widget`. Sonra iPhone'u seçip **Run** ile çalıştır.

## Kelime değiştirmek

`Shared/WordData.swift` içindeki satırı düzenle:

```
kelime | tür | Türkçe anlam | İngilizce örnek (*vurgu*) | Türkçe çeviri
```

Tür kodları: `n` isim, `v` fiil, `adj` sıfat, `adv` zarf, `phr` phrasal verb, `idm` deyim. Satır sayısını değiştirme, çünkü her satır bir takvim gününe denk gelir.
