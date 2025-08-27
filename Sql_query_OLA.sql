create database ola;
use ola;
select count(Date) from booking;

-- 1).............find the successfull booking ....................

select * from booking
where Booking_Status= 'Success';

-- 2) .................find the average ride distance for each ride distance ..........................
select Vehicle_Type,avg(Ride_Distance) from booking 
group by Vehicle_Type;

-- (3 .............find the rides that canceled by customer.................
select count(Booking_Status) from booking
where booking_Status='Canceled by Customer';

-- 4)............ find the top 5 customer who booked ola many times......................... 

select Customer_ID, count(Booking_ID)as total_rides from booking
group by Customer_ID
order by total_rides desc
limit 5;
-- 5) ...get the number of rides cancelled by drivers due to personal and car related issue.........

select count(*),Canceled_Rides_by_Driver from booking
where  Canceled_Rides_by_Driver ='personal & car related issue';

-- 6) ..........find the maximum and minimum drivers rating for sedan ratings..............
select max(Driver_Ratings),min(Driver_Ratings) from booking
where Vehicle_Type= 'Prime Sedan';

-- 7) ...............retrive all rides where all payments was made using upi...................

select * from booking
where Payment_Method='UPI';

-- 8)............. find the average customer rating per vehicle type .........................

select Vehicle_type,avg(Customer_Rating) from booking
group by Vehicle_Type;

-- 9)calculate the total booking of rides completed sucessfully

select sum(Booking_Value) from booking
where Booking_Status='Success';

-- 10)list all incomplete rides along with the reason

select Booking_ID,Incomplete_Rides_Reason from booking
where Incomplete_Rides='Yes'

