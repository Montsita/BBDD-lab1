DROP DATABASE IF EXISTS lab1;
CREATE DATABASE lab1;
use lab1;

-- Ejercicio 1: Base de Datos de Películas

CREATE TABLE Actores (
    id_actores INT PRIMARY KEY,
    actor VARCHAR (255)
);

INSERT INTO actores (id_actores, actor) VALUES
(1, 'Tim Robbins'),
(2, 'Morgan Freeman'),
(3, 'Marlon Brando'),
(4, 'Al Pacino'),
(5, 'Christian Bale'),
(6, 'Heath Ledger'),
(7, 'Tom Hanks'),
(8, 'Robin Wright'),
(9, 'John Travolta'),
(10, 'Samuel L. Jackson'),
(11, 'Leonardo DiCaprio'),
(12, 'Joseph Gordon-Levitt'),
(13, 'Kate Winslet'),
(14, 'Keanu Reeves'),
(15, 'Laurence Fishburne'),
(16, 'Sam Worthington'),
(17, 'Zoe Saldana'),
(18, 'Russell Crowe'),
(19, 'Joaquin Phoenix');

CREATE TABLE Directores (
    id_directores INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

INSERT INTO Directores (nombre) VALUES
('Frank Darabont'),
('Francis Ford Coppola'),
('Christopher Nolan'),
('Robert Zemeckis'),
('Quentin Tarantino'),
('James Cameron'),
('The Wachowskis'),
('Ridley Scott');

CREATE TABLE Peliculas (
    id_pelicula INT PRIMARY KEY,
    titulo VARCHAR(255),
    id_director INT,
    año_estreno INT,
    genero VARCHAR(255),
    id_actor_principal INT,
    id_actor_secundario INT,
    pais_origen VARCHAR(255),
    FOREIGN KEY (id_director) REFERENCES Directores(id_directores),
    FOREIGN KEY (id_actor_principal) REFERENCES Actores(id_actores),
    FOREIGN KEY (id_actor_secundario) REFERENCES Actores(id_actores));

INSERT INTO Peliculas (id_pelicula, titulo, id_director, año_estreno, genero, id_actor_principal, id_actor_secundario, pais_origen) VALUES
(1, 'The Shawshank Redemption', 1, 1994, 'Drama', 1, 2, 'USA'),
(2, 'The Godfather', 2, 1972, 'Crime', 3, 4, 'USA'),
(3, 'The Dark Knight', 3, 2008, 'Action', 5, 6, 'USA'),
(4, 'Forrest Gump', 4, 1994, 'Drama', 7, 8, 'USA'),
(5, 'Pulp Fiction', 5, 1994, 'Crime', 9, 10, 'USA'),
(6, 'Inception', 3, 2010, 'Sci-Fi', 11, 12, 'USA'),
(7, 'Titanic', 6, 1997, 'Romance', 11, 13, 'USA'),
(8, 'The Matrix', 7, 1999, 'Sci-Fi', 14, 15, 'USA'),
(9, 'Avatar', 6, 2009, 'Sci-Fi', 16, 17, 'USA'),
(10, 'Gladiator', 8, 2000, 'Action', 18, 19, 'USA');

-- Ejercicio 2: Base de Datos de Coches

CREATE TABLE Propietarios (
    id_propietario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(255)
);

INSERT INTO Propietarios (nombre, direccion, telefono) VALUES
('Juan Pérez', 'Calle Principal 123', '123-456-7890'),
('María López', 'Avenida Libertad 456', '987-654-3210'),
('Pedro García', 'Calle Sur 789', '456-789-0123'),
('Ana Martínez', 'Calle Este 567', '321-654-0987'),
('Luisa Torres', 'Avenida Central 789', '789-012-3456'),
('Carlos Ruiz', 'Calle Norte 345', '210-987-6543'),
('Sofía Rodríguez', 'Avenida Oeste 890', '543-210-9876'),
('Javier Gómez', 'Calle Este 789', '012-345-6789'),
('Laura Sánchez', 'Avenida Libertad 678', '876-543-2109'),
('Diego Martín', 'Calle Principal 567', '234-567-8901');

CREATE TABLE Talleres (
    id_taller INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    direccion VARCHAR(255)
);

INSERT INTO Talleres (nombre, direccion) VALUES
('Taller Juan', 'Avenida Central 456'),
('Taller Martínez', 'Calle Independencia 789'),
('Taller Rodríguez', 'Avenida Norte 123'),
('Taller Sánchez', 'Avenida Oeste 567'),
('Taller Gómez', 'Calle Principal 234'),
('Taller López', 'Avenida Sur 890'),
('Taller Martín', 'Calle Este 678'),
('Taller Pérez', 'Avenida Norte 345'),
('Taller Hernández', 'Calle Sur 456'),
('Taller Ruiz', 'Avenida Central 678');

CREATE TABLE Coches (
    id_coche INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(255),
    modelo VARCHAR(255),
    año INT,
    id_propietario INT,
    id_taller INT,
    FOREIGN KEY (id_propietario) REFERENCES Propietarios(id_propietario),
    FOREIGN KEY (id_taller) REFERENCES Talleres(id_taller)
);

INSERT INTO Coches (marca, modelo, año, id_propietario, id_taller) VALUES
('Toyota', 'Corolla', 2018, 1, 1),
('Honda', 'Civic', 2017, 2, 2),
('Ford', 'Mustang', 2020, 3, 3),
('Chevrolet', 'Camaro', 2019, 4, 4),
('Nissan', 'Altima', 2016, 5, 5),
('BMW', 'X5', 2021, 6, 6),
('Mercedes-Benz', 'C-Class', 2019, 7, 7),
('Audi', 'A4', 2018, 8, 8),
('Hyundai', 'Elantra', 2017, 9, 9),
('Kia', 'Optima', 2019, 10, 10);

-- Ejercicio 3: Base de Datos de Equipos de Fútbol
CREATE TABLE Entrenadores (
    id_entrenador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

INSERT INTO Entrenadores (nombre) VALUES
('Carlo Ancelotti'),
('Ronald Koeman'),
('Jürgen Klopp'),
('Pep Guardiola'),
('Massimiliano Allegri'),
('Julian Nagelsmann'),
('Mauricio Pochettino'),
('Thomas Tuchel'),
('Diego Simeone'),
('Stefano Pioli');

CREATE TABLE Jugadores (
    id_jugador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

INSERT INTO Jugadores (nombre) VALUES
('Karim Benzema'),
('Luka Modric'),
('Sergio Ramos'),
('Lionel Messi'),
('Gerard Piqué'),
('Sergio Busquets'),
('Mohamed Salah'),
('Virgil van Dijk'),
('Sadio Mané'),
('Kevin De Bruyne'),
('Raheem Sterling'),
('Phil Foden'),
('Cristiano Ronaldo'),
('Paulo Dybala'),
('Giorgio Chiellini'),
('Robert Lewandowski'),
('Thomas Müller'),
('Manuel Neuer'),
('Kylian Mbappé'),
('Neymar Jr.'),
('Marco Verratti'),
('N\'Golo Kanté'),
('Mason Mount'),
('Christian Pulisic'),
('Luis Suárez'),
('João Félix'),
('Jan Oblak'),
('Zlatan Ibrahimović'),
('Gianluigi Donnarumma'),
('Franck Kessié');

CREATE TABLE Equipos (
    id_equipo INT PRIMARY KEY,
    nombre_equipo VARCHAR(255),
    estadio VARCHAR(255),
    ciudad VARCHAR(255),
    id_entrenador INT,
    jugador1 INT,
    jugador2 INT,
    jugador3 INT,
    FOREIGN KEY (id_entrenador) REFERENCES Entrenadores(id_entrenador),
    FOREIGN KEY (jugador1) REFERENCES Jugadores(id_jugador),
    FOREIGN KEY (jugador2) REFERENCES Jugadores(id_jugador),
    FOREIGN KEY (jugador3) REFERENCES Jugadores(id_jugador)
);

INSERT INTO Equipos (id_equipo, nombre_equipo, estadio, ciudad, id_entrenador, jugador1, jugador2, jugador3) VALUES
(1, 'Real Madrid', 'Santiago Bernabéu', 'Madrid', 1, 1, 2, 3),
(2, 'FC Barcelona', 'Camp Nou', 'Barcelona', 2, 4, 5, 6),
(3, 'Liverpool FC', 'Anfield', 'Liverpool', 3, 7, 8, 9),
(4, 'Manchester City', 'Etihad Stadium', 'Manchester', 4, 10, 11, 12),
(5, 'Juventus FC', 'Allianz Stadium', 'Turín', 5, 13, 14, 15),
(6, 'Bayern Munich', 'Allianz Arena', 'Múnich', 6, 16, 17, 18),
(7, 'Paris Saint-Germain', 'Parc des Princes', 'París', 7, 19, 20, 21),
(8, 'Chelsea FC', 'Stamford Bridge', 'Londres', 8, 22, 23, 24),
(9, 'Atlético de Madrid', 'Wanda Metropolitano', 'Madrid', 9, 25, 26, 27),
(10, 'AC Milan', 'San Siro', 'Milán', 10, 28, 29, 30);

-- Ejercicio 4: Base de Datos de Canciones
CREATE TABLE Artistas (
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

INSERT INTO Artistas (nombre) VALUES
('Queen'),
('Ed Sheeran'),
('Adele'),
('Luis Fonsi'),
('Michael Jackson'),
('Eagles'),
('Led Zeppelin');

CREATE TABLE Compositores (
    id_compositor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

INSERT INTO Compositores (nombre) VALUES
('Freddie Mercury'),
('Ed Sheeran'),
('Adele Adkins'),
('Luis Fonsi, Daddy Yankee'),
('Michael Jackson'),
('Don Felder, Glenn Frey, Don Henley'),
('Jimmy Page, Robert Plant'),
('Ed Sheeran, Amy Wadge'),
('Rod Temperton');

CREATE TABLE Canciones (
    id_cancion INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    album VARCHAR(255),
    año_lanzamiento INT,
    genero VARCHAR(255),
    duracion TIME,
    id_artista INT,
    id_compositor INT,
    FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista),
    FOREIGN KEY (id_compositor) REFERENCES Compositores(id_compositor)
);

INSERT INTO Canciones (titulo, album, año_lanzamiento, genero, duracion, id_artista, id_compositor) VALUES
('Bohemian Rhapsody', 'A Night at the Opera', 1975, 'Rock', '00:05:55', 1, 1),
('Shape of You', '÷', 2017, 'Pop', '00:03:53', 2, 2),
('Rolling in the Deep', '21', 2010, 'Pop', '00:03:48', 3, 3),
('Despacito', 'Vida', 2017, 'Pop', '00:03:48', 4, 4),
('Billie Jean', 'Thriller', 1982, 'Pop', '00:04:54', 5, 5),
('Hotel California', 'Hotel California', 1976, 'Rock', '00:06:30', 6, 6),
('Stairway to Heaven', 'Led Zeppelin IV', 1971, 'Rock', '00:08:02', 7, 7),
('Thinking Out Loud', '×', 2014, 'Pop', '00:04:41', 2, 8),
('Shape of You', '÷ (Divide)', 2017, 'Pop', '00:03:54', 2, 2),
('Thriller', 'Thriller', 1982, 'Pop', '00:05:57', 5, 9);

CREATE TABLE PropietariosAnimales (
    id_propietario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    direccion VARCHAR(255)
);

INSERT INTO PropietariosAnimales (nombre, direccion) VALUES
('Ana Martínez', 'Calle Principal 123'),
('Luisa Rodríguez', 'Calle Libertad 456'),
('Carlos Sánchez', 'Avenida Norte 789'),
('Laura Pérez', 'Calle Oeste 567'),
('Diego Gómez', 'Calle Principal 234'),
('María López', 'Avenida Sur 890'),
('Javier Ruiz', 'Calle Este 678'),
('Sofía Martín', 'Avenida Norte 345'),
('Pablo Hernández', 'Calle Oeste 678'),
('Lucía Rodríguez', 'Calle Libertad 890');

CREATE TABLE Veterinarios (
    id_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    direccion VARCHAR(255)
);

INSERT INTO Veterinarios (nombre, direccion) VALUES
('Dr. Pérez', 'Avenida Central 456'),
('Dr. Gómez', 'Avenida Sur 789'),
('Dra. López', 'Calle Este 123'),
('Dr. Martínez', 'Avenida Central 890'),
('Dra. Rodríguez', 'Avenida Libertad 678'),
('Dr. Hernández', 'Calle Norte 345'),
('Dra. Sánchez', 'Avenida Oeste 456');

CREATE TABLE Animales (
    id_animal INT PRIMARY KEY,
    nombre VARCHAR(255),
    especie VARCHAR(255),
    edad INT,
    id_propietario INT,
    id_veterinario INT,
    FOREIGN KEY (id_propietario) REFERENCES Propietarios(id_propietario),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinarios(id_veterinario)
);

INSERT INTO Animales (id_animal, nombre, especie, edad, id_propietario, id_veterinario) VALUES
(1, 'Max', 'Perro', 5, 1, 1),
(2, 'Whiskers', 'Gato', 3, 2, 2),
(3, 'Buddy', 'Perro', 7, 3, 3),
(4, 'Oliver', 'Gato', 2, 4, 4),
(5, 'Luna', 'Perro', 4, 5, 5),
(6, 'Simba', 'Gato', 1, 6, 6),
(7, 'Charlie', 'Perro', 6, 7, 7),
(8, 'Milo', 'Gato', 5, 8, 1),
(9, 'Bella', 'Perro', 3, 9, 2),
(10, 'Oreo', 'Gato', 2, 10, 4);
