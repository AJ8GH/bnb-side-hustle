CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR (60) NOT NULL,
  email VARCHAR (60) UNIQUE NOT NULL,
  password VARCHAR (60) NOT NULL
);
