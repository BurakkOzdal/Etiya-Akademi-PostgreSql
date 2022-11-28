# _SQL Örnekleri_

> Ürünler tablosuna ürün eklemek;

![products](products.png)

`insert into products (name,unit_price,stock) 
values ('Mouse', 500,20)`

![products-insert](product-insert.png)

> Ürünler tablosunda ürün güncellemek;

`update products set unit_price=250 where name='Mouse'`
 
![products-update](product-update.png)

> ürünler tablosunda ürün silmek;

`delete from products where name='Mouse'`

![products-delete](product-delete.png)


> Belirli sınırlar arasındaki kayıtları getirmek;


`select * from products where cast(unit_price as numeric)
between 100 and 400`

Fiyat aralığı 100 ile 400 olan ürünler
![products-betwenn](product-between.png)

> Birden fazla 'Where' işlemini tek seferde yapmak;

`select ci.name as "Şehir Adı", co.name as "Ülke Adı" from cities ci
inner join countries co on ci.country_id=co.id
where lower(co.name) in('almanya','hollanda') `

Ülkesi 'Almanya' veya 'Hollanda' olan şehirler

![city-in](city-in.png)

> Birbirleri ile bağlantılı tabloları ve kayıtlarını getirmek (İnner Join);

`select pr.name as "Ürün Adı", ca.name as "Kategori Adı" from product_categories pc
inner join products pr
on pc.product_id = pr.id
inner join categories ca
on pc.category_id = ca.id`

Ürünler ve bağlı oldukları kategori bilgisi.

![product-innerjoin](product-innerJoin.png)

> Birbirleri ile bağlantılı tabloları ve kayıtlarını getirmek (Left Join);

`select * from products pr
left join product_suppliers ps
on pr.id = ps.product_id where ps.supplier_id is null`

Satıcı olmayan ürünlerin bilgisi.

![product-leftJoin](product-leftjoin.png)

>Birbiriyle bağlantılı verileri gruplayabilmek;

`select pr.name as "Ürün Adı", count(ps.supplier_id) as "Satıcı sayısı" from products pr
inner join product_suppliers ps on pr.id=ps.product_id
group by pr.name order by count(ps.supplier_id) desc`

Ürün adı ve satıcı sayısını azalan şekilde getirilmesi.

![product-groupBy](product-groupBy.png)