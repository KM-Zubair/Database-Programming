Note: PL/SQL can be executed in SQL*Plus or SQL Developer or Oracle Live SQL.

1.	Write an anonymous block to retrieve the doctor’s ID and name which in charge of certain patient. Allow the user to enter the patient’s ID.

2.	Write an anonymous PL/SQL block that will insert a new doctor into the DOCTOR table. Verify that insert has been done successfully by issuing a select * from doctor.

3.	Write an anonymous PL/SQL block that will update the salary of all doctors in the Pediatrics area by 1000 (Note: Current salary + 1000). Verify that the salary has been updated by issuing a select * from doctor where area = 'Pediatrics'. You may have to run the select statement twice to check the data before and after the update.

4.	Write an anonymous PL/SQL block that will delete all patients for doctors that works in the Family Practice area. Verify that patients have been deleted accordingly. Then do a select * from patients where doc_id = (select doc_id from doctor where area = 'Family Practice'. You should get no rows.
