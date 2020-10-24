DROP TABLE Patient cascade constraints;
DROP TABLE Ward cascade constraints;
DROP TABLE Admission cascade constraints;
DROP TABLE Drug cascade constraints;
DROP TABLE Prescribed cascade constraints;

CREATE TABLE Patient (
    patientNo NUMBER PRIMARY KEY,
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
    patientNo NUMBER, 
    wardNo NUMBER, 
    admissionDate DATE NOT NULL,
    FOREIGN KEY (patientNo)REFERENCES Patient(patientNo),
    FOREIGN KEY (wardNo) REFERENCES Ward(wardNo),
    PRIMARY KEY (patientNo, admissionDate)
);

CREATE TABLE Drug (
    drugNo NUMBER PRIMARY KEY, 
    drugName VARCHAR2(50 CHAR) NOT NULL, 
    costPerUnit NUMBER
);

CREATE TABLE Prescribed (
    patientNo NUMBER,
    drugNo NUMBER,
    unitsPerDay NUMBER,
    startDate DATE,
    finishDate DATE,
    FOREIGN KEY (patientNo)REFERENCES Patient(patientNo),
    FOREIGN KEY (drugNo)REFERENCES Drug(drugNo),
    PRIMARY KEY (drugNo,startDate)
);


-- Inserting Data into Patient Table

INSERT INTO Patient VALUES(168, 'James', 'Seberang Perak', TO_DATE('14-MAR-97')
);

INSERT INTO Patient VALUES(331, 'Anderson', 'Kedah Alor', TO_DATE('06-MAR-48')
);

INSERT INTO Patient VALUES(313, 'James', 'Negeri Sembilan', TO_DATE('01-MAR-33')
);

INSERT INTO Patient VALUES(816, 'Smith', 'Pasir Mas Kelantan', TO_DATE('12-DEC-99')
);

INSERT INTO Patient VALUES(314, 'Porter', 'Petaling Jaya', TO_DATE('14-NOV-67')
);

INSERT INTO Patient VALUES(315, 'Saillez', 'Johor 81300', TO_DATE('09-SEP-55')
);

INSERT INTO Patient VALUES(719, 'Rogers', 'Kampung Bahru', TO_DATE('07-DEC-41')
);

INSERT INTO Patient VALUES(264, 'Walters', 'Petaling Jaya', TO_DATE('01-JAN-45')
);

INSERT INTO Patient VALUES(267, 'Westra', 'Wilayah Persekutuan', TO_DATE('12-JUL-57')
);

INSERT INTO Patient VALUES(103, 'Poole', 'Pasir Mas Kelantan', TO_DATE('13-MAY-02')
);

INSERT INTO Patient VALUES(108, 'Baily', 'Kampung Bahru', TO_DATE('25-DEC-77')
);

INSERT INTO Patient VALUES(943, 'Crow', 'Gerai Pasar Minggu', TO_DATE('16-OCT-49')
);

INSERT INTO Patient VALUES(847, 'Cochran', 'Kedah Alor', TO_DATE('03-MAR-48')
);

INSERT INTO Patient VALUES(163, 'Roach', 'Petaling Jaya', TO_DATE('08-SEP-75')
);

INSERT INTO Patient VALUES(504, 'Jackson', 'Kampung Bahru', TO_DATE('14-OCT-43')
);

INSERT INTO Patient VALUES(809, 'Kowalczyk', 'Pasir Mas Kelantan', TO_DATE('12-NOV-51')
);

INSERT INTO Patient VALUES(703, 'Davis', 'Gerai Pasar Minggu', TO_DATE('17-JUL-02')
);

INSERT INTO Patient VALUES(307, 'Jones', 'Wilayah Persekutuan', TO_DATE('17-JUL-02')
);

INSERT INTO Patient VALUES(439, 'Wright', 'Kampung Bahru', TO_DATE('23-APR-73')
);

INSERT INTO Patient VALUES(696, 'Vanderchuck', 'Petaling Jaya', TO_DATE('08-AUG-68')
);

INSERT INTO Patient VALUES(966, 'Mcginnis', 'Pasir Mas Kelantan', TO_DATE('03-MAY-59')
);

INSERT INTO Patient VALUES(669, 'Sakic', 'Gerai Pasar Minggu', TO_DATE('16-SEP-76')
);


-- Inserting data in Ward Table

INSERT INTO Ward VALUES(1, 'Neurology ', ' emergency ', 2
);

INSERT INTO Ward VALUES(2, 'Cancer center ', ' surgery ', 3);

INSERT INTO Ward VALUES(3, 'Burn Unit ', ' emergency ', 4);

INSERT INTO Ward VALUES(4, 'Corona Care ', ' surgery ', 3);

INSERT INTO Ward VALUES(5, 'Cardiology ', ' trauma care ', 2);

INSERT INTO Ward VALUES(6, 'Neurology ', ' emergency ', 2);

INSERT INTO Ward VALUES(7, 'Cardiology ', ' trauma care ', 2);

INSERT INTO Ward VALUES(8, 'Corona Care ', ' surgery ', 3);

INSERT INTO Ward VALUES(9, 'Burn Unit ', ' emergency ', 4);

INSERT INTO Ward VALUES(10, 'Neurology ', ' emergency ', 2);

