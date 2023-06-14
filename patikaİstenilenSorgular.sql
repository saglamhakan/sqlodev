1- Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.

SELECT p.title AS post_title, u.username AS author, c.title AS category
FROM posts p
JOIN users u ON p.user_id = u.user_id
JOIN categories c ON p.category_id = c.category_id;

2- En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte
alın.

SELECT p.title AS post_title, u.username AS author, p.creation_date AS publish_date
FROM posts p
JOIN users u ON p.user_id = u.user_id
WHERE p.is_published = true
ORDER BY p.creation_date DESC
LIMIT 5;

3- Her blog yazısı için yorum sayısını gösterin.

SELECT p.title AS post_title, COUNT(c.comment_id) AS comment_count
FROM posts p
LEFT JOIN comments c ON p.post_id = c.post_id
GROUP BY p.post_id, p.title;

4- Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.

SELECT username, email FROM users;

5- En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.

SELECT c.content AS comment_content, p.title AS post_title
FROM comments c
JOIN posts p ON c.post_id = p.post_id
ORDER BY c.creation_date DESC
LIMIT 10;

6- Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.

SELECT p.title AS post_title, p.content AS post_content
FROM posts p
WHERE p.user_id = user_id;

7- Her kullanıcının yazdığı toplam gönderi sayısını alın.

SELECT u.username AS author, COUNT(p.post_id) AS total_posts
FROM users u
LEFT JOIN posts p ON u.user_id = p.user_id
GROUP BY u.user_id, u.username;

8- Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.

SELECT c.title AS category, COUNT(p.post_id) AS post_count
FROM categories c
LEFT JOIN posts p ON c.category_id = p.category_id
GROUP BY c.category_id, c.title;

9- Gönderi sayısına göre en popüler kategoriyi bulun.

SELECT c.title AS category, COUNT(p.post_id) AS post_count
FROM categories c
LEFT JOIN posts p ON c.category_id = p.category_id
GROUP BY c.category_id, c.title
ORDER BY post_count DESC
LIMIT 1;

10- Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.

SELECT c.title AS category, SUM(p.view_count) AS total_views
FROM categories c
LEFT JOIN posts p ON c.category_id = p.category_id
GROUP BY c.category_id, c.title
ORDER BY total_views DESC
LIMIT 1;

11- En fazla yoruma sahip gönderiyi alın.

SELECT p.title AS post_title, COUNT(c.comment_id) AS comment_count
FROM posts p
LEFT JOIN comments c ON p.post_id = c.post_id
GROUP BY p.post_id, p.title
ORDER BY comment_count DESC
LIMIT 1;

12- Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin.

SELECT u.username AS author_username, u.email AS author_email
FROM users u
JOIN posts p ON u.user_id = p.user_id
WHERE p.post_id = belirli_post_id;

13- Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.

SELECT *
FROM posts
WHERE title LIKE '%word%' OR content LIKE '%word%';

14- Belirli bir kullanıcının en son yorumunu gösterin.

SELECT c.comment_text, c.creation_date
FROM comments c
WHERE c.user_id = belirli_user_id
ORDER BY c.creation_date DESC
LIMIT 1;

15- Gönderi başına ortalama yorum sayısını bulun.

SELECT AVG(comment_count) AS average_comment_count
FROM (
    SELECT p.post_id, COUNT(c.comment_id) AS comment_count
    FROM posts p
    LEFT JOIN comments c ON p.post_id = c.post_id
    GROUP BY p.post_id
) AS subquery;

16- Son 30 günde yayınlanan gönderileri gösterin.

SELECT *
FROM posts
WHERE creation_date >= CURDATE() - INTERVAL 30 DAY;

17- Belirli bir kullanıcının yaptığı yorumları alın.

SELECT *
FROM comments
WHERE user_id = user_id;

18- Belirli bir kategoriye ait tüm gönderileri bulun.

SELECT *
FROM posts
WHERE category_id = category_id;

19- Beşten az yazıya sahip kategorileri bulun.

SELECT c.category_id, c.category_name, COUNT(p.post_id) AS post_count
FROM categories c
LEFT JOIN posts p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
HAVING post_count < 5;

20- Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.

SELECT u.user_id, u.username
FROM users u
JOIN posts p ON u.user_id = p.user_id
JOIN comments c ON u.user_id = c.user_id
GROUP BY u.user_id, u.username
HAVING COUNT(DISTINCT p.post_id) > 0 AND COUNT(DISTINCT c.comment_id) > 0;

21- En az 2 farklı yazıya yorum yapmış kullanıcıları alın.

SELECT u.user_id, u.username
FROM users u
JOIN comments c ON u.user_id = c.user_id
GROUP BY u.user_id, u.username
HAVING COUNT(DISTINCT c.post_id) >= 2;

22- En az 3 yazıya sahip kategorileri görüntüleyin.

SELECT c.category_id, c.category_name, COUNT(p.post_id) AS post_count
FROM categories c
JOIN posts p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
HAVING COUNT(DISTINCT p.post_id) >= 3;

23- Beşten fazla blog yazısı yazan yazarları bulun.

SELECT u.user_id, u.username, COUNT(p.post_id) AS post_count
FROM users u
JOIN posts p ON u.user_id = p.user_id
GROUP BY u.user_id, u.username
HAVING COUNT(p.post_id) > 5;

24- Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini
görüntüleyin. (Union kullanarak).

SELECT u.email
FROM users u
JOIN posts p ON u.user_id = p.user_id
UNION
SELECT u.email
FROM users u
JOIN comments c ON u.user_id = c.user_id;

25- Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun.

SELECT u.user_id, u.username
FROM users u
JOIN posts p ON u.user_id = p.user_id
LEFT JOIN comments c ON p.post_id = c.post_id
GROUP BY u.user_id, u.username
HAVING COUNT(DISTINCT c.comment_id) = 0;



