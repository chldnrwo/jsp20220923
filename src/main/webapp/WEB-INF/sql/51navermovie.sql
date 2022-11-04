USE mydb3;
CREATE TABLE Movie(
	id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    runtime VARCHAR(255) DEFAULT 0,
    releaseDate DATE
);

CREATE TABLE Actor(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE movieActor(
	movieId INT NOT NULL,
    actorId INT NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (actorId) REFERENCES Actor(id),
    PRIMARY KEY (movieId, actorId)
);

CREATE TABLE Director(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE movieDirector(
	movieId INT NOT NULL,
    directorId INT NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (directorId) REFERENCES Director(id),
    PRIMARY KEY (movieId, directorId)
);

CREATE TABLE Genre(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE movieGenre(
	movieId INT NOT NULL,
    genreId INT NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (genreId) REFERENCES Genre(id),
    PRIMARY KEY (movieId, genreId)
);
