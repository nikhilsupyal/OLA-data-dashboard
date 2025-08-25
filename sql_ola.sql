create database ola;
use ola;
create database ola;
use ola;
select count(Date) from booking;

-- 1).............find the successfull booking ....................
create view sucessfull_booking as
select * from booking
where Booking_Status= 'Success';

-- 2) .................find the average ride distance for each ride distance ..........................
create view  average_distance_by_vehicleytype as
select Vehicle_Type,avg(Ride_Distance) from booking 
group by Vehicle_Type;

-- (3 .............find the rides that canceled by customer.................
create view canceled_by_customer as
select count(Booking_Status) from booking
where booking_Status='Canceled by Customer';

-- 4)............ find the top 5 customer who booked ola many times......................... 
create view top_5_ola_customer as
select Customer_ID, count(Booking_ID)as total_rides from booking
group by Customer_ID
order by total_rides desc
limit 5;
-- 5) ...get the number of rides cancelled by drivers due to personal and car related issue.........
create view drive_cancel_by_driver as
select count(*),Canceled_Rides_by_Driver from booking
where  Canceled_Rides_by_Driver ='personal & car related issue';

-- 6) ..........find the maximum and minimum drivers rating for sedan ratings..............
create view max_min_driver_rating as
select max(Driver_Ratings),min(Driver_Ratings) from booking
where Vehicle_Type= 'Prime Sedan';

-- 7) ...............retrive all rides where all payments was made using upi...................
create view payment_by_UPI as
select * from booking
where Payment_Method='UPI';

-- 8)............. find the average customer rating per vehicle type .........................
create view avg_customer_rating_per_vehicle as
select Vehicle_type,avg(Customer_Rating) from booking
group by Vehicle_Type;

-- 9)calculate the total booking of rides completed sucessfully
create view booking_value_success as
select sum(Booking_Value) from booking
where Booking_Status='Success';
-- 10)list all incomplete rides along with the reason
create view incomplite_rides_reason as
select Booking_ID,Incomplete_Rides_Reason from booking
where Incomplete_Rides='Yes'



