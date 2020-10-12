
-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT DISTINCT(CITY)
FROM STATION
WHERE UPPER(LEFT(CITY, 1)) IN ("A", "E", "I", "O", "U")

SELECT DISTINCT(CITY)
FROM STATION
WHERE UPPER(RIGHT(CITY, 1)) IN ("A", "E", "I", "O", "U")
