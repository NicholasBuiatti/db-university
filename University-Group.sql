1)  SELECT YEAR(students.enrolment_date) AS 'anno di iscrizione', COUNT(enrolment_date) AS 'numero di iscrizioni'
    FROM students
    GROUP BY YEAR(students.enrolment_date);

2)  SELECT teachers.office_address, COUNT(*) AS numero_insegnanti
    FROM teachers
    GROUP BY office_address;

3)  SELECT exam_student.exam_id AS 'Appello', AVG(vote) AS 'media voti' 
    FROM exam_student 
    GROUP BY exam_student.exam_id;

4)  SELECT departments.name AS ' Nome dipartimento', COUNT(degrees.name) AS 'Nome corso' 
    FROM `degrees`
    JOIN departments
    ON degrees.department_id = departments.id
    GROUP BY departments.name;