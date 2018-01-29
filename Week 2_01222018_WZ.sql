-- What are the top ten province that were tasted the most?
select province,count(*) as 'total' from wine_wz group by province order by total desc limit 10;
-- What are the top 20 provinces and varieties that were tasted the most?
select province,variety,count(*) as 'total' from wine_wz group by province,variety order by total desc limit 20;
-- What is the Avg Points for Cabernet Sauvignon per Country?
select country,avg(points) as 'average' from wine_wz where variety='Cabernet Sauvignon' group by country order by average desc;
-- What is the top 10 countries  with points > 90
select country,count(*) as 'total' from wine_wz where points>90 group by country order by total desc limit 10;
-- Count top 15 Best Rated Wine by Country and province with point > 90
select country,province,count(*) as 'total' from wine_wz where points>90 group by country,province order by count(*) desc limit 15;