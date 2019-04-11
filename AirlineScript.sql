DROP TABLE PASSENGER cascade constraints;
DROP TABLE AIRPLANE_TYPE cascade constraints;
DROP TABLE LUGGAGE cascade constraints;
DROP TABLE AIRPORT cascade constraints;
DROP TABLE EMPLOYEE cascade constraints;
DROP TABLE FLIGHT cascade constraints;
DROP TABLE TICKET cascade constraints;
DROP TABLE FLIGHT_ROUTE cascade constraints;

CREATE TABLE PASSENGER
(PASSENGER_ID NUMBER(15),
LAST_NAME VARCHAR(15),
FIRST_NAME VARCHAR(15),
STREET VARCHAR(15),
CITY VARCHAR(15),
STATE VARCHAR(5),
POSTAL_CODE VARCHAR(15),
EMAIL VARCHAR(30),
COUNTRY CHAR(25),
    CONSTRAINT PASSENGER_PASSENGER_ID_PK PRIMARY KEY (PASSENGER_ID));

CREATE TABLE AIRPLANE_TYPE
(AIRPLANE_ID NUMBER(6),
AIRPLANE_MODEL VARCHAR(50),
MAX_SEATS VARCHAR(3),
    CONSTRAINT AIRPLANE_TYPE_AIRPLANE_ID_PK PRIMARY KEY(AIRPLANE_ID));

CREATE TABLE LUGGAGE
(LUGGAGE_ID NUMBER(15),
PASSENGER_ID NUMBER(15),
WEIGHT CHAR(20),
     CONSTRAINT LUGGAGE_LUGGAGE_ID_PK PRIMARY KEY (LUGGAGE_ID),
     CONSTRAINT LUGGAGE_PASSENGER_ID_FK FOREIGN KEY (PASSENGER_ID) REFERENCES PASSENGER (PASSENGER_ID));

CREATE TABLE AIRPORT
(AIRPORT_ID NUMBER(15),
CITY VARCHAR(30),
STATE VARCHAR(20),
AIRPORT_NAME CHAR(500),
    CONSTRAINT AIRPORT_AIRPORT_ID_PK PRIMARY KEY (AIRPORT_ID));

CREATE TABLE EMPLOYEE
(EMPLOYEE_ID NUMBER(10),
LAST_NAME VARCHAR(15),
FIRST_NAME VARCHAR(15),
POSITION VARCHAR(15),
PHONE_NUMBER VARCHAR(15),
AIRPORT_ID NUMBER(4),
    CONSTRAINT EMPLOYEE_EMPLOYEE_ID_PK PRIMARY KEY (EMPLOYEE_ID),
    CONSTRAINT EMPLOYEE_AIRPORT_ID_FK FOREIGN KEY (AIRPORT_ID) REFERENCES AIRPORT (AIRPORT_ID));

CREATE TABLE FLIGHT
(FLIGHT_ID NUMBER(15),
DEPARTURE_DATE DATE,
ARRIVAL_DATE DATE,
AIRPLANE_ID NUMBER(15),
FLIGHT_DESTINATION VARCHAR(50),
    CONSTRAINT FLIGHT_AIRPLANE_ID_FK FOREIGN KEY (AIRPLANE_ID) REFERENCES AIRPLANE_TYPE (AIRPLANE_ID),
    CONSTRAINT FLIGHT_FLIGHT_ID_PK PRIMARY KEY (FLIGHT_ID));

CREATE TABLE TICKET
(TICKET_ID NUMBER(15),
PASSENGER_ID NUMBER(15),
FLIGHT_ID NUMBER(15),
SEAT_NUMBER CHAR(6),
    CONSTRAINT TICKET_PASSENGER_ID_FK FOREIGN KEY (PASSENGER_ID) REFERENCES PASSENGER (PASSENGER_ID),
    CONSTRAINT TICKET_FLIGHT_ID_FK FOREIGN KEY (FLIGHT_ID) REFERENCES FLIGHT (FLIGHT_ID),
    CONSTRAINT TICKET_SEAT_NUMBER_uk UNIQUE (FLIGHT_ID, SEAT_NUMBER),
    CONSTRAINT TICKET_TICKET_ID_PK PRIMARY KEY (TICKET_ID));

CREATE TABLE FLIGHT_ROUTE
(ROUTE_ID NUMBER(5),
FLIGHT_ID NUMBER(3),
    CONSTRAINT FLIGHT_ROUTE_FLIGHT_ID_FK FOREIGN KEY (FLIGHT_ID) REFERENCES FLIGHT (FLIGHT_ID),
    CONSTRAINT FLIGHT_ROUTE_ROUTE_ID_PK PRIMARY KEY (ROUTE_ID));


