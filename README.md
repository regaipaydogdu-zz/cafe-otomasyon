# CafeOtomasyon

Projede farklı yetkilere sahip patron, kasiyer, garson olmak üzere 3 kullanıcı tipi vardır.Patron hesabına sahip birisi sipariş oluştur,  ürün ekle sil güncelle, ödeme yap, kullanıcı ekle fonksiyonlarını, Garson hesabına sahip birisi sipariş oluştur fonksiyonunu, Kasiyer hesabına sahip birisi ödeme yap fonksiyonunu gerçekleştirebilmektedir.

Proje Java programlama diliyle gerçekleştirilmiştir, veritabanı olarak MySql kullanılmıştır veritabanı backup dosyasını SQL_Database klasöründe bulabilirsiniz.Bu proje Fırat Üniversitesi Algoritma ve Programlama II dersi için hazırlanmıştır.

## Proje Ekran Görüntüleri <br>
### Giriş Ekranı
Kullanıcılar kullanıcı adı ve parola ile sisteme giriş yapıp sahip oldukları yetkilere göre farklı sayfalara yönlendirilir.

![giris](https://github.com/regaipaydogdu/CafeOtomasyon/blob/master/screenshots/giris.PNG) <br>

### Anasayfa Ekranı

Bu ekrana yalnızca patron ünvanına sahip hesaplar erişebilir ve menüden yapmak istedikleri işlemleri gerçekleştirirler.

![anasayfa](https://github.com/regaipaydogdu/CafeOtomasyon/blob/master/screenshots/anasayfa.PNG) <br>

### Sipariş Ekranı

Garson ve patron ünvanına sahip hesapların erişebileceği ekranda veritabanından çekilen masa, ürün kategorisi ve ürün bilgileri listelenir seçim yapıldıktan sonra sipariş ver butonuna basıldığında her ürün listbox ögesinde listelenir ve masa siparişi oluşturulur siparişi oluşturan garson bilgileri sol tarafta görüntülenir.

![siparis](https://github.com/regaipaydogdu/CafeOtomasyon/blob/master/screenshots/siparis.PNG) <br>

### Ürünler Ekranı

 Patron ünvanına sahip hesapların erişebileceği ekranda veritabanından çekilen ürün bilgileri table ögesinde görüntülenir table ögesinde seçilen ürün ile silme, güncelleme işlemleri veya yeni bir ürün eklenip veritabanına kaydedilebilir.
 
![urunler](https://github.com/regaipaydogdu/CafeOtomasyon/blob/master/screenshots/urunler.PNG) <br>

### Ödeme Ekranı

Kasiyer ve Patron ünvanına sahip hesapların erişebileceği ekranda masalara ait siparişler ve toplam ücret görüntülenir ödeme tipi seçilerek ödeme işlemi gerçekleştirilir.Tüm ödeme geçmişi siparişi veren garson, ödemeyi gerçekleştiren kasiyer v.b bilgiler veritabanında depolanır.

![odeme](https://github.com/regaipaydogdu/CafeOtomasyon/blob/master/screenshots/odeme.PNG) <br>

### Ayarlar Ekranı

Patron ünvanına sahip hesapların erişebileceği ekranda sisteme kasiyer, patron, garson ünvanına sahip hesaplar eklenebilir.

![ayarlar](https://github.com/regaipaydogdu/CafeOtomasyon/blob/master/screenshots/ayarlar.PNG) <br>
