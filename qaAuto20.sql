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

ALTER TABLE cars MODIFY mileage FLOAT NOT NULL;
ALTER TABLE cars MODIFY initialMileage FLOAT NOT NULL;	

ALTER TABLE car_models ADD FOREIGN KEY (carBrandId) REFERENCES car_brands(id);
ALTER TABLE cars ADD FOREIGN KEY (userId) REFERENCES users(id);
ALTER TABLE cars ADD FOREIGN KEY (carBrandId) REFERENCES car_brands(id);
ALTER TABLE cars ADD FOREIGN KEY (carModelId) REFERENCES car_models(id);

INSERT INTO car_brands (title) VALUES ('Toyota');
INSERT INTO car_brands (title) VALUES ('Honda');
INSERT INTO car_brands (title) VALUES ('Ford');
INSERT INTO car_brands (title) VALUES ('Chevrolet');
INSERT INTO car_brands (title) VALUES ('Nissan');

INSERT INTO car_models (carBrandId, title) VALUES (1, 'Camry');
INSERT INTO car_models (carBrandId, title) VALUES (1, 'Corolla');
INSERT INTO car_models (carBrandId, title) VALUES (2, 'Civic');
INSERT INTO car_models (carBrandId, title) VALUES (2, 'Accord');
INSERT INTO car_models (carBrandId, title) VALUES (3, 'Focus');

INSERT INTO users (firstName, lastName, email, password) VALUES ('John', 'Doe', 'john.doe@example.com', 'securepassword123');
INSERT INTO users (firstName, lastName, email, password) VALUES ('Jane', 'Smith', 'jane.smith@example.com', 'password456');
INSERT INTO users (firstName, lastName, email, password) VALUES ('Jim', 'Beam', 'jim.beam@example.com', 'password789');
INSERT INTO users (firstName, lastName, email, password) VALUES ('Jack', 'Daniels', 'jack.daniels@example.com', 'password101112');
INSERT INTO users (firstName, lastName, email, password) VALUES ('Jill', 'Valentine', 'jill.valentine@example.com', 'password131415');

INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES (1, 1, 1, 120000, 50000);
INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES (2, 1, 2, 85000, 30000);
INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES (3, 2, 3, 90000, 20000);
INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES (4, 2, 4, 60000, 10000);
INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES (5, 3, 5, 20000, 1000);

SELECT * FROM cars;