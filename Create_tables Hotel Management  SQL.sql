--Hotel
CREATE TABLE Hotel
(
hotel_id int CONSTRAINT hotel_id_pk PRIMARY KEY,
hotel_name varchar(25) CONSTRAINT hotel_name_nn NOT NULL,
hotel_address varchar(50) CONSTRAINT hotel_address_nn NOT NULL,
hotel_city varchar(30) CONSTRAINT hotel_city_nn NOT NULL,
hotel_state varchar(25) CONSTRAINT hotel_state_nn NOT NULL,
hotel_country varchar(25) CONSTRAINT hotel_country_nn NOT NULL,
)
--Facilities
CREATE TABLE Facilities
(
Facility_id int CONSTRAINT Facilities_id_pk PRIMARY KEY,
Facility_name varchar(25) CONSTRAINT Facilities_name_nn NOT NULL,
Facility_description varchar(25) CONSTRAINT Facilities_description_nn NOT NULL,
)
--HotelFacilities
CREATE TABLE HotelFacilities
(
HotelFacility_id int CONSTRAINT HotelFacility_id_pk PRIMARY KEY,
--(fk)Hotel
hotel_id int CONSTRAINT HotelFacility_idHotel_fk REFERENCES Hotel(hotel_id),
--(fk)Facilities
Facility_id int CONSTRAINT HotelFacility_idFacility_fk REFERENCES Facilities(Facility_id)
)

--Room
CREATE TABLE Room
(
room_id int CONSTRAINT room_id_pk PRIMARY KEY, 
room_number int CONSTRAINT room_number_uq UNIQUE,
room_type varchar(25) CONSTRAINT room_type_nn NOT NULL,
price_per_night int CONSTRAINT room_ppn_ck check (price_per_night > 0),
--(fk)Reservation
)

--Guest
CREATE TABLE Guest
(
guest_id int CONSTRAINT guest_id_pk PRIMARY KEY,
guest_name varchar(25) CONSTRAINT guest_name_nn NOT NULL,
guest_phone int CONSTRAINT guest_phone_uq UNIQUE,
guest_email varchar(50) CONSTRAINT guest_email_ck CHECK (guest_email LIKE '%.com'),
--(fk)Reservation
)
--Reservation
CREATE TABLE Reservation
(
reservation_id int CONSTRAINT reservation_id_pk PRIMARY KEY,
check_in_date date, 
check_out_date date,
--(fk)guest
guest_id int CONSTRAINT Reservation_idguest_fk REFERENCES Guest(guest_id),
--(fk)room
room_id int CONSTRAINT Reservation_idroom_fk REFERENCES Room(room_id)
)

--add column fk (Reservation) in room
ALTER TABLE Room
    ADD reservation_id INTEGER
	CONSTRAINT room_idreservation_fk FOREIGN KEY(reservation_id) REFERENCES Reservation(reservation_id);

--add column fk (Reservation) in Guest
ALTER TABLE Guest
    ADD reservation_id INTEGER
	CONSTRAINT guest_idreservation_fk FOREIGN KEY(reservation_id) REFERENCES Reservation(reservation_id);

--add column fk (hotel) in room
ALTER TABLE Room
ADD hotel_id int
CONSTRAINT room_hotel_fk FOREIGN KEY (hotel_id) REFERENCES Hotel (hotel_id);


--Delete column  in Guest
ALTER TABLE Guest DROP CONSTRAINT guest_phone_uq;

ALTER TABLE Guest DROP COLUMN guest_phone;

--add column  in Guest
ALTER TABLE Guest
ADD guest_phone VARCHAR(15) CONSTRAINT guest_phone_uq UNIQUE

--change leng of column Facility_description in TABLE Facilities
ALTER TABLE Facilities
ALTER COLUMN  Facility_description VARCHAR(105)

