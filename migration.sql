DROP TABLE IF EXISTS aircrafts;
--DROP TABLE IF EXISTS aircraft;
DROP TABLE IF EXISTS origins;
--DROP TABLE IF EXISTS origin;

CREATE TABLE origins (
    id serial PRIMARY KEY,
    country text
);

CREATE TABLE aircrafts (
    aircraft_id serial PRIMARY KEY,
    callsign text,
    name text,
    role text,
    speed decimal,
    crew integer,
    country_id integer REFERENCES origins(id)
);



INSERT INTO origins (country) VALUES('u.s.a'),('russia'),('france'),('germany'),('great britain'),('switzerland');

INSERT INTO aircrafts (callsign,name,role,speed,crew,country_id) VALUES ('SR-71','Blackbird','recon',3.2,2,1),('TU-95','Bear','bomber',0.7,8,2),('fastboi','Concorde','passanger jet',1.7,3,3),('ME-262','swallow','fighter',0.69,1,4),('verticalboi','Harrier','fighter',0.95,1,5),('solarboi','Solor Impulse 2','prototype',0.11,1,6);