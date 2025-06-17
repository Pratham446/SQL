select current_date(),current_time(),current_timestamp(),current_user();

alter table data add column date_time int(20);
insert into data (id,EMAIL,admission_date,name,new_age,date_time) values(30, 'userr@gmail.com', '2021-04-27', 'rahul', '21',current_timestamp());
select * from data;
ALTER TABLE data
ADD COLUMN date_time DATETIME;
select * from data;

