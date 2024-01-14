--Q1
--How many hotels are there in the database?
--כמה מלונות יש בבסיס הנתונים? 
select count(*) as hotels
from hotel


--Q2
--What is the price of staying in room number 105?
--מהו מחיר השהייה בחדר מספר 105?
SELECT price_per_night 
FROM Room 
WHERE room_number = 105;


--Q3
--What are the details of the order that has order number 2
--מהם פרטי ההזמנה שיש לה מספר הזמנה 2
SELECT * 
FROM Reservation 
WHERE reservation_id = 2;

--Q4
-- What are the details of the guest who has the phone number 0503820005
-- מהם פרטי האורח שיש לו מספר הטלפון 0503820005
 SELECT * 
 FROM Guest 
 WHERE guest_phone = '0503820005';

 --Q5
 --What are the facilities available at Hotel 1?
 --מהם המתקנים הזמינים במלון מספר 1? 
 SELECT f.Facility_name 
 FROM Facilities f
 INNER JOIN HotelFacilities h ON f.Facility_id = h.Facility_id
 WHERE h.hotel_id = 1;

 --Q6
 --What are the invitations related to guest number 3?
 --מהם ההזמנות הקשורות לאורח מספר 3?
 SELECT *
 FROM Reservation
 WHERE guest_id = 3;


 --Q7
 --What are the prices in all the rooms in hotel number 3
--מהן המחירים לשהייה בכל החדרים במלון מספר 3
SELECT room_number, price_per_night 
FROM Room
WHERE hotel_id = 3;

--Q8
--How many rooms are available in hotel number 2
--כמה חדרים זמינים יש במלון מספר 2
SELECT COUNT(*) 
FROM Room 
WHERE hotel_id = 2 AND reservation_id IS NULL;

--Q9
--Which guests made reservations and in which places?
--אילו אורחים ביצעו הזמנות ובאילו מקומות?
SELECT Guest.guest_name, Hotel.hotel_city
FROM Guest 
LEFT JOIN Reservation ON Guest.guest_id = Reservation.guest_id
LEFT JOIN Room ON Reservation.room_id = Room.room_id
LEFT JOIN Hotel ON Room.hotel_id = Hotel.hotel_id;

--Q10
--What are the facilities available in each hotel and in which city?
--מהם המתקנים הזמינים בכל מלון ו איזי עיר?
SELECT h.hotel_name,h.hotel_city, f.Facility_name
FROM Hotel h
LEFT JOIN HotelFacilities hs ON h.hotel_id = hs.hotel_id
LEFT JOIN Facilities f ON hs.Facility_id = f.Facility_id;

