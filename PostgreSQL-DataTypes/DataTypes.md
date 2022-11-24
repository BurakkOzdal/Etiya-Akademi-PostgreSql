
## Sayısal Tipler

Sayısal verileri tutmak için kullandığımız tiplerdir.
PostgreSQL içerisinde karşılıkları:

* smallint
* integer 
* decimal

Yazılımdaki gibi boyutları ve sayısal değer aralıkları değişmekte.

Bir de para birimlerini karşıladığımız bir tip var:

* money

## Metinsel Tipler

Metin, karakter gibi verileri tutmak istediğimiz zaman kullanacağımız veri tipleridir.

* "character varying" limiti olan uzunluk belirlenebilir. String kullanımına en yakın.
* "character" tek karakter olur Char değişkenlerine uygun.
* "text" sınırsız uzunlukta.

## Zaman Tipleri

Doğum günü, Sisteme kayıt olma gibi tarihleri tutmak istediğimiz zaman kullandığımız veri tipleridir.

* "date" tarih
* "TIMESTAMPTZ"  tarih ve zaman

## Boolean Tipler

Evet, hayır gibi kontrol amaçlı cevapları tuttuğumuz tiplerdir.

* "boolean"

## Geometrik Tipler

Çok farklı tiplerden örnek vermek gerekrise. 2 boyutlu objeleri matris şeklinde belirterek veri tabanında saklayabileceğimiz tiplerdir.

* "line"
* "box"


Daha fazla değişkeni, ne işe yaradıklarını, kullanılabilir bellek ve değer aralıklarını;

[Buradan bakabilirsinz](https://www.tutorialspoint.com/postgresql/postgresql_data_types.htm)