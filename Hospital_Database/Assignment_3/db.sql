DROP TABLE Patients cascade constraints;
DROP TABLE Ward cascade constraints;
DROP TABLE Admission cascade constraints;
DROP TABLE Drug cascade constraints;
DROP TABLE Prescribed cascade constraints;

CREATE TABLE Patients (
    PatientNo VARCHAR2(50 CHAR) PRIMARY KEY,
    patName VARCHAR2(50 CHAR) NOT NULL,
    patAddr VARCHAR2(50 CHAR) NOT NULL,
    DOB DATE
);

CREATE TABLE Ward (
    wardNo NUMBER PRIMARY KEY, 
    wardName VARCHAR2(50 CHAR) NOT NULL, 
    wardType VARCHAR2(50 CHAR), 
    noOfBeds NUMBER
);

CREATE TABLE Admission (
    PatientNo VARCHAR2(50 CHAR) , 
    wardNo NUMBER, 
    admissionDate DATE,
    dischargeDate DATE,  
    PRIMARY KEY (PatientNo, admissionDate, wardNo) 
);

CREATE TABLE Drug (
    drugNo NUMBER PRIMARY KEY, 
    drugName VARCHAR2(50 CHAR) NOT NULL, 
    costPerUnit NUMBER
);

CREATE TABLE Prescribed (
    PatientNo VARCHAR2(50 CHAR),
    drugNo NUMBER,
    unitsPerDay NUMBER,
    startDate DATE,
    finishDate DATE,   
    FOREIGN KEY (drugNo)REFERENCES Drug(drugNo),
    PRIMARY KEY (PatientNo, drugNo, startDate)
);


-- Inserting Data into Patients Table

