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

-- 7. Clint requested a car dealer agent how many petrol cars will there be in 2020 ?

SELECT
    COUNT(*) AS total_petrol_car_in_2020
FROM
    `cars_dekho`
WHERE
    `year` = 2020 AND `fuel` = 'Petrol';

-- 8. The manager told the employee to give a print all the fuel cars ( petrol,diesel and cng ) come by all year.

SELECT
    `year`,
    `fuel`,
    COUNT(*) AS total_car
FROM
    `car_dekho`
WHERE
    `fuel` IN('Petrol', 'Diesel', 'Cng')
GROUP BY
    `year`,
    `fuel`
ORDER BY
    `year`
DESC;

-- 9. Manager said there were more than 100 cars in a given year, which year had more than 100 cars ?

SELECT
    `year`,
    COUNT(*) AS count
FROM
    `car_dekho`
GROUP BY
    `year`
HAVING
    COUNT(*) > 100
ORDER BY
    `year`
DESC;

-- 10. Manager said there were more than 100 cars in a given year, which year had less than 100 cars ?

SELECT
    `year`,
    COUNT(*) AS count
FROM
    `car_dekho`
GROUP BY
    `year`
HAVING
    COUNT(*) < 100
ORDER BY
    `year`
DESC;

-- 11. Manager said to the employee all cars count details between 2015 and 2023 we need a complite list.

SELECT
    COUNT(*) AS count
FROM
    `car_dekho`
WHERE
    `year` BETWEEN 2015 AND 2023;

-- 12. The manager said to the employee all cars details between 2015 and 2023 we need a complite list.

SELECT
    *
FROM
    `car_dekho`
WHERE
    `year` BETWEEN 2015 AND 2023;