1.film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT title,length FROM film
WHERE length>(
SELECT ROUND(AVG(length),3) FROM film
)

2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT title,length FROM film
WHERE length=(
SELECT MAX(length) FROM film
)

3.film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT title,rental_rate,replacement_cost FROM film
WHERE rental_rate=(
SELECT MIN(rental_rate) FROM film
)
AND
replacement_cost=
(
SELECT MIN(replacement_cost) FROM film
)
ORDER BY title

4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT payment.customer_id,first_name,last_name,COUNT(payment.customer_id) AS payment_count FROM payment
LEFT JOIN customer ON payment.customer_id=customer.customer_id
GROUP BY payment.customer_id,customer.customer_id
ORDER BY payment_count DESC
