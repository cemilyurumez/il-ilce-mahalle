# Türkiye Adres Veritabanı

Bu repository, Türkiye'deki şehir, ilçe, mahalle ve sokak bilgilerini içeren SQL dosyalarını ve bu tabloları birbirine bağlayan bir view SQL dosyasını içermektedir.

## İçerik

Bu repository aşağıdaki SQL dosyalarını içerir:

1. **cities.sql**: Türkiye'deki şehirlerin (illerin) bilgilerini içerir.
2. **districts.sql**: Türkiye'deki ilçelerin bilgilerini içerir. İlçeler, şehirlerle ilişkilidir.
3. **neighborhoods.sql**: Türkiye'deki mahallelerin bilgilerini içerir. Mahalleler, ilçelerle ilişkilidir.
4. **streets.sql**: Türkiye'deki sokakların bilgilerini içerir. Sokaklar, mahallelerle ilişkilidir.
5. **view.sql**: Yukarıdaki tüm tabloları birbirine bağlayan bir view içerir.

## Tabloların Yapısı

### cities.sql

- **id**: Şehrin benzersiz kimliği.
- **name**: Şehrin adı.

### districts.sql

- **id**: İlçenin benzersiz kimliği.
- **name**: İlçenin adı.
- **city_id**: İlçenin bağlı olduğu şehrin kimliği.

### neighborhoods.sql

- **id**: Mahallenin benzersiz kimliği.
- **name**: Mahallenin adı.
- **district_id**: Mahallenin bağlı olduğu ilçenin kimliği.

### streets.sql

- **id**: Sokağın benzersiz kimliği.
- **name**: Sokağın adı.
- **neighborhood_id**: Sokağın bağlı olduğu mahallenin kimliği.

### adresses_view.sql

Bu SQL dosyası, yukarıdaki dört tabloyu bir araya getirerek, şehir, ilçe, mahalle ve sokak bilgilerini tek bir view üzerinden sorgulamayı sağlar.

## Kurulum ve Kullanım

1. Veritabanınıza bağlanın.
2. SQL dosyalarını sırasıyla çalıştırarak tabloları ve view'i oluşturun:
   ```sql
   \i cities.sql
   \i districts.sql
   \i neighborhoods.sql
   \i streets.sql
   \i adresses_view.sql
