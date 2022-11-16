CREATE DATABASE catalogue_of_my_things;

CREATE TABLE item (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    genre VARCHAR(250) NOT NULL,
    author VARCHAR(250) NOT NULL,
    source VARCHAR(250) NOT NULL,
    label VARCHAR(250) NOT NULL,
    publish_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE books (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(250) NOT NULL,
    publisher VARCHAR(250) NOT NULL,
    publish_date DATE NOT NULL,
    cover_state VARCHAR(50) NOT NULL,
    FOREIGN KEY (id) REFERENCES item(id)
);

CREATE TABLE label (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    title VARCHAR(50),
    color VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE music_album (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    archived boolean NOT NULL,
    name text NOT NULL,
    publish_date date NOT NULL,
    FOREIGN KEY(id) references item(id)
);

CREATE TABLE genre (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name text NOT NULL
);
