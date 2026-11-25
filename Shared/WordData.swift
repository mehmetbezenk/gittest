// Kelime listesi: her satır bir takvim gününe denk gelir (366 gün, 29 Şubat dahil).
// Biçim: kelime | tür | Türkçe anlam | İngilizce örnek (*vurgu*) | Türkçe çeviri
// Tür: n = isim, v = fiil, adj = sıfat, adv = zarf, phr = phrasal verb, idm = deyim
// Bir kelimeyi değiştirmek için satırı düzenle; satır sayısını değiştirme.

let wordData = """
# OCAK
resolution|n|karar, yeni yıl hedefi; çözüm|My New Year's *resolution* is to read a book every month.|Yeni yıl kararım her ay bir kitap okumak.
commit|v|kendini adamak, taahhüt etmek|If you *commit* to studying every day, you'll see results quickly.|Kendini her gün çalışmaya adarsan sonuçları kısa sürede görürsün.
habit|n|alışkanlık|Drinking water before coffee has become a morning *habit* for me.|Kahveden önce su içmek benim için bir sabah alışkanlığı oldu.
achieve|v|başarmak, elde etmek|You can *achieve* more than you think with small daily steps.|Küçük günlük adımlarla sandığından fazlasını başarabilirsin.
routine|n|rutin, günlük düzen|A simple evening *routine* helps me sleep better.|Basit bir akşam rutini daha iyi uyumama yardımcı oluyor.
motivation|n|motivasyon, istek, şevk|My *motivation* drops when I can't see any progress.|İlerleme göremediğimde motivasyonum düşüyor.
procrastinate|v|işleri ertelemek, oyalanmak|I tend to *procrastinate* when a task feels too big.|Bir iş gözüme fazla büyük görünürse ertelemeye meyilliyim.
get the hang of|idm|(bir şeye) alışmak, eli alışmak|Driving was scary at first, but I soon *got the hang of* it.|Araba kullanmak başta korkutucuydu ama kısa sürede elim alıştı.
consistent|adj|tutarlı, istikrarlı|Being *consistent* matters more than being perfect.|İstikrarlı olmak, mükemmel olmaktan daha önemlidir.
effort|n|çaba, emek|Thank you for all the *effort* you put into this project.|Bu projeye harcadığın tüm emek için teşekkür ederim.
gradually|adv|yavaş yavaş, kademeli olarak|My English is *gradually* getting better.|İngilizcem yavaş yavaş gelişiyor.
figure out|phr|çözmek, anlamak, bulmak|I can't *figure out* how this coffee machine works.|Bu kahve makinesinin nasıl çalıştığını çözemiyorum.
eager|adj|hevesli, istekli|The new intern is *eager* to learn everything.|Yeni stajyer her şeyi öğrenmeye çok hevesli.
overcome|v|üstesinden gelmek, yenmek|She *overcame* her fear of speaking in public.|Topluluk önünde konuşma korkusunu yendi.
priority|n|öncelik|Your health should always be your top *priority*.|Sağlığın her zaman bir numaralı önceliğin olmalı.
struggle|v|zorlanmak, mücadele etmek|Many learners *struggle* with English pronunciation at first.|Pek çok öğrenci başlarda İngilizce telaffuzda zorlanır.
worthwhile|adj|zahmetine değer, faydalı|Learning a new language is always *worthwhile*.|Yeni bir dil öğrenmek her zaman zahmetine değer.
in the long run|idm|uzun vadede|Saving a little every month pays off *in the long run*.|Her ay biraz para biriktirmek uzun vadede karşılığını verir.
patience|n|sabır|Teaching children requires a lot of *patience*.|Çocuklara bir şey öğretmek çok sabır ister.
improve|v|geliştirmek, iyileştirmek|Watching films with subtitles can *improve* your listening skills.|Altyazılı film izlemek dinleme becerini geliştirebilir.
fluent|adj|akıcı (dil konuşurken)|After two years in London, he became *fluent* in English.|Londra'da geçen iki yılın ardından İngilizceyi akıcı konuşur hâle geldi.
setback|n|aksilik, gerileme|Losing the file was a *setback*, but we still finished on time.|Dosyanın kaybolması bir aksilikti ama işi yine de zamanında bitirdik.
keep up with|phr|ayak uydurmak, yetişmek|It's hard to *keep up with* all the new technology.|Tüm yeni teknolojilere ayak uydurmak zor.
determined|adj|kararlı, azimli|He was *determined* to finish the marathon despite the rain.|Yağmura rağmen maratonu bitirmeye kararlıydı.
attempt|n|deneme, girişim|This is my third *attempt* to pass the driving test.|Bu, ehliyet sınavını geçmek için üçüncü denemem.
cozy|adj|sıcacık, rahat, huzurlu|We spent a *cozy* evening by the fireplace.|Şöminenin başında sıcacık bir akşam geçirdik.
skill|n|beceri, yetenek|Time management is an important *skill* at work.|Zaman yönetimi iş hayatında önemli bir beceridir.
hesitate|v|tereddüt etmek, çekinmek|Don't *hesitate* to call me if you need anything.|Bir şeye ihtiyacın olursa beni aramaktan çekinme.
challenge|n|zorluk, meydan okuma|Moving to a new city was a big *challenge* for our family.|Yeni bir şehre taşınmak ailemiz için büyük bir zorluktu.
rely on|phr|güvenmek, bel bağlamak|You can always *rely on* her to tell the truth.|Doğruyu söyleyeceği konusunda ona her zaman güvenebilirsin.
milestone|n|dönüm noktası, önemli aşama|Finishing the first month of the course is a real *milestone*.|Kursun ilk ayını bitirmek gerçekten önemli bir aşama.
# ŞUBAT
deadline|n|son teslim tarihi|The *deadline* for the report is Friday at noon.|Raporun son teslim tarihi cuma öğlen.
postpone|v|ertelemek|They *postponed* the meeting until next week.|Toplantıyı gelecek haftaya ertelediler.
colleague|n|iş arkadaşı, meslektaş|One of my *colleagues* helped me with the presentation.|İş arkadaşlarımdan biri sunumda bana yardım etti.
schedule|n|program, takvim|My *schedule* is completely full this week.|Bu hafta programım tamamen dolu.
efficient|adj|verimli|The new system is much more *efficient* than the old one.|Yeni sistem eskisinden çok daha verimli.
follow up|phr|(konuyu) takip etmek|I'll *follow up* with an email after the call.|Görüşmeden sonra konuyu bir e-postayla takip edeceğim.
workload|n|iş yükü|My *workload* has doubled since my colleague left.|İş arkadaşım ayrıldığından beri iş yüküm iki katına çıktı.
negotiate|v|pazarlık etmek, müzakere etmek|She *negotiated* a better salary before accepting the job.|İşi kabul etmeden önce daha iyi bir maaş için pazarlık etti.
feedback|n|geri bildirim|Thanks for your *feedback*; it really helped me improve.|Geri bildirimin için teşekkürler, gelişmeme gerçekten yardımcı oldu.
reliable|adj|güvenilir|We need a *reliable* supplier for these parts.|Bu parçalar için güvenilir bir tedarikçiye ihtiyacımız var.
point out|phr|belirtmek, dikkat çekmek|He *pointed out* a small mistake in my calculation.|Hesabımdaki küçük bir hataya dikkat çekti.
estimate|v|tahmin etmek|We *estimate* that the project will take six months.|Projenin altı ay süreceğini tahmin ediyoruz.
thorough|adj|titiz, kapsamlı, eksiksiz|The engineer did a *thorough* check of the machine.|Mühendis makinede kapsamlı bir kontrol yaptı.
affection|n|sevgi, şefkat|She showed her *affection* with a handwritten card.|Sevgisini elle yazılmış bir kartla gösterdi.
crucial|adj|çok önemli, hayati|Good communication is *crucial* in any team.|İyi iletişim her ekipte hayati önem taşır.
delegate|v|(görevi) başkasına devretmek|A good manager knows how to *delegate* tasks.|İyi bir yönetici görev dağıtmayı bilir.
run out of|phr|(bir şey) bitmek, tükenmek|We've *run out of* milk, so I'll buy some later.|Sütümüz bitti, sonra biraz alırım.
assume|v|varsaymak, farz etmek|Don't *assume* everyone knows the rules.|Herkesin kuralları bildiğini varsayma.
approach|n|yaklaşım|We need a different *approach* to solve this problem.|Bu sorunu çözmek için farklı bir yaklaşıma ihtiyacımız var.
on the same page|idm|aynı şeyi düşünmek, hemfikir olmak|Let's meet briefly to make sure we're *on the same page*.|Aynı şeyi düşündüğümüzden emin olmak için kısaca görüşelim.
mother tongue|n|ana dil|My *mother tongue* is Turkish, but sometimes I dream in English.|Ana dilim Türkçe ama bazen İngilizce rüya görüyorum.
clarify|v|netleştirmek, açıklığa kavuşturmak|Could you *clarify* what you mean by "urgent"?|"Acil" derken neyi kastettiğini netleştirebilir misin?
accurate|adj|doğru, isabetli, kesin|The weather forecast was surprisingly *accurate* today.|Hava tahmini bugün şaşırtıcı derecede isabetliydi.
cut corners|idm|işi baştan savma yapmak|Never *cut corners* when it comes to safety.|Konu güvenlik olunca asla işi baştan savma yapma.
outcome|n|sonuç|Nobody could predict the *outcome* of the match.|Maçın sonucunu kimse tahmin edemedi.
flexible|adj|esnek|My job has *flexible* hours, so I can start late.|İşimde esnek çalışma saatleri var, bu yüzden geç başlayabiliyorum.
set up|phr|kurmak, ayarlamak|Can you help me *set up* my new phone?|Yeni telefonumu kurmama yardım edebilir misin?
budget|n|bütçe|We have to stay within our *budget* this month.|Bu ay bütçemizi aşmamalıyız.
once in a blue moon|idm|kırk yılda bir|I eat fast food only *once in a blue moon*.|Fast food'u yalnızca kırk yılda bir yerim.
# MART
fresh start|n|yeni bir başlangıç|Moving abroad gave her a *fresh start*.|Yurt dışına taşınmak ona yeni bir başlangıç yapma şansı verdi.
curious|adj|meraklı|Children are naturally *curious* about everything around them.|Çocuklar doğaları gereği etraflarındaki her şeyi merak eder.
encourage|v|cesaretlendirmek, teşvik etmek|My teacher *encouraged* me to join the speaking club.|Öğretmenim beni konuşma kulübüne katılmaya teşvik etti.
awkward|adj|tuhaf, garip, rahatsız edici|There was an *awkward* silence after his joke.|Şakasından sonra garip bir sessizlik oldu.
break the ice|idm|buzları eritmek|A funny question can help *break the ice* at a meeting.|Komik bir soru, toplantıda buzları eritmeye yardımcı olabilir.
empathy|n|empati, duygudaşlık|Good doctors show *empathy* toward their patients.|İyi doktorlar hastalarına karşı empati gösterir.
apologize|v|özür dilemek|I *apologize* for the delay in my reply.|Geç cevap verdiğim için özür dilerim.
equality|n|eşitlik|International Women's Day celebrates the fight for *equality*.|Dünya Kadınlar Günü, eşitlik mücadelesini kutlar.
get along with|phr|(biriyle) iyi geçinmek|I *get along with* all my neighbors.|Tüm komşularımla iyi geçinirim.
generous|adj|cömert|It was very *generous* of you to pay for dinner.|Akşam yemeğinin hesabını ödemen çok cömertçeydi.
misunderstanding|n|yanlış anlaşılma|Let's talk about it so there's no *misunderstanding*.|Bir yanlış anlaşılma olmasın diye bunu konuşalım.
convince|v|ikna etmek|I finally *convinced* my dad to try sushi.|Sonunda babamı suşi denemeye ikna ettim.
honest|adj|dürüst|To be *honest*, I didn't like the film very much.|Dürüst olmak gerekirse filmi pek beğenmedim.
approximately|adv|yaklaşık olarak|The flight takes *approximately* three hours.|Uçuş yaklaşık üç saat sürüyor.
complain|v|şikâyet etmek|He always *complains* about the traffic.|Sürekli trafikten şikâyet ediyor.
polite|adj|kibar, nazik|It's *polite* to say thank you when someone helps you.|Biri sana yardım ettiğinde teşekkür etmek kibarlıktır.
look forward to|phr|dört gözle beklemek|I'm *looking forward to* seeing you next week.|Gelecek hafta seni görmeyi dört gözle bekliyorum.
opportunity|n|fırsat|This job is a great *opportunity* to travel.|Bu iş, seyahat etmek için harika bir fırsat.
embarrassed|adj|utanmış, mahcup|I was so *embarrassed* when I forgot her name.|Adını unuttuğumda çok utandım.
appreciate|v|takdir etmek, minnettar olmak|I really *appreciate* your help with the move.|Taşınırken yaptığın yardım için gerçekten minnettarım.
bloom|v|çiçek açmak|The cherry trees *bloom* at the start of spring.|Kiraz ağaçları baharın başında çiçek açar.
sustainable|adj|sürdürülebilir|We should choose more *sustainable* ways to travel.|Daha sürdürülebilir ulaşım yolları seçmeliyiz.
rough|adj|zor, çetin; pürüzlü|I had a *rough* day at work, so I'm going to bed early.|İşte zor bir gün geçirdim, o yüzden erken yatacağım.
come up with|phr|(fikir, çözüm) bulmak|She *came up with* a brilliant idea for the campaign.|Kampanya için harika bir fikir buldu.
obvious|adj|açık, belli, aşikâr|The answer was so *obvious* that I missed it.|Cevap o kadar açıktı ki gözümden kaçtı.
remind|v|hatırlatmak|Please *remind* me to call my mother tonight.|Lütfen bu akşam annemi aramamı bana hatırlat.
performance|n|performans, gösteri|The actors gave an amazing *performance* last night.|Oyuncular dün akşam muhteşem bir performans sergiledi.
anxious|adj|kaygılı, endişeli|I always feel *anxious* before a job interview.|İş görüşmesinden önce hep kaygılı hissederim.
deal with|phr|ilgilenmek, halletmek|I'll *deal with* the emails after lunch.|E-postaları öğle yemeğinden sonra halledeceğim.
brief|adj|kısa, öz|Please keep your answers *brief*.|Lütfen cevaplarınızı kısa tutun.
aware|adj|farkında, bilincinde|Are you *aware* that the shop closes early today?|Dükkânın bugün erken kapandığının farkında mısın?
# NİSAN
prank|n|şaka, eşek şakası|My brother played a *prank* on me on April Fools' Day.|Kardeşim 1 Nisan'da bana bir şaka yaptı.
gullible|adj|saf, her şeye inanan|Don't be so *gullible*; that story is obviously fake.|Bu kadar saf olma, o hikâyenin uydurma olduğu belli.
rumor|n|söylenti, dedikodu|There's a *rumor* that the company is moving to Istanbul.|Şirketin İstanbul'a taşınacağına dair bir söylenti var.
available|adj|müsait, mevcut|Are you *available* for a quick call this afternoon?|Bu öğleden sonra kısa bir görüşme için müsait misin?
temporary|adj|geçici|This is only a *temporary* solution until the new part arrives.|Bu, yeni parça gelene kadar sadece geçici bir çözüm.
turn down|phr|reddetmek; (sesi) kısmak|He *turned down* the job offer because of the salary.|Maaş yüzünden iş teklifini reddetti.
well-being|n|iyi oluş, sağlık ve huzur|Regular exercise is good for your mental *well-being*.|Düzenli egzersiz ruh sağlığına iyi gelir.
convenient|adj|uygun, elverişli|Is Tuesday morning *convenient* for you?|Salı sabahı senin için uygun mu?
ignore|v|görmezden gelmek|Don't *ignore* the warning lights in your car.|Arabandaki uyarı ışıklarını görmezden gelme.
spontaneous|adj|plansız, anlık, kendiliğinden|We took a *spontaneous* trip to the seaside.|Bir anda karar verip deniz kenarına bir gezi yaptık.
chore|n|ev işi, angarya|Washing the dishes is my least favorite *chore*.|Bulaşık yıkamak en sevmediğim ev işi.
take up|phr|(bir uğraşa) başlamak|I've *taken up* yoga to reduce stress.|Stresi azaltmak için yogaya başladım.
reasonable|adj|makul, mantıklı|The prices at this restaurant are very *reasonable*.|Bu restoranın fiyatları çok makul.
suggest|v|önermek|I *suggest* we leave early to avoid traffic.|Trafiğe takılmamak için erken çıkmamızı öneririm.
receipt|n|fiş, makbuz|Keep the *receipt* in case you want to return it.|İade etmek istersen diye fişi sakla.
refund|n|para iadesi|I asked for a *refund* because the shoes were damaged.|Ayakkabılar hasarlı olduğu için para iadesi istedim.
complicated|adj|karmaşık|The instructions were too *complicated* to follow.|Talimatlar takip edilemeyecek kadar karmaşıktı.
explore|v|keşfetmek|We spent the weekend *exploring* the old town.|Hafta sonunu eski şehri keşfederek geçirdik.
under the weather|idm|keyifsiz, hafif rahatsız|I'm feeling a bit *under the weather* today.|Bugün kendimi biraz keyifsiz hissediyorum.
recover|v|iyileşmek, toparlanmak|It took him two weeks to *recover* from the flu.|Gripten iyileşmesi iki hafta sürdü.
neighborhood|n|mahalle, semt|We live in a quiet *neighborhood* near the park.|Parkın yakınındaki sakin bir mahallede yaşıyoruz.
environment|n|çevre, ortam|We all have a duty to protect the *environment*.|Hepimizin çevreyi koruma görevi var.
sovereignty|n|egemenlik|April 23rd is National *Sovereignty* and Children's Day in Türkiye.|23 Nisan, Türkiye'de Ulusal Egemenlik ve Çocuk Bayramı'dır.
carry on|phr|devam etmek|*Carry on* with your work; I'll wait here.|Sen işine devam et, ben burada beklerim.
fragile|adj|kırılgan, narin|Be careful with that box; it's *fragile*.|O kutuya dikkat et, içinde kırılacak eşya var.
obstacle|n|engel|Fear is often the biggest *obstacle* to success.|Korku çoğu zaman başarının önündeki en büyük engeldir.
decent|adj|düzgün, makul|It's hard to find a *decent* apartment in the city center.|Şehir merkezinde düzgün bir daire bulmak zor.
prevent|v|önlemek|Washing your hands helps *prevent* infections.|Elleri yıkamak enfeksiyonları önlemeye yardımcı olur.
rehearsal|n|prova|We have one last *rehearsal* before the concert.|Konserden önce son bir provamız var.
wrap up|phr|toparlamak, bitirmek|Let's *wrap up* the meeting; it's almost five.|Toplantıyı toparlayalım, saat neredeyse beş.
# MAYIS
solidarity|n|dayanışma|May 1st is Labor and *Solidarity* Day in Türkiye.|1 Mayıs, Türkiye'de Emek ve Dayanışma Günü'dür.
enthusiastic|adj|coşkulu, hevesli|The crowd was *enthusiastic* from the very first song.|Kalabalık daha ilk şarkıdan itibaren coşkuluydu.
distract|v|dikkatini dağıtmak|Turn off your phone so it doesn't *distract* you.|Dikkatini dağıtmasın diye telefonunu kapat.
ambitious|adj|hırslı, iddialı|She has an *ambitious* plan to start her own business.|Kendi işini kurmak için iddialı bir planı var.
commute|n|işe gidiş geliş|My daily *commute* takes about forty minutes.|Her gün işe gidip gelmem yaklaşık kırk dakika sürüyor.
cancel|v|iptal etmek|The flight was *canceled* because of the storm.|Uçuş fırtına nedeniyle iptal edildi.
insight|n|içgörü, derin kavrayış|The book gave me real *insight* into Japanese culture.|Kitap, Japon kültürünü derinlemesine anlamamı sağladı.
reluctant|adj|isteksiz, gönülsüz|He was *reluctant* to lend me his car.|Arabasını bana ödünç vermeye pek gönüllü değildi.
show up|phr|gelmek, ortaya çıkmak|Only five people *showed up* for the meeting.|Toplantıya sadece beş kişi geldi.
nurture|v|beslemek, geliştirmek|Good parents *nurture* their children's talents.|İyi ebeveynler çocuklarının yeteneklerini besleyip geliştirir.
afford|v|(parası) yetmek, gücü yetmek|We can't *afford* a new car this year.|Bu yıl yeni bir arabaya paramız yetmez.
dedicated|adj|kendini adamış, özverili|Nurses are some of the most *dedicated* people I know.|Hemşireler tanıdığım en özverili insanlardandır.
inevitable|adj|kaçınılmaz|Mistakes are *inevitable* when you're learning something new.|Yeni bir şey öğrenirken hata yapmak kaçınılmazdır.
look into|phr|araştırmak, incelemek|The manager promised to *look into* my complaint.|Müdür şikâyetimi inceleyeceğine söz verdi.
household|n|hane, ev halkı|Every *household* in the village has a small garden.|Köydeki her hanenin küçük bir bahçesi var.
admit|v|kabul etmek, itiraf etmek|I have to *admit* that I was wrong.|Yanıldığımı kabul etmeliyim.
vague|adj|belirsiz, muğlak|His answer was too *vague* to be helpful.|Cevabı işe yaramayacak kadar belirsizdi.
heritage|n|(kültürel) miras|Museums help protect our cultural *heritage*.|Müzeler kültürel mirasımızın korunmasına yardımcı olur.
youth|n|gençlik|May 19th is dedicated to *youth* and sports in Türkiye.|19 Mayıs, Türkiye'de gençliğe ve spora adanmış bir gündür.
thrive|v|gelişmek, serpilmek|Most plants *thrive* in warm, sunny weather.|Çoğu bitki sıcak ve güneşli havada iyi gelişir.
diverse|adj|çeşitli, farklılıklarla dolu|Istanbul is one of the most *diverse* cities in the world.|İstanbul, dünyanın en çok çeşitlilik barındıran şehirlerinden biridir.
involve|v|içermek, gerektirmek|The job *involves* a lot of travel.|Bu iş çok fazla seyahat gerektiriyor.
punctual|adj|dakik|Please be *punctual*; the bus won't wait.|Lütfen dakik olun, otobüs beklemeyecek.
turn out|phr|(sonunda) ... çıkmak|The movie *turned out* to be better than I expected.|Film beklediğimden daha iyi çıktı.
comfort zone|n|konfor alanı|Traveling alone pushed me out of my *comfort zone*.|Yalnız seyahat etmek beni konfor alanımın dışına itti.
argue|v|tartışmak, atışmak|My kids always *argue* about who gets the front seat.|Çocuklarım ön koltuğa kimin oturacağı konusunda hep tartışır.
barely|adv|zar zor, neredeyse hiç|I *barely* slept last night because of the noise.|Gürültü yüzünden dün gece neredeyse hiç uyuyamadım.
intend|v|niyetinde olmak, planlamak|I *intend* to finish this book by Sunday.|Bu kitabı pazara kadar bitirmeyi planlıyorum.
conquer|v|fethetmek; yenmek|In 1453, the Ottomans *conquered* Constantinople.|Osmanlılar 1453'te İstanbul'u fethetti.
get rid of|phr|-den kurtulmak, elden çıkarmak|I need to *get rid of* some old clothes.|Bazı eski kıyafetlerimden kurtulmam gerekiyor.
quit|v|bırakmak (iş, alışkanlık)|My uncle *quit* smoking ten years ago.|Amcam on yıl önce sigarayı bıraktı.
# HAZİRAN
itinerary|n|seyahat planı, güzergâh|Our *itinerary* includes three days in Rome.|Seyahat planımızda Roma'da üç gün var.
luggage|n|bagaj, valiz|How much *luggage* are you taking on the trip?|Geziye ne kadar bagaj götürüyorsun?
destination|n|varış noktası, gidilecek yer|Antalya is a popular *destination* for tourists.|Antalya, turistlerin gözde tatil yerlerinden biridir.
check in|phr|(otel, uçuş) giriş yapmak|We can *check in* at the hotel after 2 p.m.|Otele saat 14.00'ten sonra giriş yapabiliyoruz.
pollution|n|kirlilik|Air *pollution* is a serious problem in big cities.|Hava kirliliği büyük şehirlerde ciddi bir sorun.
breathtaking|adj|nefes kesici|The view from the mountain was *breathtaking*.|Dağdan görünen manzara nefes kesiciydi.
souvenir|n|hatıra, hediyelik eşya|I bought a small *souvenir* for each of my friends.|Her arkadaşım için küçük bir hediyelik eşya aldım.
crowded|adj|kalabalık|The beach gets very *crowded* in July.|Plaj temmuzda çok kalabalık oluyor.
take off|phr|(uçak) kalkmak; (giysi) çıkarmak|Our plane *took off* twenty minutes late.|Uçağımız yirmi dakika rötarlı kalktı.
leisure|n|boş zaman|What do you like to do in your *leisure* time?|Boş zamanlarında ne yapmaktan hoşlanırsın?
unforgettable|adj|unutulmaz|Our trip to Cappadocia was *unforgettable*.|Kapadokya gezimiz unutulmazdı.
wander|v|dolaşmak, gezinmek|We *wandered* through the narrow streets of the old town.|Eski şehrin dar sokaklarında dolaştık.
pack|v|(bavul) hazırlamak|Don't forget to *pack* your sunscreen.|Güneş kremini bavula koymayı unutma.
delay|n|gecikme, rötar|There was a two-hour *delay* at the airport.|Havalimanında iki saatlik bir rötar vardı.
spectacular|adj|muhteşem, göz alıcı|The fireworks were absolutely *spectacular*.|Havai fişekler kesinlikle muhteşemdi.
detour|n|dolambaçlı yol, sapak|We took a *detour* because the main road was closed.|Ana yol kapalı olduğu için başka bir yoldan dolaşarak gittik.
get away|phr|uzaklaşmak, kafa dinlemeye gitmek|We need to *get away* from the city for a few days.|Birkaç günlüğüne şehirden uzaklaşmamız lazım.
cuisine|n|mutfak (yemek kültürü)|Turkish *cuisine* is famous all over the world.|Türk mutfağı tüm dünyada ünlüdür.
authentic|adj|hakiki, otantik|This restaurant serves *authentic* Italian pizza.|Bu restoran hakiki İtalyan pizzası sunuyor.
refreshing|adj|ferahlatıcı, serinletici|A cold lemonade is so *refreshing* on a hot day.|Sıcak bir günde soğuk bir limonata insanı çok ferahlatır.
daylight|n|gün ışığı|In June, we enjoy the most hours of *daylight* of the year.|Haziranda yılın en uzun gün ışığı sürelerinin tadını çıkarırız.
hang out|phr|takılmak, vakit geçirmek|We usually *hang out* at the café near school.|Genelde okulun yakınındaki kafede takılırız.
laid-back|adj|rahat, telaşsız|The island has a very *laid-back* atmosphere.|Adanın çok rahat ve telaşsız bir havası var.
affordable|adj|uygun fiyatlı|We found an *affordable* hotel close to the beach.|Plaja yakın, uygun fiyatlı bir otel bulduk.
scenery|n|manzara|The *scenery* along the Black Sea coast is stunning.|Karadeniz kıyısı boyunca manzara büyüleyici.
exhausted|adj|bitkin, çok yorgun|After the long hike, we were completely *exhausted*.|Uzun yürüyüşten sonra tamamen bitkin düşmüştük.
abroad|adv|yurt dışında, yurt dışına|Have you ever studied *abroad*?|Hiç yurt dışında okudun mu?
jet lag|n|saat farkı yorgunluğu|I couldn't sleep properly for days because of *jet lag*.|Saat farkı yorgunluğu yüzünden günlerce düzgün uyuyamadım.
reservation|n|rezervasyon|I made a *reservation* for four at eight o'clock.|Saat sekize dört kişilik rezervasyon yaptırdım.
nostalgia|n|nostalji, geçmişe özlem|This song fills me with *nostalgia* for my school days.|Bu şarkı bende okul günlerime karşı bir özlem uyandırıyor.
# TEMMUZ
halfway|adv|yarı yolda, yarısında|We're already *halfway* through the year!|Yılı şimdiden yarıladık!
evaluate|v|değerlendirmek|It's time to *evaluate* the progress we've made.|Kaydettiğimiz ilerlemeyi değerlendirme zamanı.
adjust|v|uyum sağlamak, alışmak; ayarlamak|It took me a while to *adjust* to the hot weather.|Sıcak havaya alışmam biraz zaman aldı.
independence|n|bağımsızlık|The United States celebrates its *independence* on July 4th.|ABD, bağımsızlığını 4 Temmuz'da kutlar.
overwhelmed|adj|bunalmış, altında ezilmiş|I feel *overwhelmed* by all the emails in my inbox.|Gelen kutumdaki onca e-posta yüzünden bunalmış hissediyorum.
sunburn|n|güneş yanığı|Wear a hat, or you'll get *sunburn*.|Şapka tak, yoksa güneşte yanarsın.
hydrated|adj|susuz kalmamış|Drink plenty of water to stay *hydrated* in summer.|Yazın susuz kalmamak için bol su iç.
calm down|phr|sakinleşmek|Take a deep breath and *calm down*.|Derin bir nefes al ve sakinleş.
scorching|adj|kavurucu (sıcak)|It was a *scorching* day, so we stayed indoors.|Kavurucu bir gündü, bu yüzden içeride kaldık.
shade|n|gölge, gölgelik yer|Let's sit in the *shade* of that tree.|Şu ağacın gölgesinde oturalım.
prefer|v|tercih etmek|I *prefer* tea to coffee in the morning.|Sabahları çayı kahveye tercih ederim.
genuine|adj|içten, samimi; gerçek|Her smile was warm and *genuine*.|Gülümsemesi sıcak ve içtendi.
chill out|phr|rahatlamak, kafa dinlemek|We just *chilled out* at home all weekend.|Bütün hafta sonu evde kafa dinledik.
wisdom|n|bilgelik|With age comes *wisdom*, or so they say.|Derler ki yaş ilerledikçe insan bilgeleşir.
sacrifice|n|fedakârlık|Parents make many *sacrifices* for their children.|Anne babalar çocukları için pek çok fedakârlık yapar.
tremendous|adj|muazzam, çok büyük|Thanks to your help, we made *tremendous* progress.|Yardımın sayesinde muazzam bir ilerleme kaydettik.
misplace|v|(bir şeyi) nereye koyduğunu unutmak|I've *misplaced* my keys again!|Anahtarlarımı yine bir yere koyup unuttum!
volunteer|v|gönüllü olarak çalışmak|She *volunteers* at an animal shelter every Saturday.|Her cumartesi bir hayvan barınağında gönüllü çalışıyor.
bargain|n|kelepir, fırsat ürün|This jacket was a real *bargain* at half price.|Yarı fiyatına aldığım bu ceket tam bir kelepirdi.
astonishing|adj|hayret verici, şaşırtıcı|The first Moon landing in 1969 was an *astonishing* achievement.|1969'daki ilk Ay'a iniş hayret verici bir başarıydı.
catch up|phr|hasret gidermek; aradaki farkı kapatmak|Let's meet for coffee and *catch up*.|Hadi buluşup bir kahve içelim, hasret giderelim.
occasionally|adv|ara sıra, zaman zaman|I *occasionally* work from home on Fridays.|Cuma günleri ara sıra evden çalışırım.
drawback|n|dezavantaj, sakınca|The only *drawback* of this phone is its battery life.|Bu telefonun tek dezavantajı pil ömrü.
vivid|adj|canlı (renk, anı)|I have *vivid* memories of my grandmother's garden.|Büyükannemin bahçesine dair canlı anılarım var.
barefoot|adv|yalınayak|The kids ran *barefoot* along the beach.|Çocuklar sahil boyunca yalınayak koştu.
anticipate|v|öngörmek, beklemek|We didn't *anticipate* so many guests at the party.|Partiye bu kadar çok misafir geleceğini öngörmemiştik.
rare|adj|nadir, ender|This bird is very *rare* in Europe.|Bu kuş Avrupa'da çok nadir görülür.
give up|phr|vazgeçmek, pes etmek; bırakmak|Don't *give up*; you're almost there!|Pes etme, neredeyse başardın!
humble|adj|alçakgönüllü, mütevazı|Despite his success, he has remained *humble*.|Başarısına rağmen alçakgönüllü kalmayı başardı.
bond|n|bağ|The two brothers share a strong *bond*.|İki kardeş arasında güçlü bir bağ var.
idle|adj|boşta, atıl; aylak|The machines sat *idle* during the holiday.|Tatil boyunca makineler boşta bekledi.
# AĞUSTOS
recharge|v|enerji toplamak; şarj etmek|A week by the sea helped me *recharge*.|Deniz kenarında geçen bir hafta enerjimi toplamamı sağladı.
sibling|n|kardeş|I have two *siblings*: an older brother and a younger sister.|İki kardeşim var: bir ağabeyim ve bir kız kardeşim.
raise|v|(çocuk) büyütmek, yetiştirmek; yükseltmek|My grandparents *raised* me in a small village.|Beni küçük bir köyde büyükannemle büyükbabam büyüttü.
upbringing|n|yetiştirilme tarzı, terbiye|Her strict *upbringing* made her very disciplined.|Sıkı bir terbiyeyle yetişmesi onu çok disiplinli biri yaptı.
take after|phr|(birine) çekmek, benzemek|Everyone says I *take after* my father.|Herkes babama çektiğimi söylüyor.
grudge|n|kin, garez|He's not the kind of person who holds a *grudge*.|O, kin tutacak biri değil.
forgive|v|affetmek|It took her a long time to *forgive* him.|Onu affetmesi uzun zaman aldı.
quarrel|n|tartışma, atışma|They had a silly *quarrel* about the TV remote.|Televizyon kumandası yüzünden saçma bir tartışma yaşadılar.
considerate|adj|düşünceli, saygılı|It was *considerate* of you to call before visiting.|Gelmeden önce araman çok düşünceliydi.
make up|phr|barışmak; uydurmak; telafi etmek|They argued in the morning but *made up* by lunchtime.|Sabah tartıştılar ama öğlene kadar barıştılar.
loyal|adj|sadık, vefalı|Dogs are known for being *loyal* to their owners.|Köpekler sahiplerine sadık olmalarıyla bilinir.
mature|adj|olgun|She is very *mature* for her age.|Yaşına göre çok olgun.
stubborn|adj|inatçı|My son is as *stubborn* as a mule.|Oğlum katır gibi inatçı.
betray|v|ihanet etmek|He felt *betrayed* when his friend shared his secret.|Arkadaşı sırrını başkalarına anlatınca ihanete uğramış hissetti.
supportive|adj|destekleyici, destek olan|My family has always been very *supportive* of my career.|Ailem kariyerim konusunda bana her zaman çok destek oldu.
let down|phr|hayal kırıklığına uğratmak, yüzüstü bırakmak|I promised to help, and I won't *let you down*.|Yardım edeceğime söz verdim, seni yüzüstü bırakmayacağım.
emergency|n|acil durum|Every home should have an *emergency* kit with water and a flashlight.|Her evde su ve el feneri içeren bir acil durum çantası olmalı.
cherish|v|kıymetini bilmek, (anıyı) saklamak|I *cherish* every moment I spend with my grandparents.|Büyükannem ve büyükbabamla geçirdiğim her anın kıymetini biliyorum.
capture|v|yakalamak; ölümsüzleştirmek|This photo *captures* the beauty of the sunset perfectly.|Bu fotoğraf gün batımının güzelliğini mükemmel yakalamış.
tease|v|takılmak, şakayla sataşmak|My friends *tease* me about my accent.|Arkadaşlarım aksanım yüzünden bana takılıyor.
compromise|n|uzlaşma, orta yol|After a long discussion, we reached a *compromise*.|Uzun bir tartışmanın ardından orta yolu bulduk.
get over|phr|atlatmak (hastalık, üzüntü)|It took him months to *get over* the breakup.|Ayrılığı atlatması aylar sürdü.
jealous|adj|kıskanç|My little sister was *jealous* of the new baby.|Küçük kız kardeşim yeni bebeği kıskanıyordu.
reunion|n|(uzun aradan sonra) buluşma|We're planning a family *reunion* for next summer.|Gelecek yaz için büyük bir aile buluşması planlıyoruz.
keep in touch|idm|görüşmeye devam etmek, iletişimi koparmamak|Let's *keep in touch* after you move to Ankara.|Ankara'ya taşındıktan sonra da görüşmeye devam edelim.
adopt|v|sahiplenmek, evlat edinmek; benimsemek|We *adopted* a puppy from the local shelter.|Yerel barınaktan bir yavru köpek sahiplendik.
selfish|adj|bencil|It was *selfish* of him to eat the last slice of cake.|Pastanın son dilimini yemesi bencilceydi.
fond of|adj|düşkün, seven|My grandmother is very *fond of* gardening.|Büyükannem bahçe işlerine çok düşkündür.
reassure|v|içini rahatlatmak, güvence vermek|The doctor *reassured* me that it was nothing serious.|Doktor ciddi bir şey olmadığını söyleyerek içimi rahatlattı.
victory|n|zafer|August 30th is *Victory* Day in Türkiye.|30 Ağustos, Türkiye'de Zafer Bayramı'dır.
look after|phr|bakmak, göz kulak olmak|Can you *look after* my cat while I'm away?|Ben yokken kedime bakabilir misin?
# EYLÜL
semester|n|dönem, yarıyıl|The new *semester* starts next Monday.|Yeni dönem gelecek pazartesi başlıyor.
enroll|v|kaydolmak, kayıt yaptırmak|I've *enrolled* in an evening English course.|Akşam İngilizce kursuna kaydoldum.
assignment|n|ödev, görev|The *assignment* is due next Thursday.|Ödevin teslim tarihi gelecek perşembe.
concentrate|v|odaklanmak, konsantre olmak|I can't *concentrate* with all this noise.|Bu gürültüde odaklanamıyorum.
memorize|v|ezberlemek|It's easier to *memorize* words in sentences.|Kelimeleri cümle içinde ezberlemek daha kolaydır.
by heart|idm|ezbere|She knows the whole poem *by heart*.|Bütün şiiri ezbere biliyor.
grasp|v|kavramak, anlamak|It took me a while to *grasp* the main idea.|Ana fikri kavramam biraz zaman aldı.
literacy|n|okuryazarlık|*Literacy* opens the door to education.|Okuryazarlık eğitimin kapısını açar.
knowledgeable|adj|bilgili|Our tour guide was friendly and very *knowledgeable*.|Rehberimiz güler yüzlü ve çok bilgiliydi.
revise|v|gözden geçirmek, düzeltmek|Please *revise* your essay before you submit it.|Lütfen göndermeden önce yazını gözden geçir.
submit|v|teslim etmek, sunmak|You must *submit* the form by the end of the month.|Formu ay sonuna kadar teslim etmelisin.
distinguish|v|ayırt etmek|Can you *distinguish* between "ship" and "sheep"?|"Ship" ile "sheep" arasındaki farkı ayırt edebiliyor musun?
pronunciation|n|telaffuz, söyleniş|English *pronunciation* doesn't always follow the spelling.|İngilizce telaffuz her zaman yazılışa uymaz.
catch on|phr|kavramak; yaygınlaşmak|He's a fast learner; he *catches on* quickly.|Hızlı öğrenen biri, çabuk kavrıyor.
curriculum|n|müfredat|Coding is now part of the school *curriculum*.|Kodlama artık okul müfredatının bir parçası.
diligent|adj|çalışkan, özenli|She is a *diligent* student who never misses a class.|Hiç ders kaçırmayan, çalışkan bir öğrenci.
summarize|v|özetlemek|Can you *summarize* the article in three sentences?|Makaleyi üç cümleyle özetleyebilir misin?
fill in|phr|(form) doldurmak|Please *fill in* this form with your details.|Lütfen bu formu bilgilerinizle doldurun.
relevant|adj|ilgili, alakalı|Only include information that is *relevant* to the question.|Sadece soruyla ilgili bilgileri ekleyin.
evidence|n|kanıt|There is no *evidence* that the drug works.|İlacın işe yaradığına dair hiçbir kanıt yok.
harmony|n|uyum, ahenk|People of many cultures live in *harmony* in this town.|Bu kasabada pek çok kültürden insan uyum içinde yaşıyor.
crisp|adj|(hava) serin ve ferah; çıtır|I love *crisp* autumn mornings.|Serin ve ferah sonbahar sabahlarını çok severim.
notice|v|fark etmek|Did you *notice* that she changed her hairstyle?|Saç modelini değiştirdiğini fark ettin mi?
illustrate|v|(örnekle) açıklamak; resimlemek|Let me give you an example to *illustrate* my point.|Ne demek istediğimi açıklamak için sana bir örnek vereyim.
brainstorm|v|beyin fırtınası yapmak|Let's *brainstorm* some names for the new product.|Yeni ürüne isim bulmak için beyin fırtınası yapalım.
bilingual|adj|iki dilli|Their children are *bilingual* in Turkish and English.|Çocukları iki dilli: Türkçe ve İngilizce konuşuyorlar.
landmark|n|simge yapı, önemli yer|The Galata Tower is a famous *landmark* in Istanbul.|Galata Kulesi, İstanbul'un ünlü simge yapılarından biridir.
interpret|v|yorumlamak; (sözlü) çevirmek|How do you *interpret* the ending of the film?|Filmin sonunu nasıl yorumluyorsun?
precise|adj|kesin, tam, net|Can you tell me the *precise* time of arrival?|Bana tam varış saatini söyleyebilir misin?
context|n|bağlam|You can often guess a word's meaning from the *context*.|Bir kelimenin anlamını çoğu zaman bağlamdan tahmin edebilirsin.
# EKİM
elderly|adj|yaşlı (kibar kullanım)|We should always be patient with *elderly* people.|Yaşlı insanlara karşı her zaman sabırlı olmalıyız.
cautious|adj|dikkatli, temkinli|Be *cautious* when driving on wet roads.|Islak yollarda araç kullanırken temkinli ol.
gloomy|adj|kasvetli, karanlık|It's a *gloomy* day, perfect for staying in with a book.|Kasvetli bir gün; evde kitap okumak için ideal.
endangered|adj|nesli tükenmekte olan|Many sea turtle species are *endangered*.|Pek çok deniz kaplumbağası türünün nesli tükenme tehlikesi altında.
mentor|n|akıl hocası, rehber|My first boss was also my *mentor*.|İlk patronum aynı zamanda akıl hocamdı.
harvest|n|hasat|The olive *harvest* begins in autumn.|Zeytin hasadı sonbaharda başlar.
maintain|v|korumak, sürdürmek; bakımını yapmak|It's important to *maintain* a healthy work-life balance.|Sağlıklı bir iş-özel hayat dengesini korumak önemlidir.
sufficient|adj|yeterli|Two hours should be *sufficient* for the exam.|Sınav için iki saat yeterli olmalı.
break down|phr|bozulmak, arızalanmak|Our car *broke down* on the way to the airport.|Arabamız havalimanına giderken bozuldu.
burnout|n|tükenmişlik|Working long hours without breaks can lead to *burnout*.|Ara vermeden uzun saatler çalışmak tükenmişliğe yol açabilir.
invoice|n|fatura|Please send the *invoice* to our accounting department.|Lütfen faturayı muhasebe departmanımıza gönderin.
warranty|n|garanti|The laptop is still under *warranty*.|Dizüstü bilgisayar hâlâ garanti kapsamında.
shortage|n|kıtlık, eksiklik, sıkıntı|There's a *shortage* of skilled workers in the industry.|Sektörde nitelikli eleman sıkıntısı var.
comply|v|uymak (kurala, standarda)|All our products *comply* with EU safety standards.|Tüm ürünlerimiz AB güvenlik standartlarına uygundur.
implement|v|uygulamak, hayata geçirmek|We will *implement* the new system next month.|Yeni sistemi gelecek ay hayata geçireceğiz.
nutritious|adj|besleyici|Lentil soup is cheap and *nutritious*.|Mercimek çorbası hem ucuz hem besleyicidir.
significant|adj|önemli, kayda değer|There has been a *significant* increase in sales.|Satışlarda kayda değer bir artış oldu.
troubleshoot|v|sorun gidermek, arıza aramak|The technician spent an hour *troubleshooting* the network.|Teknisyen ağdaki sorunu gidermek için bir saat uğraştı.
upgrade|v|yükseltmek, güncellemek|It's time to *upgrade* the software on all our computers.|Tüm bilgisayarlarımızdaki yazılımı güncelleme zamanı geldi.
rule out|phr|ihtimal dışı bırakmak, elemek|The doctor *ruled out* any serious illness.|Doktor ciddi bir hastalık ihtimalini dışladı.
deteriorate|v|kötüleşmek, bozulmak|The weather *deteriorated* quickly in the afternoon.|Öğleden sonra hava hızla bozuldu.
feasible|adj|uygulanabilir, yapılabilir|Is it *feasible* to finish the project by May?|Projeyi mayısa kadar bitirmek mümkün mü?
pitfall|n|tuzak, sık yapılan hata|Here are some common *pitfalls* to avoid when learning English.|İşte İngilizce öğrenirken kaçınman gereken bazı yaygın tuzaklar.
cooperation|n|iş birliği|The project succeeded thanks to international *cooperation*.|Proje, uluslararası iş birliği sayesinde başarıya ulaştı.
allocate|v|ayırmak, tahsis etmek|We need to *allocate* more time to testing.|Teste daha fazla zaman ayırmamız gerekiyor.
hindsight|n|sonradan anlama, geriye dönüp bakış|In *hindsight*, I should have accepted the offer.|Şimdi dönüp bakınca o teklifi kabul etmeliydim.
back up|phr|yedeklemek; desteklemek|Always *back up* your files before updating.|Güncelleme yapmadan önce dosyalarını mutlaka yedekle.
proud|adj|gururlu|I'm really *proud* of how far you've come.|Bu noktaya kadar gelmenle gerçekten gurur duyuyorum.
republic|n|cumhuriyet|Türkiye was declared a *republic* on October 29, 1923.|Cumhuriyet, 29 Ekim 1923'te ilan edildi.
accumulate|v|birikmek, biriktirmek|Dust *accumulates* quickly if you don't clean regularly.|Düzenli temizlik yapmazsan toz çabucak birikir.
spooky|adj|ürkütücü, tekinsiz|The old house looks really *spooky* at night.|Eski ev gece gerçekten ürkütücü görünüyor.
# KASIM
chilly|adj|serin, soğukça|It's getting *chilly*; don't forget your jacket.|Hava serinliyor, ceketini unutma.
fade|v|solmak, azalmak|The colors of the leaves *fade* as winter approaches.|Kış yaklaştıkça yaprakların renkleri solar.
perspective|n|bakış açısı|Traveling gives you a new *perspective* on life.|Seyahat etmek sana hayata dair yeni bir bakış açısı kazandırır.
tackle|v|(sorunu) ele almak, uğraşmak|We need to *tackle* this problem before it gets worse.|Bu sorun büyümeden onu ele almamız gerekiyor.
ensure|v|sağlamak, garantiye almak|Please *ensure* that all doors are locked.|Lütfen tüm kapıların kilitli olduğundan emin olun.
versatile|adj|çok yönlü, çok amaçlı|Eggs are one of the most *versatile* ingredients in the kitchen.|Yumurta, mutfaktaki en çok yönlü malzemelerden biridir.
steady|adj|düzenli, sabit, istikrarlı|She has made *steady* progress in her English.|İngilizcesinde düzenli bir ilerleme kaydetti.
verify|v|doğrulamak|Please *verify* your email address to continue.|Devam etmek için lütfen e-posta adresinizi doğrulayın.
divide|v|bölmek, ayırmak|For 28 years, a wall *divided* the city of Berlin.|28 yıl boyunca bir duvar Berlin şehrini ikiye böldü.
commemorate|v|anmak|On November 10th, Türkiye *commemorates* Atatürk.|10 Kasım'da Türkiye, Atatürk'ü saygıyla anar.
remarkable|adj|dikkate değer, olağanüstü|She made a *remarkable* recovery after the surgery.|Ameliyattan sonra olağanüstü bir iyileşme gösterdi.
browse|v|göz gezdirmek, bakınmak|I'm just *browsing*, thanks.|Sadece bakınıyorum, teşekkürler.
kindness|n|iyilik, nezaket|A small act of *kindness* can make someone's day.|Küçük bir iyilik birinin gününü güzelleştirebilir.
moderate|adj|ılımlı, orta (derecede)|Thirty minutes of *moderate* exercise a day is enough.|Günde otuz dakika orta tempolu egzersiz yeterlidir.
deserve|v|hak etmek|After all that hard work, you *deserve* a holiday.|Onca sıkı çalışmadan sonra bir tatili hak ediyorsun.
tolerance|n|hoşgörü; (teknik) tolerans|*Tolerance* means respecting people who are different from us.|Hoşgörü, bizden farklı olan insanlara saygı göstermektir.
thrifty|adj|tutumlu|My grandmother was very *thrifty* and never wasted food.|Büyükannem çok tutumluydu, asla yemek israf etmezdi.
pursue|v|peşinden gitmek, sürdürmek|He decided to *pursue* a career in medicine.|Tıp alanında kariyer yapmaya karar verdi.
breakthrough|n|atılım, çığır açan gelişme|Scientists have made a major *breakthrough* in cancer research.|Bilim insanları kanser araştırmalarında büyük bir atılım yaptı.
childhood|n|çocukluk|I spent my *childhood* in a small town by the sea.|Çocukluğum deniz kenarındaki küçük bir kasabada geçti.
cut down on|phr|(bir şeyi) azaltmak|I'm trying to *cut down on* sugar.|Şekeri azaltmaya çalışıyorum.
overlook|v|gözden kaçırmak; (manzaraya) bakmak|It's easy to *overlook* small details when you're tired.|Yorgunken küçük ayrıntıları gözden kaçırmak kolaydır.
frankly|adv|açıkçası|*Frankly*, I don't think the plan will work.|Açıkçası planın işe yarayacağını sanmıyorum.
inspire|v|ilham vermek|A good teacher can *inspire* a student for life.|İyi bir öğretmen, bir öğrenciye ömür boyu ilham verebilir.
persistent|adj|azimli, ısrarlı, sebatkâr|Learning a language takes *persistent* effort, not talent.|Dil öğrenmek yetenekten çok azimli bir çaba ister.
grateful|adj|minnettar|I'm *grateful* for the people who support me every day.|Beni her gün destekleyen insanlara minnettarım.
impulse|n|dürtü, anlık istek|I bought these shoes on *impulse*, and now I regret it.|Bu ayakkabıları anlık bir hevesle aldım, şimdi pişmanım.
regret|v|pişman olmak|You'll never *regret* learning a new skill.|Yeni bir beceri öğrendiğin için asla pişman olmazsın.
overthink|v|fazla kafaya takmak|Don't *overthink* it; just send the message.|Fazla kafana takma, mesajı gönder gitsin.
embrace|v|benimsemek; kucaklamak|Try to *embrace* change instead of fearing it.|Değişimden korkmak yerine onu benimsemeye çalış.
# ARALIK
countdown|n|geri sayım|The *countdown* to New Year's Eve has begun.|Yılbaşı gecesine geri sayım başladı.
freezing|adj|dondurucu, buz gibi|It's *freezing* outside, so wear your gloves.|Dışarısı buz gibi, eldivenlerini tak.
accessible|adj|erişilebilir|The new station is fully *accessible* to wheelchair users.|Yeni istasyon, tekerlekli sandalye kullananlar için tamamen erişilebilir.
snuggle|v|sokulmak, kıvrılmak|The kids *snuggled* under the blanket to watch a movie.|Çocuklar film izlemek için battaniyenin altına kıvrıldı.
contribute|v|katkıda bulunmak|Everyone can *contribute* something to the team.|Herkes ekibe bir şekilde katkıda bulunabilir.
sparkle|v|parıldamak, ışıldamak|The city lights *sparkled* in the snow.|Şehrin ışıkları karın içinde parıldıyordu.
soothing|adj|yatıştırıcı, rahatlatıcı|A cup of warm herbal tea is very *soothing*.|Bir fincan sıcak bitki çayı insanı çok rahatlatır.
splurge|v|(keyif için) bolca para harcamak|We decided to *splurge* on a nice dinner for our anniversary.|Yıl dönümümüz için kendimizi şımartıp güzel bir yemeğe çıkmaya karar verdik.
integrity|n|dürüstlük, ilkelilik; bütünlük|She is a leader of great *integrity*.|O, son derece dürüst ve ilkeli bir lider.
dignity|n|onur, haysiyet|Every person deserves to be treated with *dignity*.|Her insan, onuruna yakışır bir muameleyi hak eder.
summit|n|zirve|We reached the *summit* just before sunrise.|Zirveye gün doğumundan hemen önce ulaştık.
slippery|adj|kaygan|Be careful; the roads are *slippery* after the snow.|Dikkatli ol, kardan sonra yollar kaygan.
hibernate|v|kış uykusuna yatmak|Bears *hibernate* during the coldest months.|Ayılar en soğuk aylarda kış uykusuna yatar.
linger|v|(koku, his) uzun süre kalmak; oyalanmak|The smell of fresh bread *lingered* in the kitchen.|Taze ekmeğin kokusu mutfakta uzun süre kaldı.
brew|v|demlemek|My father *brews* tea the traditional Turkish way.|Babam çayı geleneksel Türk usulüyle demler.
hectic|adj|yoğun, telaşlı, koşuşturmalı|December is always a *hectic* month at work.|Aralık, iş yerinde her zaman koşuşturmalı bir aydır.
invaluable|adj|paha biçilmez, çok değerli|Your advice has been *invaluable* to me.|Tavsiyelerin benim için paha biçilmezdi.
settle down|phr|yerleşmek, düzen kurmak|After years of traveling, they *settled down* in Izmir.|Yıllarca gezdikten sonra İzmir'e yerleşip düzen kurdular.
thrilled|adj|çok heyecanlı, çok mutlu|I'm *thrilled* to tell you that I got the job!|İşi aldığımı sana söylemekten büyük mutluluk duyuyorum!
leftovers|n|artan yemek|We had the *leftovers* from the party for lunch.|Öğle yemeğinde partiden kalan yemekleri yedik.
solstice|n|gündönümü|The winter *solstice* is the longest night of the year.|Kış gündönümü, yılın en uzun gecesidir.
roast|v|kavurmak, közlemek, fırınlamak|Street vendors *roast* chestnuts on cold winter days.|Sokak satıcıları soğuk kış günlerinde kestane kebap yapar.
decorate|v|süslemek|We *decorated* the living room with lights and candles.|Oturma odasını ışıklar ve mumlarla süsledik.
gather|v|toplanmak, bir araya gelmek|The whole family *gathers* at our house on New Year's Eve.|Bütün aile yılbaşı gecesi bizim evde toplanır.
festive|adj|şenlikli, bayram havasında|The streets look so *festive* with all the lights.|Tüm o ışıklarla sokaklar çok şenlikli görünüyor.
unwrap|v|(paketi) açmak|The kids couldn't wait to *unwrap* their presents.|Çocuklar hediyelerini açmak için sabırsızlanıyordu.
indulge|v|kendini (bir zevke) kaptırmak|During the holidays, I *indulge* in a bit too much chocolate.|Tatillerde kendimi biraz fazla çikolataya kaptırıyorum.
accomplishment|n|başarı, kazanım|Running my first 10K was my biggest *accomplishment* this year.|İlk 10 km koşumu, bu yılki en büyük başarımdı.
farewell|n|veda|We threw a *farewell* party for our colleague who is retiring.|Emekli olan iş arkadaşımız için bir veda partisi düzenledik.
upcoming|adj|yaklaşan, önümüzdeki|Are you ready for the *upcoming* year?|Önümüzdeki yıla hazır mısın?
reflect|v|üzerine düşünmek; yansıtmak|On the last day of the year, I like to *reflect* on what I've learned.|Yılın son gününde öğrendiklerim üzerine düşünmeyi severim.
"""
