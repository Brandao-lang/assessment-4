-- Artist Table

1.  INSERT INTO artist (name)
    VALUES ('Logic'), ('Muse'), ('half-alive')

2.  SELECT * FROM artist
    ORDER BY name LIMIT 5

-- Employee Table

1.  SELECT first_name, last_name FROM employee
    WHERE city = 'Calgary'

2.  SELECT * FROM employee
    WHERE reports_to = 2

3.  SELECT COUNT(*) FROM employee
    WHERE city = 'Lethbridge'

-- Invoice Table

1.  SELECT COUNT(*) FROM invoice
    WHERE billing_country = 'USA'

2.  SELECT MAX(total) FROM invoice

3.  SELECT MIN(total) FROM invoice

4.  SELECT * FROM invoice
    WHERE total > 5

5.  SELECT COUNT(*) FROM invoice
    WHERE total < 5

6.  SELECT SUM(total) FROM invoice

-- JOIN Queries

1.  SELECT * FROM invoice
    JOIN invoice_line ON
    invoice.invoice_id = invoice_line.invoice_id
    WHERE unit_price > 0.99

2.  SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total FROM invoice
    JOIN customer ON 
    invoice.customer_id = customer.customer_id

3.  SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name FROM customer
    JOIN employee ON 
    employee.employee_id = customer.support_rep_id

4.  SELECT artist.name, album.title FROM artist
    JOIN album ON
    artist.artist_id = album.artist_id

-- Extra Credit

-- Artist Table (Extra)

1.  SELECT * FROM artist 
    ORDER BY name DESC LIMIT 10

2.  SELECT * FROM artist 
    WHERE name LIKE 'Black%'

3.  SELECT * FROM artist 
    WHERE name LIKE '%Black%'

-- Employee Table (Extra)

1.  SELECT * FROM employee
    ORDER BY birth_date DESC LIMIT 1

2.  SELECT * FROM employee
    ORDER BY birth_date ASC LIMIT 1

-- Invoice Table (Extra)

1.  SELECT COUNT(*) FROM invoice
    WHERE billing_state IN ('CA', 'TX', 'AZ')

2.  SELECT AVG(total) FROM invoice

-- JOIN Queries (Extra)

1.  SELECT playlist_track.track_id, playlist.name FROM playlist_track
    JOIN playlist ON
    playlist_track.playlist_id = playlist.playlist_id
    WHERE playlist.name = 'Music'

2.  SELECT track.name, playlist.playlist_id FROM track
    JOIN playlist_track ON
    track.track_id = playlist_track.track_id
    JOIN playlist ON
    playlist.playlist_id = playlist_track.playlist_id
    WHERE playlist.playlist_id = 5

3.  SELECT track.name, playlist.name FROM track
    JOIN playlist_track ON
    track.track_id = playlist_track.track_id
    JOIN playlist ON
    playlist.playlist_id = playlist_track.playlist_id

4.  SELECT track.name, album.title FROM track
    JOIN album ON
    track.album_id = album.album_id
    JOIN genre ON
    track.genre_id = genre.genre_id
    WHERE genre.name = 'Alternative & Punk'




