CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL
);

INSERT INTO items (title) VALUES ('Buy milk'), ('Finish homework');
INSERT INTO items (title) VALUES ('Go for a walk'), ('Read a book');
INSERT INTO items (title) VALUES ('Watch a movie'), ('Cook dinner');
INSERT INTO items (title) VALUES ('Clean the house'), ('Call a friend');