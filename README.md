# CONSEGNA

Esercizio di oggi: **DB University**
<br />
nome repo: `db-university`

Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:

- sono presenti diversi Dipartimenti (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
- ogni Dipartimento offre più Corsi di Laurea (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
- ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
- ogni Corso può essere tenuto da diversi Insegnanti;
- ogni Corso prevede più appelli d'Esame;
- ogni Studente è iscritto ad un solo Corso di Laurea;
- ogni Studente può iscriversi a più appelli di Esame;
- per ogni appello d'Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente.
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
#### Step 3
Presumo che un corso possa appartenere a più corsi di laurea.
<br />
Es: Analisi 1 è un corso che viene tenuto sia per il corso di laurea "Matematica" che per il corso di laurea "Fisica".