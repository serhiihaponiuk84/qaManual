SELECT name, lastName FROM user_profiles WHERE name LIKE '%am%';
SELECT name, lastName FROM user_profiles WHERE name LIKE '%am%' OR lastName LIKE '%am%';

SELECT MAX(mileage) AS max_mileage FROM cars
JOIN car_models ON cars.carModelId = car_models.id
JOIN car_brands ON car_models.carBrandId = car_brands.id
WHERE car_brands.title = 'Audi';

SELECT car_brands.id AS car_brand_id, car_brands.title AS car_brand, COUNT(car_models.id) AS count_models FROM car_models
JOIN car_brands ON car_models.carBrandId = car_brands.id
WHERE car_brands.title IN ('Audi', 'BMW')
GROUP BY car_brands.id;

SELECT car_models.title AS car_model, car_brands.title AS car_brand, COUNT(DISTINCT cars.userId) AS user_count FROM cars
JOIN car_models ON cars.carModelId = car_models.id
JOIN car_brands ON car_models.carBrandId = car_brands.id
GROUP BY car_models.title, car_brands.title;

SELECT DISTINCT name, lastName FROM user_profiles
JOIN cars ON user_profiles.id = cars.userId;