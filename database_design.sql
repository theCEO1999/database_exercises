USE codeup_test_db;

# CREATE TABLE `quotes` (
#                           `id` int NOT NULL AUTO_INCREMENT,
#                           `content` varchar(240) NOT NULL,
#                           `author` varchar(50) NOT NULL,
#                           PRIMARY KEY (`id`)
# );

#  ONE TO MANY

SET @neil_gaiman_id := (SELECT id FROM authors WHERE author_name = 'Neil Gaiman');

SET @marcel_proust_id := (SELECT id FROM authors WHERE author_name = 'Marcel Proust');

truncate quotes;

INSERT INTO quotes (content, author_id) VALUES
                                            ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', @marcel_proust_id),
                                            ('My destination is no longer a place, rather a new way of seeing.', @marcel_proust_id),
                                            ('Reading is that fruitful miracle of a communication in the midst of solitude.', @marcel_proust_id),
                                            ('Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.', @neil_gaiman_id),
                                            ('I hope that in this year to come, you make mistakes. Because if you are making mistakes...you''re Doing Something.', @neil_gaiman_id),
                                            ('I hope you will have a wonderful year, that you''ll dream dangerously and outrageously, that you''ll make something that didn''t exist before you made it', @neil_gaiman_id
                                            );

CREATE TABLE authors (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         author_name VARCHAR(50) NOT NULL,
                         PRIMARY KEY (id)
);
# ALTER TABLE quotes DROP COLUMN author_id;

ALTER TABLE quotes ADD COLUMN author_id INT UNSIGNED;

ALTER TABLE quotes ADD CONSTRAINT quotes_author_id_fk FOREIGN KEY (author_id) REFERENCES authors(id);

SHOW INDEXES FROM quotes;

INSERT INTO authors (author_name) VALUES
                                      ('Marcel Proust'),
                                      ('Neil Gaiman');

SHOW INDEXES FROM quotes;

SHOW CREATE TABLE quotes;

DESCRIBE quotes;

SELECT author_name AS author, content as quote from authors a join quotes q on a.id = q.author_id;

# MANY TO MANY

CREATE TABLE IF NOT EXISTS topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        topic VARCHAR(50),
                        PRIMARY KEY (id)
);
INSERT INTO topics (topic) VALUES
                               ('literature'),
                               ('philosophy'),
                               ('inspiration'),
                               ('hope');


CREATE TABLE IF NOT EXISTS quote_topics (
                              quote_id INT NOT NULL,
                              topic_id INT UNSIGNED NOT NULL,
                              CONSTRAINT quote_topics_quote_id_fk FOREIGN KEY (quote_id) REFERENCES quotes (id),
                              CONSTRAINT quote_topics_topic_id_fk FOREIGN KEY (topic_id) REFERENCES topics (id)
);

describe quote_topics;




INSERT INTO quote_topics  (quote_id, topic_id) VALUES
                                                   (1, 2),
                                                   (1, 3),
                                                   (2, 2),
                                                   (2, 3),
                                                   (3, 1),
                                                   (3, 2),
                                                   (4, 1),
                                                   (4, 3),
                                                   (5, 3),
                                                   (5, 4),
                                                   (6, 3),
                                                   (6, 4);


SET @literature_id := (SELECT id FROM topics WHERE topic = 'Literature');

SELECT content, author_name AS author
FROM authors a
         JOIN quotes q
              on a.id = q.author_id
         JOIN quote_topics qt
              on q.id = qt.quote_id
WHERE qt.topic_id = @literature_id;

# database design exercise sql queries
#
# SELECT email FROM users WHERE a.add_name = 'whatever the name is'
#     JOIN add a on a.user_id = users.user_id;
#
# SELECT cat_name FROM categories WHERE a.add_name = 'whatever the name is'
#     JOIN ads a on categories.cat_id = a.cat_id;
#
# SELECT * FROM add
#                   JOIN cat c on add.cat_id = c.cat_id
# WHERE c.cat_id = 'CATEGORY';






