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

# ESERCIZIO



### Consegna 1: Selezionare tutti gli studenti nati nel 1990 (160)

```sql
SELECT 
	*
    #COUNT(*)
FROM students
WHERE YEAR(`date_of_birth`) = 1990;
```




### Consegna 2: Selezionare tutti i corsi che valgono più di 10 crediti (479)

```sql
SELECT 
	*
    #COUNT(*)
FROM courses
WHERE `cfu` > 10;
```




### Consegna 3: Selezionare tutti gli studenti che hanno più di 30 anni

```sql
SELECT 
	*
    #COUNT(*)
FROM students
WHERE YEAR(`date_of_birth`) < 1995;
```






### Consegna 4: Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

```sql
SELECT 
	*
    #COUNT(*)
FROM courses
WHERE `period` = "I semestre" AND `year` = 1;
```






### Consegna 5: Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

```sql
SELECT 
	*
    #COUNT(*)
FROM exams
WHERE `date` = "2020-06-20" AND `hour` > "14:00:00";
```






### Consegna 6: Selezionare tutti i corsi di laurea magistrale (38)

```sql
SELECT 
	*
    #COUNT(*)
FROM degrees
WHERE `name` LIKE "Corso di Laurea Magistrale%";
```






### Consegna 7: Da quanti dipartimenti è composta l'università? (12)

```sql
SELECT 
	COUNT(*) 
FROM departments;
```






### Consegna 8: Quanti sono gli insegnanti che non hanno un numero di telefono? (50)

```sql
SELECT 
	COUNT(*)
FROM teachers
WHERE `phone` IS NULL;
```