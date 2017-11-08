CREATE DATABASE platform;

\c platform;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(100),
	hometown VARCHAR(100),
	birthYear INT,
	birthMonth INT,
	birthDay INT
);