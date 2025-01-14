DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS subjects CASCADE;
DROP TABLE IF EXISTS resources CASCADE;
DROP TABLE IF EXISTS progress_tracker CASCADE;
DROP TABLE IF EXISTS steps_to_resources;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(1000) NOT NULL,
  last_name VARCHAR(1000) NOT NULL,
  email VARCHAR(1000) NOT NULL,
  password VARCHAR(1000) NOT NULL,
  admin BOOLEAN NOT NULL
);

CREATE TABLE subjects (
  id SERIAL PRIMARY KEY NOT NULL,
  subject_name VARCHAR(100) NOT NULL
);

CREATE TABLE resources (
  id SERIAL PRIMARY KEY NOT NULL,
  subjects_id INTEGER REFERENCES subjects(id) ON DELETE CASCADE,
  step_number INTEGER NOT NULL,
  step_description VARCHAR(1000) NOT NULL,
  article_url VARCHAR(1000),
  photo_url VARCHAR(1000),
  video_url VARCHAR(1000)
);

CREATE TABLE progress_tracker (
  id SERIAL PRIMARY KEY NOT NULL,
  users_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  resources_id INTEGER REFERENCES resources(id) ON DELETE CASCADE
);