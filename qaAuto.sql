CREATE TABLE car_brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    carBrandId INT,
    carModelId INT,
    mileage INT NOT NULL,
    initialMileage INT NOT NULL
);
