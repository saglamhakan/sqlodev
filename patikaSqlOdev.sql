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


--Add User

insert into users (user_id, username, email, creation_date, is_active) values (1, 'cgligorijevic0', 'hcalder0@odnoklassniki.ru', '2023-05-05', false);
insert into users (user_id, username, email, creation_date, is_active) values (2, 'matchly1', 'tdelgaty1@sogou.com', '2022-07-23', false);
insert into users (user_id, username, email, creation_date, is_active) values (3, 'cfoxley2', 'wgapper2@tmall.com', '2023-06-01', true);
insert into users (user_id, username, email, creation_date, is_active) values (4, 'ktingey3', 'gtomala3@google.ca', '2022-10-29', false);
insert into users (user_id, username, email, creation_date, is_active) values (5, 'apreece4', 'wlorenz4@aol.com', '2022-10-29', false);
insert into users (user_id, username, email, creation_date, is_active) values (6, 'kbrayne5', 'bgorler5@tiny.cc', '2023-03-17', true);
insert into users (user_id, username, email, creation_date, is_active) values (7, 'ndye6', 'mskippen6@youtu.be', '2022-11-09', false);
insert into users (user_id, username, email, creation_date, is_active) values (8, 'efishlee7', 'cantoniewicz7@cpanel.net', '2023-03-06', false);
insert into users (user_id, username, email, creation_date, is_active) values (9, 'jcesconi8', 'ktarrier8@biblegateway.com', '2022-08-17', false);
insert into users (user_id, username, email, creation_date, is_active) values (10, 'gsage9', 'agreves9@nature.com', '2023-06-13', false);
insert into users (user_id, username, email, creation_date, is_active) values (11, 'pburgisia', 'rrytona@sina.com.cn', '2022-08-26', true);
insert into users (user_id, username, email, creation_date, is_active) values (12, 'sblethinb', 'bbrassillb@dyndns.org', '2023-05-13', true);
insert into users (user_id, username, email, creation_date, is_active) values (13, 'blampreyc', 'pdonnec@va.gov', '2023-02-22', true);
insert into users (user_id, username, email, creation_date, is_active) values (14, 'ncovelld', 'smorlingd@dedecms.com', '2023-04-05', false);
insert into users (user_id, username, email, creation_date, is_active) values (15, 'fgouldinge', 'vkeseye@webs.com', '2023-04-17', false);
insert into users (user_id, username, email, creation_date, is_active) values (16, 'gelderedf', 'pkeysonf@paginegialle.it', '2023-02-03', false);
insert into users (user_id, username, email, creation_date, is_active) values (17, 'tfauxg', 'bgostallg@telegraph.co.uk', '2023-02-27', false);
insert into users (user_id, username, email, creation_date, is_active) values (18, 'ncoronadoh', 'ltwycrossh@friendfeed.com', '2023-02-03', true);
insert into users (user_id, username, email, creation_date, is_active) values (19, 'rlarwelli', 'rortneri@etsy.com', '2023-03-05', true);
insert into users (user_id, username, email, creation_date, is_active) values (20, 'dduckerinj', 'ocalfej@reverbnation.com', '2022-11-04', true);


--Add Category

insert into categories (category_id, name, creation_date) values (1, 'gmulrenan0', '2015-06-04');
insert into categories (category_id, name, creation_date) values (2, 'cthow1', '2018-09-15');
insert into categories (category_id, name, creation_date) values (3, 'spenk2', '2021-12-24');
insert into categories (category_id, name, creation_date) values (4, 'dzorener3', '2022-01-18');
insert into categories (category_id, name, creation_date) values (5, 'mmugford4', '2020-04-02');


--Add posts

insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 1, 1, '田中さんにあげて下さい', '1', 1, '1/13/2012', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 2, 2, ' إذ هنا؟ الستار وتنص', '<svg><script>0<1>alert(''XSS'')</script>', 2, '8/24/2021', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 3, 3, '1E+02', '-1.00', 3, '7/2/2003', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 4, 4, '/dev/; touch /tmp/blns.fail ; echo', '<svg><script>0<1>alert(''XSS'')</script>', 4, '11/13/2001', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 5, 3, '사회과학원 어학연구소', '0/0', 5, '7/29/2006', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 6, 2, '!@#$%^&*()', '__ﾛ(,_,*)', 6, '10/8/2020', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 7, 4, '-1.00', 'åß∂ƒ©˙∆˚¬…æ', 7, '6/27/2004', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 8, 2, '１２３', '1''; DROP TABLE users--', 8, '10/28/2020', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 9, 1, '␢', '‫test‫', 9, '5/25/2013', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 10, 4, ',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’', '˙ɐnbᴉlɐ ɐuƃɐɯ ǝɹolop ʇǝ ǝɹoqɐl ʇn ʇunpᴉpᴉɔuᴉ ɹodɯǝʇ poɯsnᴉǝ op pǝs ''ʇᴉlǝ ƃuᴉɔsᴉdᴉpɐ ɹnʇǝʇɔǝsuoɔ ''ʇǝɯɐ ʇᴉs ɹolop ɯnsdᴉ ɯǝɹo˥', 10, '2/20/2011', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (11, 11, 3, '𠜎𠜱𠝹𠱓𠱸𠲖𠳏', 'パーティーへ行かないか', 11, '9/28/2013', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (12, 12, 2, '١٢٣', '<script>alert(''hi'')</script>', 12, '7/10/2009', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 13, 2, '‪‪test‪', '-1', 13, '10/25/2005', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 14, 3, '𠜎𠜱𠝹𠱓𠱸𠲖𠳏', '1E2', 14, '11/25/2003', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (15, 15, 3, ',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’', '99', 15, '10/28/2022', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (16, 16, 2, ' hjjhh', '"''"''"''''''''"', 16, '6/2/2018', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (17, 17, 3, '-1/2jbjkb', 'Z̮̞̠͙͔ͅḀ̗̞͈̻̗Ḷ͙͎̯̹̞͓G̻O̭̗̮', 17, '2/11/2018', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (18, 18, 4, '<svg><script>0<1>alert(''XSS'')</script>', '''', 18, '7/14/2011', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (19, 19, 1, '`⁄€‹›ﬁﬂ‡°·‚—±', '␢', 19, '4/13/2014', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (20, 20, 1, '(ﾉಥ益ಥ）ﾉ﻿ ┻━┻', '¸˛Ç◊ı˜Â¯˘¿', 20, '6/9/2014', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (21, 12, 3, '../../../../../../../../../../../etc/hosts', '👩🏽', 22, '10/3/2011', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (22, 11, 4, '(｡◕ ∀ ◕｡)', '../../../../../../../../../../../etc/hosts', 23, '5/8/2020', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (23, 2, 4, '˙ɐnbᴉlɐ ɐu ɹodɯǝʇ poɯsnᴉǝ op pǝs ''ʇ', '(ﾉಥ益ಥ）ﾉ﻿ ┻━┻', 24, '11/29/2022', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (24, 2, 3, '␢', '١٢٣', 25, '12/14/2019', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (25, 13, 3, '​', '1E+02', 26, '6/1/2011', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (26, 4, 2, 'Œ„´‰ˇÁ¨ˆØ∏”’', '田下さい', 27, '10/13/2018', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (27, 17, 4, '1;DROP TABLE users', '-1', 28, '4/7/2018', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (28, 3, 3, 'Œ„´‰ˇÁ¨ˆØ∏”’', '(ﾉಥ益ಥ）ﾉ﻿ ┻━┻', 29, '3/17/2011', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (29, 11, 1, '✋🏿 💪🏿 👐🏿 🙌🏿 👏🏿 🙏🏿', '울란바토르', 30, '1/8/2019', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (30, 12, 2, '⁰⁴⁵', '-1E02', 31, '9/26/2018', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (31, 13, 2, '₀₁₂', '👩🏽', 32, '11/8/2007', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (32, 14, 1, '() { 0; }; touch /tmp/blns.shellshock1.fail;', '`⁄€‹›ﬁﬂ‡°·‚—±', 33, '3/9/2019', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (33, 15, 1, '사회과학원 어학연구소', '部落格', 34, '12/16/2017', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (34, 16, 1, 'Hakan', 'ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو.', 35, '12/15/2019', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (35, 12, 2, ',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’', '1;DROP TABLE users', 36, '1/28/2006', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (36, 13, 3, '₀₁₂', '1E02', 37, '3/25/2007', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (37, 12, 4, 'ثم  كان. , معاملة بولندا، الإطلاق عل إيو.', '00˙Ɩ$-', 38, '9/22/2015', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (38, 11, 4, 'Mehmet', '99', 39, '11/11/2018', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (39, 11, 3, ',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’', '‪‪test‪', 40, '8/10/2015', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (40, 16, 3, '"''"''"''''''''"', '`⁄€‹›ﬁﬂ‡°·‚—±', 41, '9/17/2001', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (41, 12, 2, '١٢٣', '｀ｨ(´∀｀∩', 42, '5/4/2010', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (42, 15, 3, 'Hasan', '00˙Ɩ$-', 43, '6/20/2007', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (43, 14, 4, '1 sm', '⁰⁴⁵₀₁₂', 44, '2/6/2019', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (44, 17, 1, '␡', '田中さんにあげて下さい', 46, '10/13/2017', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (45, 13, 1, '　', '⁦test⁧', 47, '7/28/2006', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (46, 12, 1, '｀ｨ(´∀｀∩', '"''''''''"''"', 48, '3/21/2006', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (47, 17, 2, 'ヽ༼ຈل͜ຈ༽ﾉ ヽ༼ຈل͜ຈ༽ﾉ ', 'Ω≈ç√∫˜µ≤≥÷', 49, '5/3/2021', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (48, 11, 3, 'הָיְתָהtestالصفحات التّحول', '<svg><script>0<1>alert(''XSS'')</script>', 50, '10/16/2006', true);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (49, 1, 1, '˙ɐnbᴉlɐ  ''ʇǝɯɐ ʇᴉs ɹolop ɯnsdᴉ ɯǝɹo˥', '0/0', 1, '11/6/2021', false);
insert into posts (post_id, user_id, category_id, title, content, view_count, creation_date, is_published) values (50, 2, 2, '᠎', '`⁄€‹›ﬁﬂ‡°·‚—±', 2, '3/5/2011', true);


--Add Comments

insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (1, 1, 1, '᠎', '2010-09-27', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (2, 2, 2, '`⁄€‹›ﬁﬂ‡°·‚—±', '2016-03-27', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (3, 3, 3, 'Ω≈ç√∫˜µ≤≥÷', '2018-06-11', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (4, 4, 4, 'NIL', '2012-04-28', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (5, 5, 5, '-1E+02', '2018-08-12', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (6, 6, 6, '👩🏽', '2021-09-16', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (7, 7, 7, '👾 🙇 💁 🙅 🙆 🙋 🙎 🙍 ', '2017-09-15', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (8, 8, 8, ',./;''[]\-=', '2022-07-09', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (9, 9, 9, '🚾 🆒 🆓 🆕 🆖 🆗 🆙 🏧', '2015-12-07', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (10, 10, 10, '❤️ 💔 💌 💕 💞 💓 💗 💖 💘 💝 💟 💜 💛 💚 💙', '2023-04-29', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (11, 11, 11, '(ﾉಥ益ಥ）ﾉ﻿ ┻━┻', '2012-04-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (12, 12, 12, '⁰⁴⁵', '2016-03-02', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (13, 13, 13, '울란바토르', '2012-02-23', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (14, 14, 14, '​', '2023-05-06', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (15, 15, 15, 'test⁠test‫', '2013-02-03', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (16, 16, 16, '1''; DROP TABLE users--', '2013-11-19', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (17, 17, 17, '👩🏽', '2017-09-26', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (18, 18, 18, '"', '2017-12-23', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (19, 19, 19, '¡™£¢∞§¶•ªº–≠', '2022-07-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (20, 20, 20, '999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999', '2018-09-06', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (21, 21, 1, '1', '2011-04-18', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (22, 22, 2, 'Hakan', '2012-08-20', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (23, 23, 3, '0/0', '2018-08-22', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (24, 24, 4, '() { _; } >_[$($())] { touch /tmp/blns.shellshock2.fail; }', '2020-09-18', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (25, 25, 5, '1', '2016-03-12', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (26, 26, 6, '-1E2', '2021-10-29', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (27, 27, 6, ',./;''[]\-=', '2014-09-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (28, 28, 7, '🐵 🙈 🙉 🙊', '2016-04-26', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (29, 29, 8, '0.00', '2023-05-16', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (30, 30, 9, '1;DROP TABLE users', '2014-05-29', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (31, 31, 1, '0/0', '2014-12-09', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (32, 32, 2, '　', '2018-02-22', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (33, 33, 3, '""', '2022-03-16', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (34, 34, 3, '¸˛Ç◊ı˜Â¯˘¿', '2021-02-07', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (35, 35, 3, 'nlödldl', '2013-11-19', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (36, 36, 4, '$1.00', '2021-07-22', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (37, 37, 5, '̦H̬̤̗̤͝e͜ ̜̥̝̻͍̟́w̕h̖̯͓o̝͙̖͎̱̮ ҉̺̙̞̟͈W̷̼̭a̺̪͍į͈͕̭͙̯̜t̶̼̮s̘͙͖̕ ̠̫̠B̻͍͙͉̳ͅe̵h̵̬͇̫͙i̹͓̳̳̮͎̫̕n͟d̴̪̜̖ ̰͉̩͇͙̲͞ͅT͖̼͓̪͢h͏͓̮̻e̬̝̟ͅ ̤̹̝W͙̞̝͔͇͝ͅa͏͓͔̹̼̣l̴͔̰̤̟͔ḽ̫.͕', '2015-01-07', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (38, 38, 6, '1', '2011-11-04', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (39, 39, 6, '""', '2013-09-18', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (40, 40, 6, '¸˛Ç◊ı˜Â¯˘¿', '2016-12-20', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (41, 41, 5, '␡', '2011-04-02', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (42, 42, 5, '␣', '2023-04-07', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (43, 43, 4, '0.00', '2022-07-24', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (44, 44, 1, '1E02', '2016-05-16', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (45, 45, 2, 'Œ„´‰ˇÁ¨ˆØ∏”’', '2016-06-02', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (46, 46, 3, '00˙Ɩ$-', '2012-03-01', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (47, 47, 4, 'Mehmet', '2019-05-30', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (48, 48, 5, '🐵 🙈 🙉 🙊', '2016-02-26', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (49, 49, 6, '<img src=x onerror=alert(''hi'') />', '2021-10-27', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (50, 50, 5, '-1.00', '2020-03-10', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (51, 1, 3, 'ÅÍÎÏ˝ÓÔÒÚÆ☃', '2021-10-18', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (52, 2, 2, '-1E2', '2011-10-10', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (53, 3, 3, 'ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو.', '2021-12-15', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (54, 3, 4, '1E02', '2011-06-01', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (55, 4, 4, '(╯°□°）╯︵ ┻━┻)  ', '2011-07-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (56, 4, 4, 'ヽ༼ຈل͜ຈ༽ﾉ ヽ༼ຈل͜ຈ༽ﾉ ', '2010-09-14', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (57, 5, 5, 'Ω≈ç√∫˜µ≤≥÷', '2017-08-06', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (58, 6, 5, '˙ɐnbᴉlɐ ɐuƃɐɯ ǝɹolop ʇǝ ǝɹoqɐl ʇn ʇunpᴉpᴉɔuᴉ ɹodɯǝʇ poɯsnᴉǝ op pǝs ''ʇᴉlǝ ƃuᴉɔsᴉdᴉpɐ ɹnʇǝʇɔǝsuoɔ ''ʇǝɯɐ ʇᴉs ɹolop ɯnsdᴉ ɯǝɹo˥', '2011-07-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (59, 7, 2, '0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟', '2018-06-03', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (60, 8, 1, 'Œ„´‰ˇÁ¨ˆØ∏”’', '2012-05-14', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (61, 1, 2, '‪‪test‪', '2012-10-19', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (62, 2, 2, 'パーティーへ行かないか', '2017-10-13', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (63, 3, 2, '｀ｨ(´∀｀∩', '2016-10-04', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (64, 4, 3, '₀₁₂', '2011-01-26', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (65, 4, 4, '-1E+02', '2013-08-08', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (66, 4, 11, '社會科學院語學研究所', '2018-04-28', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (67, 3, 12, '() { 0; }; touch /tmp/blns.shellshock1.fail;', '2019-09-29', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (68, 23, 12, '''''', '2014-03-29', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (69, 43, 12, '1E2', '2022-09-09', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (70, 12, 13, '‫test‫', '2014-02-11', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (71, 14, 11, 'Z̮̞̠͙͔ͅḀ̗̞͈̻̗Ḷ͙͎̯̹̞͓G̻O̭̗̮', '2018-09-10', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (72, 23, 12, '(╯°□°）╯︵ ┻━┻)  ', '2019-05-10', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (73, 34, 13, 'בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ', '2015-01-04', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (74, 43, 16, '(｡◕ ∀ ◕｡)', '2016-09-08', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (75, 23, 7, '‫test‫', '2017-05-19', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (76, 23, 7, '../../../../../../../../../../../etc/passwd%00', '2016-11-11', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (77, 13, 8, '❤️ 💔 💌 💕 💞 💓 💗 💖 💘 💝 💟 💜 💛 💚 💙', '2011-01-25', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (78, 12, 6, '!@#$%^&*()', '2011-04-07', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (79, 11, 6, '₀₁₂', '2017-02-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (80, 12, 5, '''', '2011-04-19', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (81, 23, 5, 'ÅÍÎÏ˝ÓÔÒÚÆ☃', '2012-02-11', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (82, 34, 5, '‫test‫', '2018-03-17', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (83, 23, 4, '"''"''"''''''''"', '2019-05-10', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (84, 23, 4, '-1E+02', '2013-11-12', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (85, 22, 4, '1E+02', '2020-09-12', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (86, 23, 5, '⁦test⁧', '2018-01-30', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (87, 34, 6, '👩🏽', '2010-08-13', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (88, 34, 3, ' ', '2014-08-21', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (89, 22, 4, '1E+02', '2013-05-13', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (90, 23, 4, '​', '2015-02-18', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (91, 22, 4, '・(￣∀￣)・:*:', '2021-09-06', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (92, 22, 4, '1E2', '2018-08-07', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (93, 34, 5, '-1E02', '2014-06-02', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (94, 43, 6, '-1/2', '2013-08-22', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (95, 32, 6, 'ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو.', '2021-04-10', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (96, 23, 5, '👾 🙇 💁 🙅 🙆 🙋 🙎 🙍 ', '2012-10-14', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (97, 43, 5, '"''''''''"''"', '2014-05-20', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (98, 34, 5, '部落格', '2021-06-07', true);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (99, 43, 5, '⁰⁴⁵', '2012-05-24', false);
insert into comments (comment_id, post_id, user_id, content, creation_date, is_published) values (100, 21, 4, '١٢٣', '2023-01-28', false);



--İstenilen Sorgular

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




