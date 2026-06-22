SELECT COUNT(*) AS total_listings
FROM listings;

SELECT COUNT(*) AS total_reviews
FROM reviews;

SELECT COUNT(*) AS total_calendar_records
FROM calendar;


SELECT
    room_type,
    COUNT(*) AS total_listings
FROM listings
GROUP BY room_type
ORDER BY total_listings DESC;

SELECT
    room_type,
    COUNT(*) AS total_listings
FROM listings
GROUP BY room_type
ORDER BY total_listings DESC;



SELECT
    room_type,
    ROUND(AVG(price),2) AS average_price
FROM listings
GROUP BY room_type
ORDER BY average_price DESC;


SELECT
    neighbourhood_cleansed,
    ROUND(AVG(price),2) AS average_price
FROM listings
GROUP BY neighbourhood_cleansed
ORDER BY average_price DESC
LIMIT 10;


SELECT
    neighbourhood_cleansed,
    COUNT(*) AS total_listings
FROM listings
GROUP BY neighbourhood_cleansed
ORDER BY total_listings DESC
LIMIT 10;


SELECT
    host_is_superhost,
    COUNT(*) AS total_hosts
FROM listings
GROUP BY host_is_superhost;


SELECT
    room_type,
    ROUND(AVG(review_scores_rating),2) AS average_rating
FROM listings
GROUP BY room_type
ORDER BY average_rating DESC;


SELECT
    id,
    name,
    number_of_reviews
FROM listings
ORDER BY number_of_reviews DESC
LIMIT 10;


SELECT
    ROUND(AVG(availability_365),2) AS average_days_available,
    MAX(availability_365) AS maximum_available,
    MIN(availability_365) AS minimum_available
FROM listings;


SELECT
    property_type,
    ROUND(AVG(price),2) AS average_price
FROM listings
GROUP BY property_type
ORDER BY average_price DESC
LIMIT 15;