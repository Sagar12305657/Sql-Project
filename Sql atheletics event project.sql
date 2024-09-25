CREATE DATABASE ATHLETICS EVENTSS;

USE ATHLETICS EVENTSS;


 SELECT * FROM ATHELETICS EVENTSS;
 
 ~ Showing all the coloumns inside the table name athletics eventss
 
 
 SELECT team, COUNT(Medal) AS Total_Medals
 FROM ATHLETICS_EVENTSS 
 WHERE Medal IS NOT NULL
 GROUP BY team 
 ORDER BY total_Medals DESC 
 LIMIT 10;
 
 
 ~ This query will show the top 10 teams that have won the most medals. It helps identify which countries or teams are the most successful in athletics 
 
 
 
 
 SELECT Age, COUNT(MEDAL) AS Medal_count
 FROM ATHLETICS_EVENTSS
 WHERE Medal IS NOT NULL
 GROUP BY AGE 
 ORDER BY Medal_Count DESC 
 LIMIT 5;
 
 ~ Identifies the most common ages at which athletes win medals, providing insight into the age range at which athletes peak.
 
 
 
 
 
 
 SELECT Sport, AVG(Height) AS Average _Height
 FROM ATHLETICS_EVENTSS
 GROUP BY Sport
 ORDER BY Average_Height DESC;
 
 ~ This query will show the average height of athletes for each sport. It can provide insights into the physical requirements of different sports.
 
 
 
 
 SELECT City, COUNT(Games) AS Total_Games 
 FROM ATHELETICS_EVENTSS
 GROUP BY City
 ORDER BY Total_Games DESC
 LIMIT 5;
 
 ~ Identifies the cities that have hosted the most olympic or athletic games, which can reveal major hubs for athletic events.
 
 
 
 
 
 SELECT YEAR, COUNT(Medal) AS Medal_Count
 FROM ATHLETICS_EVENTSS
 WHERE Medal IS NOT NULL
 GROUP BY YEAR
 ORDER BY YEAR ASC;
 
 ~ Helps to see how many medals were awarded each year, which can reflect changes in the number of events or participants in the athletic games.
 
 
 
 
 SELECT Year, Season, COUNT(DISTINCT Event) AS Event_Count
 FROM ATHLETICS_EVENTSS
 GROUP BY Year, Season
 ORDER BY Year, Season;
 
 ~ This query will show how many events were held in each year for both the summer and winter seasons, revealing the growth or decline of events over time.
 
 
 
 
 SELECT Sex, COUNT(DISTINCT ID) AS Count_athletes
 FROM ATHLETICS_EVENTSS
 GROUP BY Sex;
 
 ~ The query groups athletes by gender and counts how many distinct ahletes are male or female.
 
 
 
 
 SELECT Name, Age, Team
 FROM ATHLETICS_EVENTSS
 ORDER BY Age DESC
 LIMIT 5;
 
 ~ This query retrieves the top 5 oldest athletes from the dataset, displaying their names, ages, and teams.
 
 
 
 
 SELECT Name, Age, Event 
 FROM ATHLETICS_EVENTSS
 WHERE Medal = "Gold"
 ORDER BY Age ASC
 LIMIT 1;
 
 ~ This retrives the youngest athletes who won a Gold medal, showing their name, age, and event.