--- inserting records into PASSENGER
INSERT INTO PASSENGER  VALUES
  (1, 'Jeffryes', 'Desiree', '21421 Pleasure Avenue', 'San Diego', 'California', '92186', 'djeffryes0@telegraph.co.uk', 'United States');
INSERT INTO PASSENGER  VALUES
  (2, 'Krolik', 'Ray', '5 Thackeray Pass', 'Houston', 'Texas', '77212', 'rkrolik1@amazon.co.uk', 'United States');
INSERT INTO PASSENGER  VALUES
  (3, 'Korneichuk', 'Wat', '653 Butternut Road', 'El Paso', 'Texas', '79968', 'wkorneichuk2@vkontakte.ru', 'United States');
INSERT INTO PASSENGER  VALUES
  (4, 'Anespie', 'Tammie', '5526 Buhler Junction', 'Jackson', 'Mississippi', '39216', 'tanespie3@theguardian.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (5, 'Braniff', 'Gabbi', '40389 Sundown Drive', 'Richmond', 'Virginia', '23220', 'gbraniff4@cornell.edu', 'United States');
INSERT INTO PASSENGER  VALUES
  (6, 'Broun', 'Thom', '9197 Crest Line Terrace', 'Seattle', 'Washington', '98121', 'tbroun5@bloglines.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (7, 'Garford', 'Guilbert', '97180 Lien Park', 'Houston', 'Texas', '77020', 'ggarford6@admin.ch', 'United States');
INSERT INTO PASSENGER  VALUES
  (8, 'Leipelt', 'Merci', '12277 2nd Street', 'Montgomery', 'Alabama', '36109', 'mleipelt7@fema.gov', 'United States');
INSERT INTO PASSENGER  VALUES
  (9, 'Killingbeck', 'Ariana', '5 Mallard Point', 'Los Angeles', 'California', '90081', 'akillingbeck8@feedburner.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (10, 'Connew', 'Tomasine', '10708 Vermont Avenue', 'Athens', 'Georgia', '30610', 'tconnew9@bbc.co.uk', 'United States');
INSERT INTO PASSENGER  VALUES
  (11, 'Milton-White', 'Lindsy', '5 Northland Park', 'Melbourne', 'Florida', '32941', 'lmiltonwhitea@fastcompany.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (12, 'Simonsson', 'Moses', '40 Maple Terrace', 'Washington', 'District of Columbia', '20337', 'msimonssonb@apple.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (13, 'Maton', 'Eulalie', '3588 Becker Point', 'San Diego', 'California', '92191', 'ematonc@slate.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (14, 'Slixby', 'Aloise', '06 Pearson Court', 'Greensboro', 'North Carolina', '27455', 'aslixbyd@unesco.org', 'United States');
INSERT INTO PASSENGER  VALUES
  (15, 'Davydzenko', 'Kamila', '823 Prentice Junction', 'San Jose', 'California', '95155', 'kdavydzenkoe@latimes.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (16, 'Rebbeck', 'Ches', '6301 Farwell Alley', 'Lawrenceville', 'Georgia', '30045', 'crebbeckf@forbes.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (17, 'Jiles', 'Marin', '7288 Maryland Crossing', 'Danbury', 'Connecticut', '06816', 'mjilesg@cocolog-nifty.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (18, 'Dearnley', 'Goldarina', '0828 Melody Place', 'Baton Rouge', 'Louisiana', '70820', 'gdearnleyh@drupal.org', 'United States');
INSERT INTO PASSENGER  VALUES
  (19, 'Surtees', 'Therese', '2 Steensland Street', 'Tampa', 'Florida', '33605', 'tsurteesi@tumblr.com', 'United States');
INSERT INTO PASSENGER  VALUES
  (20, 'Whapple', 'Rossie', '8 Ridgeway Crossing', 'New Orleans', 'Louisiana', '70124', 'rwhapplej@github.io', 'United States');

  --- inserting records into AIRPLANE_TYPE
  INSERT INTO AIRPLANE_TYPE  VALUES
    (1, 'B-747', '50');
  INSERT INTO AIRPLANE_TYPE  VALUES
    (2, 'B-737', '25');
  INSERT INTO AIRPLANE_TYPE  VALUES
    (3, 'B-737', '50');
  INSERT INTO AIRPLANE_TYPE  VALUES
    (4, 'B-737', '50');
  INSERT INTO AIRPLANE_TYPE  VALUES
    (5, 'B-737', '25');
  INSERT INTO AIRPLANE_TYPE  VALUES
    (6, 'B-767', '50');

--- inserting records into LUGGAGE
  INSERT INTO LUGGAGE  VALUES
    (1, 20, '50 lbs');
  INSERT INTO LUGGAGE  VALUES
    (2, 9, '31 lbs');
  INSERT INTO LUGGAGE  VALUES
    (3, 15, '50 lbs');
  INSERT INTO LUGGAGE  VALUES
    (4, 10, '48 lbs');
  INSERT INTO LUGGAGE  VALUES
    (5, 11, '45 lbs');
  INSERT INTO LUGGAGE  VALUES
    (6, 1, '50 lbs');
  INSERT INTO LUGGAGE  VALUES
    (7, 9, '59 lbs');
  INSERT INTO LUGGAGE  VALUES
    (8, 16, '64 lbs');
  INSERT INTO LUGGAGE  VALUES
    (9, 7, '42 lbs');
  INSERT INTO LUGGAGE  VALUES
    (10, 8, '46 lbs');
  INSERT INTO LUGGAGE  VALUES
    (11, 18, '49 lbs');
  INSERT INTO LUGGAGE  VALUES
    (12, 13, '56 lbs');
  INSERT INTO LUGGAGE  VALUES
    (13, 2, '50 lbs');
  INSERT INTO LUGGAGE  VALUES
    (14, 4, '39 lbs');
  INSERT INTO LUGGAGE  VALUES
    (15, 3, '65 lbs');

--- inserting records into AIRPORT
  INSERT INTO AIRPORT  VALUES
    (1, 'New York', 'New York', 'John F. Kennedy International');
  INSERT INTO AIRPORT  VALUES
    (2, 'Sarasota', 'Florida', 'Sarasota–Bradenton International ');
  INSERT INTO AIRPORT  VALUES
    (3, 'Birmingham', 'Alabama', 'Birmingham-Shuttlesworth International');
  INSERT INTO AIRPORT  VALUES
    (4, 'San Diego', 'California', 'San Diego International');
  INSERT INTO AIRPORT  VALUES
    (5, 'Reno', 'Nevada', 'Reno–Tahoe International');

--- inserting records into EMPLOYEE
  INSERT INTO EMPLOYEE  VALUES
    (1, 'Morrallee', 'Damon', 'Ticket Checker', '802-695-5322', 2);
  INSERT INTO EMPLOYEE  VALUES
    (2, 'Fitchew', 'Gib', 'Ticket Checker', '201-719-5339', 3);
  INSERT INTO EMPLOYEE  VALUES
    (3, 'Pettigree', 'Ernestine', 'Ticket Checker', '303-603-9063', 2);
  INSERT INTO EMPLOYEE  VALUES
    (4, 'Gay', 'Felisha', 'Stewardress', '359-914-3833', 2);
  INSERT INTO EMPLOYEE  VALUES
    (5, 'Coopman', 'Jennette', 'Stewardress', '647-835-2874', 4);
  INSERT INTO EMPLOYEE  VALUES
    (6, 'Kubas', 'Cordell', 'Ticket Checker', '107-566-5600', 5);
  INSERT INTO EMPLOYEE  VALUES
    (7, 'Chandler', 'Shandy', 'Stewardress', '423-260-0058', 5);
  INSERT INTO EMPLOYEE  VALUES
    (8, 'Argabrite', 'Julieta', 'Pilot', '631-660-6076', 1);
  INSERT INTO EMPLOYEE  VALUES
    (9, 'Mereweather', 'Theodore', 'Ticket Checker', '420-989-7516', 3);
  INSERT INTO EMPLOYEE  VALUES
    (10, 'Jedrasik', 'Nollie', 'Pilot', '830-641-9315', 5);
  INSERT INTO EMPLOYEE  VALUES
    (11, 'Segge', 'Kelsey', 'Ticket Checker', '543-397-8916', 4);
  INSERT INTO EMPLOYEE  VALUES
    (12, 'Wickmann', 'Katrine', 'Stewardress', '241-552-9983', 5);
  INSERT INTO EMPLOYEE  VALUES
    (13, 'Spurden', 'Daron', 'Pilot', '756-393-1841', 4);
  INSERT INTO EMPLOYEE  VALUES
    (14, 'Covert', 'Brice', 'Security', '919-787-9376', 2);
  INSERT INTO EMPLOYEE  VALUES
    (15, 'Maldin', 'Teodora', 'Security', '205-589-0970', 2);
