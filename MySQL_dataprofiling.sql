use fraud_detection;
-- total rows 
select count(*) as total_rows from creditcard_data;
-- fetching column names and datatype
describe creditcard_data;
-- checking for null values
select 
sum(case when Time is null then 1 else 0 end)as null_Time,
sum(case when Amount is null then 1 else 0 end)as null_Amount,
sum(case when Class is null then 1 else 0 end)as null_Class
from creditcard_data;


-- generating unique values in class column
select class, count(*) as count from creditcard_data group by class;

-- summary stats for key colums aka time class and amount
-- amount
select
min(amount) as min_amount,
max(amount)  as max_amount,
avg(amount)  as avg_amount
from creditcard_data;

-- time
select
min(time) as min_time,
max(time)  as max_time,
avg(time)  as avg_time
from creditcard_data;

