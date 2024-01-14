 
-- Update guest_id in Reservation table	  
UPDATE Reservation
SET guest_id = 4
WHERE reservation_id = 1;


UPDATE Reservation
SET guest_id = 1
WHERE reservation_id = 2;


UPDATE Reservation
SET guest_id = 3
WHERE reservation_id = 5;

UPDATE Reservation
SET guest_id = 2
WHERE reservation_id = 6;

UPDATE Reservation
SET check_in_date = null , check_out_date = null
WHERE reservation_id = 3;

UPDATE Reservation
SET check_in_date = null , check_out_date = null
WHERE reservation_id = 4;


-- Update reservation_id in Room table
UPDATE Room
SET Room.reservation_id = Reservation.reservation_id
FROM Reservation
WHERE Room.room_id = Reservation.room_id;


--update id 8 
UPDATE Room
SET price_per_night = 2500
where room_id = 8