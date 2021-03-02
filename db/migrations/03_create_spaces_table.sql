CREATE TABLE spaces (
  id SERIAL PRIMARY KEY,
  name VARCHAR (60) NOT NULL,
  description VARCHAR (500),
  price INTEGER,
  host_id INTEGER REFERENCES users (id) ON DELETE CASCADE
);
