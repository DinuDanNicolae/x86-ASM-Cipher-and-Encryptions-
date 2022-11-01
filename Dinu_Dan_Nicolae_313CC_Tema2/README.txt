    In rezolvarea primului task am parcurs sirul "plain" caracter cu caracter si am adunat caracterului step-ul cerut.
Ulterior, am verificat daca rezultatul obtinut se afla inca in alfabet (<90). 
In cazul in care rezultatul era > 90 scadeam 91 si adunam 65, in caz contrar nu erau necesare alte operatii.

    In rezolvarea task-ului 2 (a) am verificat cazul in care o coordonata de la un punct este egala cu coordonata afarenta celui de-al doilea punct.
In caz poitiv, distanta este egala cu diferenta celorlalte doua coordonate. 
In ceea ce priveste subpunctul (b), am aplicat acelasi principiu ca la primul subpunct
Diferenta este parcurgerea vectorului de puncte si compararea coordonatelor pentru ca rezultatul scaderii sa fie pozitiv.  
Pentru subpunct (c) am parcurs vectorul de distante si pentru ficare element am calculcat radacina patrata
Ulterior, am verificat daca aceasta la patrat rezulta elementul respectiv.
Astfel, aflam daca un numar este patrat perfect sau nu.
Ulterior, in functie de rezultat completam vectorul cu 1 pentru patrat perfect si 0 in contrariu.
In labelul "square" se foloseste o metoda in care scadeam succesiv un contor care crestea din 2 in 2 incepand cu 1 pana cand obtineam un rezultat negativ. 
Radacina patrata era numarul de scaderi facuta (numarul de intrat in label).

    In rezolvarea task-ului 3 am observat o metoda care nu necesita utilizarea efectiva a matricei date.
Astfel, carecterul din plain - caracterul din key + 65 imi obtinea criptarea ceruta.
Asadar, am parcurs cele doua siruri folosind contoare diferite, iar in momentul in care ajungeam la finalul sirului key, resetam contorul acestuia.
In acest fel imi "completam" sirul key pana la lungimea sirului plain fara a pune efectiv caracterele in continuare sirului.
In ceea ce priveste scaderea carecterelor, am verificat care este mai mare si tabelul ascii
Pentru scaderile care ar fi dat negativ, doar adaugam valoarea 91 pentru a ajunge inapoi in alfabet.
In final, caracterele criptate au fost introduse in sirul cerut.

    In rezolvarea task-ului 4 a fost necesara parcurgerea matricei in spirala. 
Astfel, am parcurs prima linie, ultima coloana, ultima linie si dupa prima coloana, etc.
Asadar, am declarat variabile auxiliare pe care le-am folosit drept contoare pentru parcurgeri si pentru a face o copie lungimii.
Initial am scris programul in C pentru a avea un reper in rezolvarea mea. 
Asadar, am avut nevoie de 5 instructiuni while si cazul in care lungimea era numar impar.
In cazul in care lungimea era numar par, nu erau necesare efectuarea altor operatii, in caz contrar, trebuia luat in considerare mijlocul matricei.
Astfel, elementul din mijloc era la pozitia (N^2)/2, unde N era lungimea data. 
Pentru implementarea fiecarei "instructiuni while", am folosit doua label-uri.
Unul in care verificam conditia si unul in care faceam operatiile propriu-zise. 
Operatiile in sine erau de a lua elementul indicat de contor din sir si pe cel din matrice si a le aduna.
Astfel obtineam caracterul criptat pe care il stocam in sirul cerut.

    Tema mi s-a parut foarte "straight - forward" si in rezolvarea acesteia mi-am aprofundat notiunile dobandite in urma laboratoarelor si a cursurilor.
Pentru rezolvarea task-ului 3 si 4 a fost de ajutor implementarea si C pentru a avea un punct de pornire si un repere pentru rezolvare, cat si rezolvarea laboratoarelor si participarea la cursuri. 
Principiile pe care le-am aprofundat in urma rezolvarii temei au fost cele de parcurgeri, instructiuni repetitive, comparatii si jumpuri din label in label. 