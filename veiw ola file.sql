-- 1)find the successfull booking
select * from sucessfull_booking;

-- 2) find the average ride distance for each ride distance 
select * from average_distance_by_vehicleytype;
  
-- (3 find the rides that canceled by customer
select * from canceled_by_customer;

-- 4) find the top 5 customer who book  ola many times 
select * from top_5_ola_customer;

-- 5)get the number of rides cancelled by drivers due to personal and car related issue
select * from drive_cancel_by_driver;

-- 6) find the maximum and minimum drivers rating for sedan ratings
select *  from max_min_driver_rating ;

-- 7)retrive all rides where all payments was made using upi
select * from payment_by_UPI;

-- 8) find the average customer rating per vehicle type 
select * from avg_customer_rating_per_vehicle;

-- 9) calculate the total booking of rides completed sucessfully
select * from booking_value_success;

-- 10) list all incomplete rides along with the reason
select * from incomplite_rides_reason ;
