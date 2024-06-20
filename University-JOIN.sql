1)  SELECT students.name, students.surname, degrees.name 
    FROM `students` 
    INNER JOIN `degrees` 
    ON students.degree_id = degrees.id 
    WHERE degrees.name = 'Corso di Laurea in Economia';

2)  SELECT departments.name, degrees.name, degrees.level
    FROM `departments`
    JOIN `degrees`
    ON degrees.department_id = departments.id
    WHERE degrees.level = 'Magistrale'

3)  SELECT courses.name, teachers.name, teachers.surname 
    FROM `courses` 
    JOIN course_teacher 
    ON courses.id = course_id 
    JOIN teachers 
    ON teachers.id = teacher_id 
    WHERE teachers.name = 'Fulvio' AND teachers.surname = 'Amato';

4)  SELECT students.name, students.surname, degrees.name, departments.name 
    FROM `students` 
    JOIN degrees 
    ON degree_id = degrees.id 
    JOIN departments 
    ON degrees.department_id = departments.id 
    ORDER BY students.surname ASC;

5)  SELECT teachers.name AS 'Nome insegnante', teachers.surname AS 'Cognome insegnante', courses.name AS 'Nome Corso', degrees.name AS 'Corso di laurea' 
    FROM teachers 
    JOIN course_teacher 
    ON teachers.id = course_teacher.teacher_id 
    JOIN courses 
    ON courses.id = course_teacher.course_id 
    JOIN degrees 
    ON degrees.id = courses.degree_id;

6)  SELECT teachers.name AS 'Nome insegnante', teachers.surname AS 'Cognome insegnante', departments.name AS 'Nome Dipartimento' 
    FROM teachers 
    JOIN course_teacher 
    ON teachers.id = course_teacher.teacher_id 
    JOIN courses 
    ON courses.id = course_teacher.course_id 
    JOIN degrees 
    ON degrees.id = courses.degree_id 
    JOIN departments 
    ON departments.id = degrees.department_id 
    WHERE departments.name = "Dipartimento di Matematica" 
    GROUP BY teachers.name 
    ORDER BY teachers.name ASC;

7)