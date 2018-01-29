drop table if exists CountyCrossWalk_Zillow_wz;
create table CountyCrossWalk_Zillow_wz(
CountyName varchar(500),
StateName varchar(500),
StateFIPS varchar(500),
CountyFIPS varchar(500),
MetroName_Zillow varchar(500),
CBSAName varchar(500),
CountyRegionID_Zillow varchar(500),
MetroRegionID_Zillow varchar(500),
FIPS varchar(500),
CBSACode varchar(500)
);

load data infile '/datasets/group3/CountyCrossWalk_Zillow.csv' into table CountyCrossWalk_Zillow_wz fields terminated by ','optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;

select * from CountyCrossWalk_Zillow_wz limit 2;
