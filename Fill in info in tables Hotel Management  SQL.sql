-- hotel
INSERT INTO Hotel(hotel_id,hotel_name,hotel_address,hotel_city,hotel_state,hotel_country)
VALUES 
      (1,'Bonjour',81,'baqa','haifa','isreal'),
	  (2,'Bonjour',41,'tel aviv','tel aviv','isreal'),
	  (3,'Bonjour',53,'arce','Haifa','isreal'),
	  (4,'Bonjour',91,'Hadera','haifa','isreal');

-- room
INSERT INTO Room(room_id ,room_number,room_type,price_per_night,reservation_id,hotel_id)
VALUES 
      (1,101,'Single',1000,null,2),
	  (2,102,'Double',2500,null,2),
	  (3,103,'Single',200,null,1),
	  (4,104,'Double',500,null,1),
	  (5,105,'Single',500,null,3),
	  (6,106,'Double',1000,null,3),
	  (7,107,'Single',500,null,4),
	  (8,108,'Double',500,null,4);

-- Reservation
INSERT INTO Reservation (reservation_id, check_in_date, check_out_date, guest_id, room_id)
VALUES 
      (1, '2023-08-23', '2023-09-01', NULL, 1),
	  (2, '2022-01-23', '2023-02-23', NULL, 3),
	  (3, '2021-04-23', '2023-04-30', NULL, 2),
	  (4, '2023-09-23', '2023-10-01', NULL, 2),
	  (5, '2023-08-23', '2023-09-01', NULL, 4),
	  (6, '2023-08-23', '2023-09-01', NULL, 3);

--Guest
INSERT INTO Guest (guest_id, guest_name, guest_phone, guest_email,reservation_id)
VALUES 
      (1, 'sleman', '0503820005','s2002ktawi@gmail.com',1 ),
	  (2, 'ahmad','0504306580' ,'ahmad@gmail.com',3 ),
	  (3, 'mhmd', '0524666580', 'mhmd342@hotmail.com', 2),
	  (4, 'emil', '0524879996', 'emil@hotmail.com', 5);

-- more Guest
INSERT INTO Guest (guest_id, guest_name, guest_phone, guest_email, reservation_id)
VALUES 
      (5, 'saed', '0529999542', 'saed@gmail.com', null)

-- Facilities
INSERT INTO Facilities (Facility_id, Facility_name, Facility_description)
VALUES 
      (1, 'Swimming Pool', 'An outdoor pool available for guests'),
      (2, 'Gym', 'A fully equipped fitness center'),
      (3, 'Bar', 'A bar offering a wide selection of drinks'),
      (4, 'Parking', 'Convenient parking facilities for guests');


INSERT INTO HotelFacilities (HotelFacility_id, hotel_id, Facility_id)
VALUES 
     (1,2,2),
	 (2,1,1),
	 (3,3,3),
	 (4,4,4),
	 (5,3,1),
	 (6,1,2);





