create table USERS(
    USER_ID INT NOT NULL,
    NAME VARCHAR(255) not null,
    SURNAME VARCHAR(255) not null,
    NICKNAME VARCHAR(255),
    EMAIL VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL,
    N_MATRICOLA INT NOT NULL,
    PRIMARY KEY(USER_ID, N_MATRICOLA, NICKNAME)
);




create table RESULTS(
    NAME VARCHAR(255),
    CONTENTS TEXT,
    TITLE VARCHAR(255),
    NUM_INTERACTIONS INT DEFAULT 0,
   
    PRIMARY KEY (NAME)
);



create table SUMUPS(
    ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    DATA TEXT,
    NUM_RICHIESTE INT DEFAULT 0,
    IMG_URL VARCHAR (255),
    NATION VARCHAR(255)
);



create TABLE GAME_IMAGES(
    ID INT,
    SECTION INT,
    URL VARCHAR(255),
    CHOICE_ID VARCHAR(255)
);



INSERT into `SUMUPS` VALUES(1, 'HSBC Holdings', "HSBC Holdings plc è uno dei più grandi gruppi bancari del mondo (Forbes Global 2000). È il primo
    istituto di credito europeo per capitalizzazione con 157,2 miliardi di euro. La sua sede si
    trova nella HSBC Tower nei Docklands di Londra. L'acronimo HSBC proviene da Hongkong & Shanghai
    Banking Corporation, banca fondata a Hong Kong nel 1865 da Thomas Sutherland, finanziere
    scozzese che commerciava in estremo oriente.
    In termini di asset la banca è la seconda azienda del mondo, dopo la Industrial and Commercial
    Bank of China (ICBC). I suoi ricavi sono per l'80% esterni al Regno Unito (circa il 22% dei suoi
    guadagni proviene da operazioni a Hong Kong, dove si trovava la sede fino al 1991).
    Il logo HSBC, noto come l'Esagono, deriva da quello della Hongkong and Shanghai Banking
    Corporation del XIX secolo, a sua volta derivato dalla bandiera scozzese.
    Nel febbraio 2015 il Consorzio Internazionale dei Giornalisti Investigativi ha divulgato i
    risultati della indagine SwissLeaks, rivelando come 180,6 miliardi di euro siano passati
    attraverso conti aperti presso la HSBC di Ginevra da oltre 100.000 clienti e 20.000 società
    offshore tra novembre 2006 e marzo 2007.
    L'indagine è stata condotta da oltre 130 giornalisti a Parigi, Washington, Ginevra, e in altri
    46 Paesi. Il Consorzio (ICIJ) sostiene che la banca ha tratto profitto da evasori fiscali,
    narcotrafficanti ed altri clienti.", 0, '../images/HSBC-Logo.jpg', 'CINA (Hong Kong)' );



    INSERT into `SUMUPS` VALUES(2, 'Crédit Agricole', "Il Gruppo Crédit Agricole è un istituto bancario cooperativo francese, fondato nel 1894. È
    costituito da una rete di Casse locali e regionali e da Crédit Agricole S.A., la società che
    coordina le strategie del Gruppo.
    Conta 52 milioni di clienti, ed è presente in 49 Paesi. È la prima banca in Europa per ricavi
    nel retail banking, la terza in Francia per capitalizzazione di mercato.
    Dal 2001 Crédit Agricole è quotata presso la Borsa di Parigi, nell’indice principale CAC 40.
    La storia del Crédit Agricole risale alla fine del XIX secolo, ad una legge del 1884 che
    permetteva la libera associazione professionale, che tra l'altro autorizzava la formazione di
    unioni di contadini e la creazione di casse mutue locali. La nascita di Crédit Agricole si
    inserisce nel quadro delle prime casse di credito legate al mondo agricolo, promosse in Francia
    durante la seconda metà dell’Ottocento. La prima cassa aprì nel 1885 a Salins-les-Bains, nel
    dipartimento del Giura. L’edificio ospita oggi un museo dedicato al modello cooperativo, gestito
    dalla Fondazione Maison de Salins. Questa istituzione è stata la prima del suo genere in
    Francia.
    La fondazione di Crédit Agricole fu però sancita ufficialmente con la legge del 5 novembre 1894
    sullo statuto delle casse mutualistiche locali, fortemente voluta dal futuro primo ministro
    Jules Méline. I primi casse furono la creazione di eliti locali composte da agronomi,
    professori e proprietari, mentre gli agricoltori erano ancora in minoranza. Negli anni
    successivi l’intervento dello Stato crebbe, fino all’istituzione, nel 1899, delle Casse
    regionali, che ancora oggi costituiscono il secondo livello (al di sopra delle Casse locali)
    della struttura di Crédit Agricole.

    A completamento di tale organizzazione piramidale fu istituito, nel 1920, un ente pubblico
    centrale, l’Office Nationale du Crédit Agricole, poi rinominato Caisse Nationale de Crédit
    Agricole (CNCA). Dopo essere diventato finanziariamente autonomo nel 1966, nel 1988
    l’istituto, rilevato dalle stesse Casse regionali, acquisì la completa indipendenza dallo Stato.
    Con questa rilevazione, la CNCA assunse l’attuale forma di società anonima di capitali e il nome
    di Crédit Agricole S.A.

    Negli anni successivi, Crédit Agricole S.A. estende le proprie attività oltre l’ambito del
    credito agricolo: nel 1996 acquisisce Indosuez, brand specializzato nel wealth management, e
    in seguito Sofinco e Finaref, istituti di credito al consumo poi fusi nel 2010.

    Nel 2001 Crédit Agricole si quota presso la Borsa di Parigi.

    Nel 2003 il Gruppo acquisisce il controllo di Crédit Lyonnais, una delle principali banche
    francesi.

    Nel 2010 Crédit Agricole, insieme a Société Generale, dà vita ad Amundi, tra i principali
    gestori di risparmio in Europa.", 0, '../images/Credit-Agricole-logo.png', 'FRANCIA' );




    INSERT into `SUMUPS` VALUES(3, 'Banco Santander', "Il Banco Santander (BI SANT) (LSE: BNC) (NYSE: STD) è un gruppo di istituti di credito
    prevalentemente europei e americani. Alcuni di essi operano sotto il marchio del Banco
    Santander, per esempio la filiale Santander Consumer Bank in Germania. Altri sono società
    acquistate dal gruppo, di cui l'esempio è l'acquisizione della banca inglese Abbey National PLC
    avvenuta nel settembre 2004, e poi rinominata Santander UK plc nel 2010.
    Il Banco de Santander fu fondato nel 1857 per decreto della regina Isabella II di Spagna per
    favorire gli scambi del porto di Santander con l'America del Sud. Fino al 1874 fu banco di
    emissione. Il Banco de Santander è stato uno dei poli della concentrazione delle banche spagnole
    negli anni 1990. Nel 1994 il Banco de Santander rilevò il Banesto.

    Nel 1991 le banche spagnole Banco Central e Banco Hispanoamericano si fusero per dar vita al
    Banco Central Hispano. Quest'ultimo fu a sua volta acquisito dal Banco Santander nel 1999 per
    formare il Banco Santander Central Hispano. BSCH fu subito la più grande banca spagnola. Il
    Banco Santander riprenderà il suo nome originale nel 2007.

    Nel 2004 il Santander ha acquisito la banca britannica Abbey National Bank, mentre nel 2017 il
    Santander ha acquisito il Banco Popular.

    Nel settembre 2018 viene annunciato che il CEO José Antonio Álvarez sarà sostituito nel gennaio
    2019 da Andrea Orcel, italiano di Roma che da tempo vive a Londra e dal 2012 è alla guida
    dell'investment banking della svizzera UBS. A metà gennaio 2019 passo indietro dei vertici
    bancari: salta la nomina di Orcel (resta così in carica Alvarez) perché considerate
    'inaccettabili' le richieste economiche presentate per il mancato pagamento da parte degli
    svizzeri di UBS del bonus relativo ai sette anni di incarico del banchiere italiano (si parla di
    40-50 milioni di euro).", 0, '../images/SantanderLogo.jpg', 'SPAGNA' );



    INSERT into `SUMUPS` VALUES(4, 'BNP Paribas', "BNP Paribas è un gruppo di credito operante nei servizi finanziari e una delle 6 banche più
    solide al mondo secondo la valutazione della società di rating Standard & Poor's.
    Il Gruppo è presente in Europa in quattro mercati domestici attraverso la banca retail: Belgio,
    Francia, Italia e Lussemburgo. BNP Paribas detiene una presenza in 75 paesi e un organico di 192.092 collaboratori.
    Detiene, inoltre, posizioni chiave in tre settori di attività: Retail banking, Corporate &
    Investment Banking, Investment Solutions.
    Il Gruppo è quotato alla Borsa di Parigi (CAC 40); è negoziato a Milano nella sezione MTA
    International, Francoforte, Londra e New York; è inoltre presente nei principali indici
    borsistici internazionali. BNP Paribas è nata dalla fusione della Banque nationale de Paris (BNP) con la Banque de Paris et
    des Pays-Bas nel 2000. La Banque Nationale de Paris S.A. (BNP) era a sua volta il risultato della fusione di due banche
    francesi, la Banque nationale pour le commerce et l'industrie (BNCI) e il Comptoir national
    d'escompte de Paris (CNEP), avvenuta nel 1966.
    La Banque de Paris et des Pays-Bas S.A. ('Banca di Parigi e dei Paesi Bassi'), abbreviata in
    Paribas, era nata dall'unione di due banche d'affari aventi sede rispettivamente a Parigi e a
    Amsterdam, nel 1872. BNP Paribas è attiva in Italia dal 1989 con Ucb Credicasa, specializzata nell'erogazione di
    mutui immobiliari e dal 1996 attiva anche come istituto di credito tradizionale, con il nuovo
    nome di Banca Ucb. Nel 1995 sbarca con Arval che si affianca alla presenza di BNP Paribas
    Lease Group e Findomestic. Il 3 febbraio 2006, BNP Paribas ha acquistato, a seguito della
    vicenda bancopoli, il 48% di BNL da Unipol ed i suoi associati. Successivamente ha lanciato
    un'OPA sul totale del capitale azionario della banca, e ad oggi ne controlla l'intero capitale.
    Dal 2013 BNP Paribas è anche presente come banca online, in Italia, con il nome di HelloBank!.
    Il gruppo HelloBank! ha registrato a fine 2016, circa 2,5 Milioni di clienti nei 5 mercati in
    cui è presente (Italia, Francia, Germania, Belgio ed Austria).
    La nuova sede della direzione generale di BNL-BNP Paribas è stata inaugurata a Roma nel luglio
    2017. L'edificio, denominato 'Orizzonte Europa', è stato progettato dallo studio di architettura
    Atelier(s) Alfonso Femia (in precedenza 5+1AA).", 0, '../images/bnp_paribas_logo.jpg', 'FRANCIA' );



    INSERT into `SUMUPS` VALUES(5, 'Deutsche Bank', "Deutsche Bank è una banca tedesca, con sede a Francoforte sul Meno, in Germania, presso le
    Deutsche Bank Twin Towers. È uno dei principali gruppi bancari mondiali, con sedi in
    Europa, America, Asia e Pacifico.

    Dal 2012 al 2015 è co-presieduta da Juergen Fitschen e Anshu Jain, dal 2015 all'inizio del 2018
    dal britannico John Cryan, dall'aprile 2018 da Christian Sewing, tedesco e, con i suoi 47 anni,
    il più giovane amministratore delegato nei 150 anni di storia della banca. La nomina di
    Sewing rappresenta il terzo cambio in sei anni al vertice della banca dopo tre anni
    consecutivi di perdite. Dal maggio 2017 il maggiore azionista è un conglomerato cinese, HNA
    Group, con una partecipazione del 10% del capitale, ridotta all'inizio del 2018 al 7,9%.
    Fino al 1870 gli importatori ed esportatori tedeschi dipendevano dagli istituti di credito
    inglesi e francesi, e ciò rappresentava uno svantaggio per loro in quanto gli effetti finanziari
    tedeschi erano quasi sconosciuti nel commercio internazionale e perciò malvisti e soggetti ad un
    tasso di sconto superiore a quello applicato agli effetti inglesi o francesi.

    Nel 1869 Adelbert Delbrück aveva cercato inutilmente di convincere la Banca Mendelssohn a
    fondare 'una grande banca per operare, soprattutto nel commercio d'oltremare, che ci renda
    indipendenti dall'Inghilterra'. La sua idea trovò invece accoglienza presso il banchiere e
    politico Ludwig Bamberger, che aveva viaggiato molto e che fino a quel momento aveva dovuto
    gestire i suoi crediti sul Sudamerica e l'Estremo oriente sulla piazza di Londra: perciò il
    problema sollevato da Delbrück l'aveva provato personalmente.

    La Deutsche Bank fu fondata perciò nel 1870 come banca specializzata nel commercio
    estero. L'istituto di credito fu autorizzato a costituirsi in forma di società per
    azioni: fino ad allora in Prussia c'era una sola altra banca per azioni, la A.
    Schaaffhausen'scher Bankverein. La sede dell'istituto dovette essere fissata a Berlino, non
    ultimo perché la fondazione della Banca 'nasceva da intenzioni sinceramente patriottiche':
    al momento della fondazione la sede era in una casa in affitto in Französischen Straße 21, ma
    già dopo un anno la Banca si trasferiva in Burgstraße 29, nelle immediate vicinanze della Borsa.

    Nei primi anni la organizzazione di una rete di agenzie era considerata un obiettivo secondario
    e le operazioni più importanti venivano seguite dalla sede berlinese. Dalla vocazione al
    commercio estero derivò che le prime filiali nazionali della Banca fossero aperte a Brema (1871)
    e Amburgo (1872): entrambi i porti, peraltro, non appartevano inizialmente al territorio
    doganale tedesco. Successivamente fu incorporata la banca privata Dellbrück di Francoforte,
    ribattezzata nel 1886 Frankfurter Bankverein.

    Ma soprattutto appariva necessario essere presenti in quello che era allora il maggior mercato
    finanziario del mondo, Londra. Così nel 1871 venne fondata nella capitale inglese la German Bank
    of London, di cui la Deutsche Bank era socia accomandante per più del 40%. Nel 1873 fu aperta
    una vera filiale londinese della DB. Nel 1872 furono aperte le succursali di Shanghai e
    Yokohama, ma dovettero esser chiuse nel 1875. Nel 1882 la Deutsche Bank divenne socia
    accomandataria in società di Parigi e New York.

    Dopo la crisi del 1873, la Deutsche Bank assorbì altre banche; in particolare nel 1876 incorporò
    la Deutsche Union-Bank, nel cui edificio all'angolo fra Behrensstraße e Mauerstraße trasferì la
    propria sede.", 0, '../images/200px-Deutsche_Bank_logo_without_wordmark.svg.png', 'GERMANIA' );



INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(1, 1, "../images/theGame-images/1_1.jpg", "blep" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(2, 1, "../images/theGame-images/1_2.jpg", "burger" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(3, 1, "../images/theGame-images/1_3.jpg", "cart" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(4, 1, "../images/theGame-images/1_4.jpg", "dopey" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(5, 1, "../images/theGame-images/1_5.jpg", "happy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(6, 1, "../images/theGame-images/1_6.jpg", "nerd" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(7, 1, "../images/theGame-images/1_7.jpg", "shy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(8, 1, "../images/theGame-images/1_8.jpg", "sleeping" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(9, 1, "../images/theGame-images/1_9.jpg", "sleepy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(1, 2, "../images/theGame-images/2_1.jpg", "blep" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(2, 2, "../images/theGame-images/2_2.jpg", "burger" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(3, 2, "../images/theGame-images/2_3.jpg", "cart" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(4, 2, "../images/theGame-images/2_4.jpg", "dopey" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(5, 2, "../images/theGame-images/2_5.jpg", "happy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(6, 2, "../images/theGame-images/2_6.jpg", "nerd" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(7, 2, "../images/theGame-images/2_7.jpg", "shy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(8, 2, "../images/theGame-images/2_8.jpg", "sleeping" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(9, 2, "../images/theGame-images/2_9.jpg", "sleepy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(1, 3, "../images/theGame-images/3_1.jpg", "blep" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(2, 3, "../images/theGame-images/3_2.jpg", "burger" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(3, 3, "../images/theGame-images/3_3.jpg", "cart" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(4, 3, "../images/theGame-images/3_4.jpg", "dopey" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(5, 3, "../images/theGame-images/3_5.jpg", "happy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(6, 3, "../images/theGame-images/3_6.jpg", "nerd" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(7, 3, "../images/theGame-images/3_7.jpg", "shy" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(8, 3, "../images/theGame-images/3_8.jpg", "sleeping" );
INSERT INTO GAME_IMAGES(ID, SECTION, URL, CHOICE_ID) VALUES(9, 3, "../images/theGame-images/3_9.jpg", "sleepy" );



INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("blep" ,"Il vostro sguardo nasconde lo spirito da segugio che è in voi, e sa leggere gli altri e i loro desideri. Ridete quando siete confusi e sembrate straniti quando le cose sono divertenti. Vi piacciono le frasi brevi. Avete sempre voluto avere un giardino; purtroppo, le piante non sono facili da capire come gli umani, e l'ultima volta che vi siete presi cura di un fiore non è andata così bene. Ad ogni modo, vi prendete buona cura dei vostri amici, che sono fortunati ad avervi.", "Ottimo valutatore di carattere", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("burger" ,"E' più probabile che siate voi a influenzare le persone intorno piuttosto che il contrario. La qualità del vostro lavoro conta molto per voi. Siete dei pensatori visuali, e sapete trovare analogie tra argomenti diversi. Vi piace condividere scherzi con gli amici. Siete puntigliosi sul cibo, ma vi piace provare un nuovo piatto almeno una volta. Credete che la contraddizione sia alla base della vostra anima. A volte non ve ne rendete conto, ma molte persone vi ammirano.", "Deciso e determinato", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("cart" ,"Siete calorosi a bravi a migliorare la giornata degli altri. Segretamente, vi piace l'idea di essere dei ribelli, ma la maggior parte di questa ribellione finisce nella vostra testa. Vi piace fare diagrammi di flusso. Volete sempre finire tutto quello che avete in programma per la giornata, e quando siete concentrati è difficile interrompervi. E' importante per voi aver un sfogo creativo e un'indipendenza personale. Siete fortemente motivati, il che è spesso fonte di ispirazione per gli altri.", "Perfezionista con un lato tenero", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("dopey" ,"Vi piace correre, saltare, scattare, camminare, fare jogging e andare sul monociclo. Il vostro nome utente online è 'L0LxXXxNawt_4_daag_96'. Occasionalmente aggiungete delle faccine vicino alla vostra firma. Indossate segretamente una catenina d'oro con un ciondolo a forma di guanti da boxe e un'etichetta con scritto 'Rocky'. Quando siete soli, però, riflettete sulla crescente commercializzazione della capacità creativa umana e vi piace ripetere Marx mentre camminate nei boschi.", "Scherzosi ma con un lato riflessivo", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("happy" ,"Siete ottimisti e fiduciosi della vostra abilità di migliorare le cose, che siano esse un gruppo di persone, un processo lavorativo, o voi stessi. E' difficile decidere se siete introversi o estroversi. Avete tanti libri che intendete leggere, e la prossima settimana ne inizierete uno. Quando vi svegliate la mattina, avete difficoltà a ricordare cosa avete letto. Vi piace il suono della pioggia ma non starci in mezzo. Avete paura di non riuscire a fare abbastanza, mente tutti pensano che facciate più di loro.", "Una forza positiva nel mondo", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("nerd" ,"Siete fan di Harry Potter, e siete stati scelti per riparare ai torti del mondo e riportare l'armonia nella Terra di Mezzo. Vi piace leggere biografie storiche e fare test di personalità che confermino che la vostra personalità sia più rara di un fiocco di neve sul dorso di un giaguaro. Avete poteri magici, ma vi consiglio di non metterli sul curriculum, perchè la gente potrebbe non capirvi.", "Mentalmente aperti e dal cuore grande", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("shy" ,"Siete delle persone molto riflessive, sia quando pensate agli altri che quando pensate a delle idee. Vi piace la natura, in particolare il modo in cui la luce filtra tra le foglie. In un gruppo, non siete quasi mai la prima persona a parlare, ma quando lo fate gli altri vogliono che continuiate. Date più valore al futuro che al passato. Non vi piacciono i giochi di parole e vi piacciono le note scritte a mano; i giochi di parole scritti a mano vanno bene. Non avete paura di affrontare nuovo sfide, il che è molto bello.", "A volte timidi, ma segretamente avventurosi", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("sleeping" ,"Trovate energia nel fare le cose che ritenete importanti, e diventate irrequieti se vi sembra di essere sempre la stessa persona. Siete bravi ad articolare le idee. Gli orologi sono una delle cose che vi piacciono di meno. Vi separate sempre dal vostro gruppo per esplorare un posto nuovo, e fortunatamente avete un ottimo senso dell'orientamento. Avete un talento nascosto che pochi conoscono, ma tranquilli, manterrò il segreto.", "Liberi e indipendenti", 0);
INSERT INTO RESULTS(NAME, CONTENTS, TITLE, NUM_INTERACTIONS) VALUES("sleepy" ,"La chiamate 'meditazione', ma è più 'chiudere gli occhi tra una sveglia e l'altra'. Lo chiamate 'sollevamento pesi', ma è più 'una buona scusa per bere Gatorade'. Le vostre battute hanno spesso un buon tempismo e piacciono a tutti. Trascendete le difficoltà della vita, schivandole agilmente. Mangiate i biscotti della fortuna, ma non leggete mai i bigliettini perchè siete già sicuri di voi. Fare pisolini è uno dei vostri talenti, ma quando vi concentrate, vi dedicate al 100% a fare qualcosa.", "Più forti di quanto pensiate", 0);