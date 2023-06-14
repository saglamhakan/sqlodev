--Tabloların oluşturulması

1- users Table

CREATE TABLE users (
  user_id INT PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_active BOOLEAN
);

2- categories Table

CREATE TABLE categories (
  category_id INT PRIMARY KEY,
  title VARCHAR(255) UNIQUE NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_published BOOLEAN
);

3- posts Table 

CREATE TABLE posts (
  post_id INT PRIMARY KEY,
  user_id INT,
  category_id INT,
  title VARCHAR(50) NOT NULL,
  content TEXT NOT NULL,
  view_count INT DEFAULT 0,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_published BOOLEAN,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

4- comments TABLE

CREATE TABLE comments (
  comment_id INT PRIMARY KEY,
  post_id INT,
  user_id INT,
  content TEXT NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_published BOOLEAN,
  FOREIGN KEY (post_id) REFERENCES posts(post_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);