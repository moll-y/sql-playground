```sh
mysql -h 127.0.0.1 -u root -p < sakila-db/sakila-schema.sql
mysql -h 127.0.0.1 -u root -p < sakila-db/sakila-data.sql
```

## Exercise 5-2
> Write a query that returns the title of every film in which an actor with the
> first name JOHN appeared.

```sql
SELECT title
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = 'JOHN';
```

## Exercise 5-3
> Construct a query that returns all addresses that are in the same city. You
> will need to join the address table to itself, and each row should include
> two different addresses.

```sql
SELECT a1.address addr1, a2.address addr2, a1.city_id
FROM address AS a1
INNER JOIN address AS a2 ON a1.city_id = a2.city_id AND a1.address < a2.address;
```
