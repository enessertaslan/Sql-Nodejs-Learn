1.film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.

SELECT rating FROM film
GROUP BY rating;

2.film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.

SELECT replacement_cost,COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(replacement_cost)>50;
