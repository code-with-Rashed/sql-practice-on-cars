-- 1. Read cars data.

SELECT * FROM `car_dekho`;

-- 2. To get a count of total records.

SELECT count(*) AS total_record FROM `car_dekho`;

-- 3. The manager asked the employee how many cars will be available in 2023.

SELECT
    COUNT(*) AS total_car_available_in_2023
FROM
    `car_dekho`
WHERE
    `year` = 2023;

-- 4. The manager asked the employee how many cars will be available in 2020 , 2021 , 2022.

SELECT
    COUNT(*) AS total_car
FROM
    `car_dekho`
WHERE
    `year` IN(2020, 2021, 2022);

-- 5. Clint asked me to print the total of all cars by year. I don't see all the details.

SELECT
    `year`,
    COUNT(*) AS year_wise_total_car
FROM
    `car_dekho`
GROUP BY
    `year`
ORDER BY
    `year`
DESC;

-- 6. Clint asked to car dealer agent how many diesel cars will there be in 2020.

SELECT
    COUNT(*) total_diesel_car_in_2020
FROM
    `car_dekho`
WHERE
    `fuel` = 'Diesel' AND `year` = 2020;