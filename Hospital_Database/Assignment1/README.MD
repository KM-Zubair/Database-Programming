Date: 21 October 2020
INFO 2103 
Assignment #1

The relational schema shown below is part of a hospital database. The primary and foreign keys are highlighted in bold.

Patient (patientNo, patName, patAddr, DOB)
	Ward (wardNo, wardName, wardType, noOfBeds)
	Admission (patientNo, wardNo, admissionDate)
	Drug (drugNo, drugName, costPerUnit)
Prescribed (patientNo, drugNo, unitsPerDay, startDate, finishDate)

Write SQL queries based on the hospital database given above: 


1.	Create the above tables together with its constraints.

2.	Insert some data into the tables to check that the tables created are correct. No limit on how many rows you want to add.

Insert Syntax:
insert into table_name
values (col1_value, col2_value, etc.);

3.	List all the patients’ details, alphabetically by name. 

IF YOU WANT SOME CHALLENGE
4.	List all the patients admitted today. (Join between Patient and Admission table)
