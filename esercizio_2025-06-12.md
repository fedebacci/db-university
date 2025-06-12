# CONSEGNA
Utilizzando lo stesso database di ieri, eseguite le query in allegato. Caricate un secondo file nella stessa repo di ieri (**db-university**) con le query di oggi.






<br />
<br />
<br />

# ESERCIZIO `Query con JOIN`



### Consegna 1: Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

```sql
SELECT
	`degrees`.`id` AS `degree_id`,
	`degrees`.`name` AS `degree_name`,
    
	`students`.`id` AS `student_id`,
	`students`.`name` AS `student_name`,
	`students`.`surname` AS `student_surname`,
	`students`.`date_of_birth` AS `student_date_of_birth`,
	`students`.`fiscal_code` AS `student_fiscal_code`,
	`students`.`enrolment_date` AS `student_enrolment_date`,
	`students`.`registration_number` AS `student_registration_number`,
	`students`.`email` AS `student_email`
    
FROM `degrees`

INNER JOIN `students`
ON `degrees`.`id` = `students`.`degree_id`

WHERE `degrees`.`name` = "Corso di Laurea in Economia";
```



### Consegna 2: Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

```sql
SELECT
	`departments`.`id` AS `department_id`,
	`departments`.`name` AS `department_name`,
    
    `degrees`.`id`, AS `degree_id`,
    `degrees`.`name`, AS `degree_name`,
    `degrees`.`level`, AS `degree_level`,
    `degrees`.`address`, AS `degree_address`,
    `degrees`.`email`, AS `degree_email`,
    `degrees`.`website` AS `degree_website`
    
FROM `degrees`

INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`

WHERE `degrees`.`level` = "magistrale" AND `departments`.`name` = "Dipartimento di Neuroscienze";
```



### Consegna 3: Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

```sql
SELECT
	`teachers`.`id` AS `teacher_id`,
    `teachers`.`name` AS `teacher_name`,
    `teachers`.`surname` AS `teacher_surname`,
    
    `courses`.`id` AS `course_id`,
    `courses`.`degree_id` AS `course_degree_id`,
    `courses`.`name` AS `course_name`,
    `courses`.`description` AS `course_description`,
    `courses`.`period` AS `course_period`,
    `courses`.`year` AS `course_year`,
    `courses`.`cfu` AS `course_cfu`,
    `courses`.`website` AS `course_website`
    
FROM `teachers`

INNER JOIN `course_teacher`
ON `teachers`.`id`= `course_teacher`.`teacher_id`

INNER JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`

WHERE `teachers`.`id` = 44;
```



### Consegna 4: Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

```sql
SELECT 
	`students`.`id` AS `student_id`,
    `students`.`surname` AS `student_surname`,
    `students`.`name` AS `student_name`,
    `students`.`date_of_birth` AS `student_date_of_birth`,
    `students`.`fiscal_code` AS `student_fiscal_code`,
    `students`.`enrolment_date` AS `student_enrolment_date`,
    `students`.`registration_number` AS `student_registration_number`,
    `students`.`email` AS `student_email`,
    
    `degrees`.`id` AS `degree_id`,
    `degrees`.`name` AS `degree_name`,
    `degrees`.`level` AS `degree_level`,
    `degrees`.`address` AS `degree_address`,
    `degrees`.`email` AS `degree_email`,
    `degrees`.`website` AS `degree_website`,
    
    `departments`.`id` AS `department_id`,
    `departments`.`name` AS `department_name`,
    `departments`.`address` AS `department_address`,
    `departments`.`phone` AS `department_phone`,
    `departments`.`email` AS `department_email`,
    `departments`.`website` AS `department_website`
    
FROM `students`

INNER JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`

INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`

ORDER BY `students`.`surname`, `students`.`name`;
```



### Consegna 5: Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

```sql
```



### Consegna 6: Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

```sql
```









<br />
<br />
<br />

# ESERCIZIO  BONUS 



### Consegna 1: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.

```sql
```