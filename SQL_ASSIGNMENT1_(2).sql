CREATE TABLE CONTACT_TABLE1(
ID INT NOT NULL,
EMAIL VARCHAR(50),
FNAME VARCHAR(30),
LNAME VARCHAR(30),
COMPANY VARCHAR(50),
ACTIVE_FLAG INT,
OPT_OUT INT);
INSERT INTO CONTACT_TABLE1 VALUES
(123,'a@a.com','KIAN','SETH','ABC',1,1),
(133,'b@b.com','NEHA','SETH','ABC',1,0),
(123,'a@a.com','PURU','MALIK','CDF',0,0),
(342,'d@d.com','SID','MAAN','TEG',1,0);
SELECT * FROM CONTACT_TABLE1;

-- select all columns from the contact table where the active flag is 1
SELECT * FROM CONTACT_TABLE1 WHERE ACTIVE_FLAG=1;

-- Deactivate contacts who are opted out 
UPDATE CONTACT_TABLE1 SET ACTIVE_FLAG=0 WHERE OPT_OUT=1;
SELECT * FROM CONTACT_TABLE1;

-- Delete all the contacts who have the company name as ‘ABC’
DELETE FROM CONTACT_TABLE1 WHERE COMPANY='ABC';
SELECT * FROM CONTACT_TABLE1;

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO CONTACT_TABLE1(ID,EMAIL,FNAME,LNAME,COMPANY,ACTIVE_FLAG,OPT_OUT)
VALUES(658,'mili@gmail.com','mili','mili','DGH',1,1);
SELECT * FROM CONTACT_TABLE1;

-- Pull out the unique values of the company column
SELECT DISTINCT COMPANY FROM CONTACT_TABLE1; 

-- Update name “mili” to “niti”.
UPDATE CONTACT_TABLE1 SET FNAME='NITHI' WHERE FNAME='MILI';
SELECT * FROM CONTACT_TABLE1;