INSERT INTO Ward VALUES(11, 'Corona Care ', ' surgery ', 3);

INSERT INTO Ward VALUES(12, 'Cardiology ', ' trauma care ', 2);

INSERT INTO Ward VALUES(13, 'Cancer center ', ' surgery ', 3);

INSERT INTO Ward VALUES(14, 'Burn Unit ', ' emergency ', 4);

INSERT INTO Ward VALUES(15, 'Cardiology ', ' trauma care ', 2);

INSERT INTO Ward VALUES(16, 'Cancer center ', ' surgery ', 3);

INSERT INTO Ward VALUES(17, 'Corona Care ', ' surgery ', 3);

INSERT INTO Ward VALUES(18, 'Neurology ', ' emergency ', 2);

INSERT INTO Ward VALUES(19, 'Cancer center ', ' surgery ', 3);

INSERT INTO Ward VALUES(20, 'Burn Unit ', ' emergency ', 4);

INSERT INTO Ward VALUES(21, 'Cardiology ', ' trauma care ', 2);

INSERT INTO Ward VALUES(22, 'Obstetrics ', ' surgery ', 3);


-- Inserting data into Admission Table


INSERT INTO Admission VALUES(168, 1, TO_DATE('30-OCT-20')
);

INSERT INTO Admission VALUES(331, 2, TO_DATE('26-OCT-20')
);

INSERT INTO Admission VALUES(313, 3, TO_DATE('25-OCT-20')
);

INSERT INTO Admission VALUES(816, 4, TO_DATE('26-OCT-20')
);

INSERT INTO Admission VALUES(314, 5, TO_DATE('27-OCT-20')
);

INSERT INTO Admission VALUES(315, 6, TO_DATE('29-OCT-20')
);

INSERT INTO Admission VALUES(719, 7, TO_DATE('28-OCT-19')
);

INSERT INTO Admission VALUES(264, 8, TO_DATE('29-OCT-20')
);

INSERT INTO Admission VALUES(267, 9, TO_DATE('26-OCT-20')
);

INSERT INTO Admission VALUES(103, 10, TO_DATE('30-OCT-20')
);

INSERT INTO Admission VALUES(108, 11, TO_DATE('25-OCT-20')
);

INSERT INTO Admission VALUES(943, 12, TO_DATE('26-OCT-20')
);

INSERT INTO Admission VALUES(847, 13, TO_DATE('25-OCT-20')
);

INSERT INTO Admission VALUES(163, 14, TO_DATE('27-OCT-20')
);

INSERT INTO Admission VALUES(504, 15, TO_DATE('28-OCT-20')
);

INSERT INTO Admission VALUES(809, 16, TO_DATE('29-OCT-20')
);

INSERT INTO Admission VALUES(703, 17, TO_DATE('26-OCT-20')
);

INSERT INTO Admission VALUES(307, 18, TO_DATE('30-OCT-20')
);

INSERT INTO Admission VALUES(439, 19, TO_DATE('31-OCT-20')
);

INSERT INTO Admission VALUES(696, 20, TO_DATE('28-OCT-20')
);

INSERT INTO Admission VALUES(966, 21, TO_DATE('29-OCT-20')
);

INSERT INTO Admission VALUES(669, 22, TO_DATE('27-OCT-20')
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

INSERT INTO Prescribed VALUES(168, 16, 150, TO_DATE('14-MAR-97'), TO_DATE('24-SEP-20')
);

INSERT INTO Prescribed VALUES(331, 18, 300, TO_DATE('06-MAR-48'), TO_DATE('26-SEP-20')
);

INSERT INTO Prescribed VALUES(313, 20, 450, TO_DATE('01-MAR-33'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES(816, 22, 78, TO_DATE('12-DEC-99'), TO_DATE('26-SEP-20')
);

INSERT INTO Prescribed VALUES(314, 24, 600, TO_DATE('14-NOV-67'), TO_DATE('27-SEP-20')
);

INSERT INTO Prescribed VALUES(315, 26, 780, TO_DATE('09-SEP-55'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES(719, 28, 470, TO_DATE('07-DEC-41'), TO_DATE('28-SEP-19')
);

INSERT INTO Prescribed VALUES(264, 30, 581, TO_DATE('01-JAN-45'), TO_DATE('29-SEP-20')
);

INSERT INTO Prescribed VALUES(267, 32, 966, TO_DATE('12-JUL-57'), TO_DATE('26-SEP-20')
);

INSERT INTO Prescribed VALUES(103, 34, 1005, TO_DATE('13-MAY-02'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES(108, 36, 1540, TO_DATE('25-DEC-77'), TO_DATE('25-SEP-20')
);

INSERT INTO Prescribed VALUES(943, 38, 674, TO_DATE('16-SEP-49'), TO_DATE('30-SEP-20')
);




-- Listing the details of Patient Table alphabetically by name
SELECT patientNo, patName, patAddr,DOB
FROM Patient
ORDER BY patName;

-- Listing patients admitted today
SELECT  Patient.patName,  Admission.admissionDate
FROM Patient 
INNER JOIN admission ON Patient.patientNo = Admission.patientNo
    AND admissionDate LIKE (SELECT CURRENT_DATE FROM DUAL)
;


