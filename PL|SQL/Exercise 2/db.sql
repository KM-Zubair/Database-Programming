SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;


-- 1. An anonymous block to retrieve the doctor’s ID and name 

ACCEPT pt_id PROMPT 'Enter Patient ID: '

DECLARE 
    v_doc_id PATIENT.doc_id%TYPE;
    v_doc_name DOCTOR.doc_name%TYPE;
    
BEGIN
    SELECT doc_id, doctor.doc_name
    INTO v_doc_id, v_doc_name
    FROM PATIENT
    INNER JOIN DOCTOR using (doc_id)
    WHERE pt_id = '&pt_id';
    DBMS_OUTPUT.PUT_LINE(v_doc_id || ' ' || v_doc_name);
   
END;



-- 2. Inserting a new doctor into the DOCTOR table

DECLARE
    v_doc_id DOCTOR.doc_id%TYPE;
    v_doc_name DOCTOR.doc_name%TYPE; 
    v_datehired DOCTOR.datehired%TYPE;
    v_salpermon DOCTOR.salpermon%TYPE; 
    v_area DOCTOR.area%TYPE; 
    v_supervisor_id DOCTOR.supervisor_id%TYPE; 
    v_annual_bonus DOCTOR.annual_bonus%TYPE;
BEGIN
  INSERT INTO DOCTOR(doc_id, doc_name, datehired, salpermon, area, supervisor_id, annual_bonus)
     VALUES(134, 'Harvey', SYSDATE ,14000, 'Neurology', 65, 3100);
END;

    -- Verifying the insertion
    select * from DOCTOR;



-- 3. Updating the salary of all doctors in the Pediatrics by 1000


    -- Checking the current Salary of Pediatrics Doctors
    select * from doctor 
    where area = 'Pediatrics';


DECLARE 
   v_area DOCTOR.area%TYPE;  
BEGIN
    -- Updating the Salary by 1000
    UPDATE doctor
    set salpermon= salpermon +1000
    where area='Pediatrics';
    dbms_output.put_line ('The table updated:');
END;
 
    -- Verifying that Salary has been Updated   
    select * from doctor 
    where area = 'Pediatrics';
    
    
    
-- 4. Deleting all the patients for Doctors in Family Practice

DECLARE
    v_doc_id Patient.doc_id%TYPE;
BEGIN
    DELETE from patient 
    where doc_id = 
    (select doc_id from doctor where area = 'Family Practice');

END;

-- Verifying that Patients have been deleted
    SELECT * from patient 
    where doc_id = 
    (select doc_id from doctor where area = 'Family Practice');


-- rollback;

 

