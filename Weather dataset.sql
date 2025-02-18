drop database if exists weather_data;
create database weather_data;
use weather_data;
select * from weather_data;
CREATE TABLE weather_data (
    RecordID INT PRIMARY KEY,
    City VARCHAR(50),
    Date DATE,
    Temperature DECIMAL(5,2),
    Humidity INT,
    WindSpeed DECIMAL(5,2),
    Precipitation DECIMAL(5,2),
    WeatherCondition VARCHAR(20)
);

INSERT INTO weather_data (RecordID, City, Date, Temperature, Humidity, WindSpeed, Precipitation, WeatherCondition)
VALUES 
(1, 'New York', '2024-02-10', 5.2, 80, 15, 2.1, 'Rainy'),
(2, 'Los Angeles', '2024-02-10', 18.4, 60, 10, 0.0, 'Clear'),
(3, 'Chicago', '2024-02-10', -3.1, 85, 25, 5.4, 'Snowy'),
(4, 'Miami', '2024-02-10', 25.0, 75, 12, 0.3, 'Cloudy'),
(5, 'London', '2024-02-10', 8.5, 90, 20, 1.8, 'Rainy');


#Retrieve Weather Data for a Specific City
SELECT * FROM weather_data WHERE City = 'New York';

#Find the Average Temperature for Each City
SELECT City, AVG(Temperature) AS Avg_Temperature  FROM weather_data  GROUP BY City;

#Identify the Hottest and Coldest City
SELECT City, Temperature  FROM weather_data  ORDER BY Temperature DESC  LIMIT 1;  -- Hottest City  

SELECT City, Temperature  FROM weather_data  ORDER BY Temperature ASC  LIMIT 1;  -- Coldest City 

#Find the Cities with the Highest Humidity
SELECT City, Humidity FROM weather_data ORDER BY Humidity DESC LIMIT 3;

#Calculate Total Rainfall for Each City
SELECT City, SUM(Precipitation) AS Total_Rainfall  FROM weather_data  GROUP BY City;

#List All Days with Heavy Rain (More than 5mm Precipitation)
SELECT * FROM weather_data WHERE Precipitation > 5 ORDER BY Precipitation DESC;

#Find Cities with Extreme Weather Conditions
SELECT City, COUNT(*) AS Extreme_Days FROM weather_data WHERE Temperature < 0 OR Temperature > 40 OR WindSpeed > 50 GROUP BY City ORDER BY Extreme_Days DESC;

#Calculate Monthly Average Temperature for Each City
SELECT City, MONTH(Date) AS Month, AVG(Temperature) AS Avg_Temperature FROM weather_data GROUP BY City, Month ORDER BY City, Month;

#Find the Day with the Highest Wind SpeedSELECT City, Date, WindSpeed 
SELECT City, Date, WindSpeed FROM weather_data ORDER BY WindSpeed DESC LIMIT 1;

#List All Weather Conditions and Their Frequency
SELECT WeatherCondition, COUNT(*) AS Occurrences FROM weather_data GROUP BY WeatherCondition ORDER BY Occurrences DESC;

#Rank Cities by Average Humidity
SELECT City, AVG(Humidity) AS Avg_Humidity FROM weather_data GROUP BY City ORDER BY Avg_Humidity DESC;

#Compare Rainfall Between Two Cities
SELECT City, SUM(Precipitation) AS Total_Rainfall FROM weather_data WHERE City IN ('New York', 'London') GROUP BY City;

#Get the Top 5 Warmest Cities Based on Average Temperature
SELECT City, AVG(Temperature) AS Avg_Temperature FROM weather_data GROUP BY City ORDER BY Avg_Temperature DESC LIMIT 5;










 


