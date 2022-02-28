1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
	id INTEGER,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
	
);
2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO employee(id,name,birthday,email) values('1','Kelwin Stedall','1990-07-08',kstedall0@columbia.edu);

3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name='XXX',
	email='emptymail@gmail.com'
WHERE name LIKE 'C%'
RETURNING *

4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE name LIKE 'B%'
RETURNING *;
