# CONSEGNA
Esercizio di oggi: **DB University**
<br />
nome repo: `db-university`

Dopo aver importato lo schema allegato in un nuovo DB dentro MySQL Workbench, eseguite le query del file allegato.
<br />
Dopo aver testato le vostre query con MySQL Workbench, riportatele in un file di markdown e caricatelo nella vostra repo.

**BONUS:**
<br />
Risolvere anche le query del file GROUP BY e caricarle le soluzioni in un nuovo file di markdown







<br />
<br />
<br />

# ESERCIZIO `Query con SELECT`



### Consegna 1: Selezionare tutti gli studenti nati nel 1990 (160)

```sql
SELECT 
	*
    #COUNT(`id`)
FROM students
WHERE YEAR(`date_of_birth`) = 1990;
```




### Consegna 2: Selezionare tutti i corsi che valgono più di 10 crediti (479)

```sql
SELECT 
	*
    #COUNT(`id`)
FROM courses
WHERE `cfu` > 10;
```




### Consegna 3: Selezionare tutti gli studenti che hanno più di 30 anni

```sql
-- SELECT 
-- 	*
--     #COUNT(`id`)
-- FROM students
-- WHERE DATE_SUB(NOW(), INTERVAl 31 YEAR) > `date_of_birth`;
SELECT 
	*
    #COUNT(`id`)
FROM students
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;
```






### Consegna 4: Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

```sql
SELECT 
	*
    #COUNT(`id`)
FROM courses
WHERE `period` = "I semestre" AND `year` = 1;
```






### Consegna 5: Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

```sql
SELECT 
	*
    #COUNT(`id`)
FROM exams
WHERE `date` = "2020-06-20" AND `hour` > "14:00:00";
```






### Consegna 6: Selezionare tutti i corsi di laurea magistrale (38)

```sql
-- SELECT 
-- 	*
--     #COUNT(`id`)
-- FROM degrees
-- WHERE `name` LIKE "Corso di Laurea Magistrale%";
SELECT 
	*
    #COUNT(`id`)
FROM degrees
WHERE `level` = "magistrale";
```






### Consegna 7: Da quanti dipartimenti è composta l'università? (12)

```sql
SELECT 
	COUNT(`id`) AS `result`
FROM departments;
```






### Consegna 8: Quanti sono gli insegnanti che non hanno un numero di telefono? (50)

```sql
SELECT 
	COUNT(`id`) AS `result`
FROM teachers
WHERE `phone` IS NULL;
```






<br />
<br />
<br />

# ESERCIZIO BONUS `Query con GROUP BY`



### Consegna 1: Contare quanti iscritti ci sono stati ogni anno

```sql
SELECT 
	YEAR(`enrolment_date`) AS `enrolment_year`, 
    COUNT(`id`) AS `sudents_enrolled`
FROM students
GROUP BY YEAR(`enrolment_date`);
```



### Consegna 2: Contare gli insegnanti che hanno l'ufficio nello stesso edificio

```sql
SELECT 
	COUNT(`id`) AS `teachers_in_office`, 
    `office_address`
FROM teachers
GROUP BY `office_address`;
```



### Consegna 3: Calcolare la media dei voti di ogni appello d'esame
In aggiunta mostro anche quanti studenti hanno partecipato
```sql
SELECT 
	`exam_id`,
    COUNT(`student_id`) AS `students_count`,
	AVG(`vote`) AS `vote_average`
FROM exam_student
GROUP BY `exam_id`;
```



### Consegna 4: Contare quanti corsi di laurea ci sono per ogni dipartimento

```sql
SELECT 
	`department_id`,
    COUNT(`id`) AS `degrees_count`
FROM degrees
GROUP BY `department_id`;
```