INSERT INTO Patients VALUES('168', 'James', 'Seberang Perak', TO_DATE('14-MAR-1997','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('331', 'Anderson', 'Kedah Alor', TO_DATE('06-MAR-1948','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('313', 'James', 'Negeri Sembilan', TO_DATE('01-MAR-1933','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('816', 'Smith', 'Pasir Mas Kelantan', TO_DATE('12-DEC-1999','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('314', 'Porter', 'Petaling Jaya', TO_DATE('14-NOV-1967','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('315', 'Saillez', 'Johor 81300', TO_DATE('09-SEP-1955','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('719', 'Rogers', 'Kampung Bahru', TO_DATE('07-DEC-1941','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('113', 'Thomas Shelby', 'Birmingham', TO_DATE('12-NOV-1991','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('264', 'Walter White', 'Petaling Jaya', TO_DATE('01-JAN-1945','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('267', 'Westra', 'Wilayah Persekutuan', TO_DATE('12-JUL-1957','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('103', 'Poole', 'Pasir Mas Kelantan', TO_DATE('13-MAY-2002','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('108', 'Baily', 'Kampung Bahru', TO_DATE('25-DEC-1977','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('943', 'John Snow', 'Winterfell', TO_DATE('16-OCT-1949','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('1001', 'Sherlock Holmes', '22b Baker Street', TO_DATE('10-JAN-1990','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('847', 'Cochran', 'Kedah Alor', TO_DATE('03-MAR-1948','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('163', 'Roach', 'Petaling Jaya', TO_DATE('08-SEP-1975','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('504', 'Jackson', 'Kampung Bahru', TO_DATE('14-OCT-1943','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('809', 'Kowalczyk', 'Pasir Mas Kelantan', TO_DATE('12-NOV-1951','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('703', 'Davis', 'Gerai Pasar Minggu', TO_DATE('17-JUL-2002','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('770', 'Pablo Escobar', 'Mexico', TO_DATE('22-JAN-1910','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('307', 'Jones', 'Wilayah Persekutuan', TO_DATE('17-JUL-2002','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('439', 'Wright', 'Kampung Bahru', TO_DATE('23-APR-1973','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('696', 'Vanderchuck', 'Petaling Jaya', TO_DATE('08-AUG-1968','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('966', 'Mcginnis', 'Pasir Mas Kelantan', TO_DATE('03-MAY-1959','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('669', 'Sakic', 'Gerai Pasar Minggu', TO_DATE('16-SEP-1976','DD-MM-YYYY')
);

INSERT INTO Patients VALUES('670', 'Kalam', 'Pasar Minggu', TO_DATE('27-OCT-1980','DD-MM-YYYY')
);

-- Inserting data in Ward Table

INSERT INTO Ward VALUES(1, 'Neurology ', 'emergency ', 2
);

INSERT INTO Ward VALUES(2, 'Cancer center ', 'surgery ', 3);

INSERT INTO Ward VALUES(3, 'Burn Unit ', 'emergency ', 4);

INSERT INTO Ward VALUES(4, 'Corona Care ', 'surgery ', 3);

INSERT INTO Ward VALUES(5, 'Cardiology ', 'trauma care ', 2);

INSERT INTO Ward VALUES(6, 'Neurology ', 'emergency ', 2);

INSERT INTO Ward VALUES(7, 'Cardiology ', 'trauma care ', 2);

INSERT INTO Ward VALUES(8, 'Corona Care ', 'surgery ', 3);

INSERT INTO Ward VALUES(9, 'Burn Unit ', 'emergency ', 4);

INSERT INTO Ward VALUES(10, 'Neurology ', 'emergency ', 2);

INSERT INTO Ward VALUES(11, 'Corona Care ', 'surgery ', 3);

INSERT INTO Ward VALUES(12, 'Cardiology ', 'trauma care ', 2);

INSERT INTO Ward VALUES(13, 'Cancer center ', 'surgery ', 3);

INSERT INTO Ward VALUES(14, 'Burn Unit ', 'emergency ', 4);

INSERT INTO Ward VALUES(15, 'Cardiology ', 'trauma care ', 2);

INSERT INTO Ward VALUES(16, 'Cancer center ', 'surgery ', 3);

INSERT INTO Ward VALUES(17, 'Corona Care ', 'surgery ', 3);

INSERT INTO Ward VALUES(18, 'Neurology ', 'emergency ', 2);

INSERT INTO Ward VALUES(19, 'Cancer center ', 'surgery ', 3);

INSERT INTO Ward VALUES(20, 'Burn Unit ', 'emergency ', 4);

INSERT INTO Ward VALUES(21, 'Cardiology ', 'trauma care ', 2);

INSERT INTO Ward VALUES(22, 'Obstetrics ', 'surgery ', 3);

INSERT INTO Ward VALUES(300, 'Obstetrics ', 'surgery ', 7);

-- Inserting data into Admission Table


INSERT INTO Admission VALUES('168', 1, TO_DATE('30-OCT-20'), NULL 
);

INSERT INTO Admission VALUES('331', 2, TO_DATE('26-OCT-20'), TO_DATE('30-OCT-20')
);

INSERT INTO Admission VALUES('313', 3, TO_DATE('25-OCT-20'), NULL
);

INSERT INTO Admission VALUES('816', 4, TO_DATE('26-OCT-20'), TO_DATE('04-NOV-20')
);

INSERT INTO Admission VALUES('314', 5, TO_DATE('27-OCT-20'), TO_DATE('31-OCT-20')
);

INSERT INTO Admission VALUES('315', 6, TO_DATE('29-OCT-20'), NULL
);

INSERT INTO Admission VALUES('719', 7, TO_DATE('28-OCT-19'), TO_DATE('04-NOV-20')
);

INSERT INTO Admission VALUES('264', 8, TO_DATE('29-OCT-20'), NULL
);

INSERT INTO Admission VALUES('267', 9, TO_DATE('26-OCT-20'), TO_DATE('05-NOV-20')
);

INSERT INTO Admission VALUES('103', 10, TO_DATE('30-OCT-20'), TO_DATE('07-NOV-20')
);

INSERT INTO Admission VALUES('108', 11, TO_DATE('25-OCT-20'), TO_DATE('29-OCT-20')
);

INSERT INTO Admission VALUES('943', 12, TO_DATE('26-OCT-20'), TO_DATE('30-OCT-20')
);

INSERT INTO Admission VALUES('847', 13, TO_DATE('25-OCT-20'), TO_DATE('28-OCT-20')
);

INSERT INTO Admission VALUES('163', 14, TO_DATE('27-OCT-20'), TO_DATE('03-NOV-20')
);

INSERT INTO Admission VALUES('504', 15, TO_DATE('28-OCT-20'), NULL
);

INSERT INTO Admission VALUES('809', 16, TO_DATE('29-OCT-20'), TO_DATE('04-NOV-20')
);

INSERT INTO Admission VALUES('703', 17, TO_DATE('26-OCT-20'), NULL
);

INSERT INTO Admission VALUES('307', 18, TO_DATE('30-OCT-20'), TO_DATE('07-NOV-20')
);

INSERT INTO Admission VALUES('439', 19, TO_DATE('31-OCT-20'), TO_DATE('02-NOV-20')
);

INSERT INTO Admission VALUES('696', 20, TO_DATE('28-OCT-20'), TO_DATE('04-NOV-20')
);

INSERT INTO Admission VALUES('966', 21, TO_DATE('29-OCT-20'), NULL
);

INSERT INTO Admission VALUES('669', 22, TO_DATE('27-OCT-20'), TO_DATE('30-OCT-20')
);

-- Inserting into DRUG Table

INSERT INTO DRUG VALUES(16, ' Acetaminophen', 5.5 );
INSERT INTO DRUG VALUES(18, ' Vicodin', 6.5 ); 
INSERT INTO DRUG VALUES(20, ' Lisinopril', 5 );
INSERT INTO DRUG VALUES(22, ' Synthroid', 8 );
INSERT INTO DRUG VALUES(24, ' Azithromycinn', 9.5 );
INSERT INTO DRUG VALUES(26, ' Metformin', 15 );
INSERT INTO DRUG VALUES(28, ' Lipitor', 51 );
INSERT INTO DRUG VALUES(30, ' Levothyroxine', 6 );
INSERT INTO DRUG VALUES(32, ' Esomeprazole', 12 );
INSERT INTO DRUG VALUES(34, ' Lisdexamfetamine', 18.4 );
INSERT INTO DRUG VALUES(36, ' Pregabalin', 10.2 );
INSERT INTO DRUG VALUES(38, ' Cefepime', 16.9 );

-- Insert into Prescribed Table

INSERT INTO Prescribed VALUES('168', 16, 150, TO_DATE('14-MAR-97'), TO_DATE('24-SEP-20')
);

INSERT INTO Prescribed VALUES('331', 18, 300, TO_DATE('06-MAR-48'), TO_DATE('26-SEP-20')
);

INSERT INTO Prescribed VALUES('313', 20, 450, TO_DATE('01-MAR-33'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES('816', 22, 78, TO_DATE('12-DEC-99'), TO_DATE('26-SEP-20')
);

INSERT INTO Prescribed VALUES('113', 18, 38, TO_DATE('13-NOV-99'), TO_DATE('22-OCT-20')
);

INSERT INTO Prescribed VALUES('314', 24, 600, TO_DATE('14-NOV-67'), TO_DATE('27-SEP-20')
);

INSERT INTO Prescribed VALUES('315', 26, 780, TO_DATE('09-SEP-55'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES('719', 28, 470, TO_DATE('07-DEC-41'), TO_DATE('28-SEP-19')
);

INSERT INTO Prescribed VALUES('264', 30, 581, TO_DATE('01-JAN-45'), TO_DATE('29-SEP-20')
);

INSERT INTO Prescribed VALUES('267', 32, 966, TO_DATE('12-JUL-57'), TO_DATE('26-SEP-20')
);

INSERT INTO Prescribed VALUES('103', 34, 1005, TO_DATE('13-MAY-02'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES('770', 24, 306, TO_DATE('15-MAY-02'), TO_DATE('15-SEP-20')
);

INSERT INTO Prescribed VALUES('1001', 18, 104, TO_DATE('15-MAR-02'), TO_DATE('27-OCT-20')
);

INSERT INTO Prescribed VALUES('108', 36, 1540, TO_DATE('25-DEC-77'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES('943', 38, 674, TO_DATE('16-SEP-49'), TO_DATE('30-SEP-20')
);



-- Listing the Patients and their prescribed Medicines 
SELECT Patients.patName, Drug.drugName
FROM Prescribed
INNER JOIN Drug ON Prescribed.drugNo = Drug.drugNo
    INNER JOIN Patients ON Prescribed.PatientNo = Patients.PatientNo
    ORDER BY Patients.patname;
    
-- Inserting a new Patient Record
INSERT INTO Patients VALUES('P020', 'Abu Bakar', 'KICT IIUM KL', TO_DATE('20-DEC-2000', 'DD-MM-YYYY'));

-- Inserting a new Ward Record
INSERT INTO Ward VALUES(400, 'Jasmine', 'Standard Ward Class A', 20
);

-- Registering the new Patient P020 to existing ward no. 300
INSERT INTO Admission(PatientNo, wardNo, admissiondate, dischargeDate) 
VALUES ('P020', 300, TO_DATE('07-NOV-20'), NULL);


--	Changing the ward for Patient id P020
UPDATE Admission
SET wardNo = 400
WHERE PatientNo = 'P020';

--  Removing Patients who are not admitted to any wards
DELETE FROM Patients
WHERE PatientNo IN
    (
    SELECT Patients.PatientNo
    from Patients
    LEFT JOIN Admission ON Patients.PatientNo = Admission.PatientNo
    where wardNo is NULL
    );


-- For Testing
-- Select * from Patients;
-- Select * from Ward;
-- Select * from Admission;
-- Select * from Drug;
-- Select * from Prescribed;
