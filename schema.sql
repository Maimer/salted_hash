CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(15),
  salt varchar(255),
  digest varchar(255)
)
