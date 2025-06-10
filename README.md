# CONSEGNA

Esercizio di oggi: **DB University**
<br />
nome repo: `db-university`

Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:

1. sono presenti diversi Dipartimenti (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
2. ogni Dipartimento offre più Corsi di Laurea (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
3. ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
4. ogni Corso può essere tenuto da diversi Insegnanti;
5. ogni Corso prevede più appelli d'Esame;
6. ogni Studente è iscritto ad un solo Corso di Laurea;
7. ogni Studente può iscriversi a più appelli di Esame;
8. per ogni appello d'Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente.
<!-- -->

Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni. Infine, andiamo a definire le colonne

BONUS:
<br />
definire anche i tipi di dato di ogni tabella.

Utilizzare https://www.drawio.com/ per la creazione dello schema.
<br />
Esportare quindi il diagramma in jpg e caricarlo nella repo.
<br />
<br />
<br />
<hr />
<br />
<br />

# APPUNTI
**`NB`**: nel diagramma sono consapevole che le tabelle si ripetono una sola volta, le metto più volte per semplicità grafica (come se ognuna di esse rappresentasse una riga della tabella piuttosto che la tabella stessa).
#### Step 3
Presumo che un corso specifico possa appartenere a più corsi di laurea.
<br />
Es: "Analisi 1" è un corso specifico che viene tenuto sia per il corso di laurea "Matematica" che per il corso di laurea "Fisica".
<br />
Allo stesso modo il corso di laurea in "Matematica" è composto da più corsi specifici, come "Analisi 1" e "Analisi 2", come specificato dalla traccia.
<br />
Diventa quindi una relazione many to many, da gestire con una tabella del tipo: `degree_specific_courses`

#### Step 4
Presumo che un insegnante possa insegnare in più corsi specifici.
<br />
Es: Mario Rossi è un insegnante di matematica che insegna sia nel corso specifico "Analisi 1", che nel corso specifico "Analisi 2".
<br />
Allo stesso modo il corso specifico in "Analisi 1" può essere tenuto da più di un professore, come specificato dalla traccia.
<br />
Diventa quindi una relazione many to many, da gestire con una tabella del tipo: `specific_courses_teachers`