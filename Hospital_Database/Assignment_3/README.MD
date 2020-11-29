
The relational schema shown below is part of a hospital database. The primary and foreign keys are highlighted in bold.

Patients (patientNo, patName, patAddr, DOB)
	Ward (wardNo, wardName, wardType, noOfBeds)
	Admission (patientNo, wardNo, admissionDate, dischargeDate)
	Drug (drugNo, drugName, costPerUnit)
Prescribed (patientNo, drugNo, unitsPerDay, startDate, finishDate)

Write SQL queries and reuse data used in Assignment 1

1.	List the patients and their prescribed medicines (Note: Use Join)

2.	Insert a new patient record. Patient id is 'P020', Patient Name is 'Abu Bakar', His address is 'KICT IIUM KL' and DOB is '20 Dec 2000'.  

3.	Insert a new ward record. Ward id is '400', Ward Name is 'Jasmine' , Ward Type is 'Standard Ward Class A', No of beds is '20'.

4.	Register the new patient P020 to an existing ward that you have (Note: Admission table) 

5.	Change the ward for patient id P020. His new ward no is 400. 

6.	Remove patients who are not admitted to any wards.

