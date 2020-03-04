
Drop database Kochen;

create Database Kochen;
use Kochen;


create Table Hauptgerichte(
	ID bigint primary key auto_increment,
    Rezept_ID bigint,
    Name varchar(100),
	foreign key (Rezept_ID) references Rezept(ID) on update cascade

);

create Table Nachspeisen(
	ID bigint primary key auto_increment,
	Rezept_ID bigint,
    Name varchar(100),
    foreign key (Rezept_ID) references rezept(ID) on update cascade
);

create table rezept(
	ID bigint primary key auto_increment,
	Name varchar(200),
	Zutaten varchar(20000),
	Schritte varchar (20000),
	Website varchar(2000)
);

insert into rezepte (Name, Schritte, Website) Values ("Kartoffelgratin" ,"	1 KG Kartoffeln,
 UU Speck oder räucher tofu (200G)
	Reibekäse 150 G
	Schlagsahne 250 G - 250 milch
	Gewürze
	Knoblauch", 
	"Kartoffeln kochen, und später fein schneiden. Hälfte des Reibekäses mit Schlagsahne vermischen, und mit 
	Muskat, salz und pofeffer würzen. Knoblauch ebenfalls dazu geben. Käse drüber tun und etwa 30 Minuten in den Ofen bei 180 Grad"
	,"/");


insert into Rezept (Name, Zutaten, Schritte, Website) Values ("Nudelauflauf",
"Salz, Pfeffer, Muskat 
	150 g roher Schinken 
	150 g Reibekäse 
	300 g Nudeln (z.?B. Gabelspaghetti) 
	150 ml Milch 
	150 g Schmand 
	2  Eier (Gr. M) 
	50 G Käse für sauce",
	"Die Nudeln kochen, Schinken oder Tofu schneiden, Schmand Eier Milch und Käse mischen,
	 Nudeln in der Form mit Schinken vermischen, mit Käse bestreuen, 15 Minuten in den Ofen bei 180 Grad ",
	"/");
insert into Rezept (Name, Zutaten, Schritte, Website) Values ("Lasagne",
"	Platten (etwa 300 G)
	400 G Rinderhack
	Tomaten -- 800 G
	Zwiebel 1
	Knoblauch 2
	Butter 30 G
	Mehl 40 G
	Milch 500 ml
	Muskat
	Petersilie
	gewürze",
	"
	Ragout:
	Zwiebeln und Knolauch anbraten, Tomatenmark hinzufügen. hackfleisch im Topf dazutun. Mit Tomaten ablöschen
	Bechamel Sauce: Butter schmelzen, Mehl hinzufügen, anbacken lassen. Milch hinzutun, 25 Minuten andicken lassen und glattrühren.
	Mit Gewürzen würzen
	Backen: Erst Platte dann RAgout dann bechamel. Mit bechamel enden und Käse drüber. Bei 180 Grad etwa 30 - 40 minuten Minuten backen.
	",
	"https://www.chefkoch.de/rezepte/745721177147257/Lasagne.html");
insert into Rezept (Name, Zutaten, Schritte, Website) Values ("Hackbraten",
"	500 g	Hackfleisch vom Rind
1 kleine	Paprikaschote(n), rot
1	Zwiebel(n)
100 g	Käse, geriebener
1	Ei(er)
Paniermehl
Pfeffer
Paprikapulver
Knoblauchpulver
2 Pck.	Bratensauce für Schweinebraten
3 TL	Brühe, gekörnte",
	"
	Die Paprikaschote in kleine Würfel schneiden, die Zwiebel fein hacken.

Das Hack mit Zwiebeln, Paprikastückchen, Ei, Käse und gekörnter Brühe verkneten und mit Pfeffer, Paprika und Knoblauch nach Geschmack würzen. So viel Paniermehl unterkneten, dass es einen nicht zu festen, aber gut formbaren Fleischteig ergibt.

Den Fleischteig zu einem Laib formen, in eine Auflaufform legen und die Form für etwa 40 Minuten bei 200° in den Backofen schieben.

Nach 30 Minuten die nach Packungsanleitung zubereitete Bratensauce über den Braten gießen und um den Braten herum den Bratensatz lösen.

Dazu Salzkartoffeln oder Kartoffelbrei und Gemüse nach Belieben und Saison reichen.",
	"https://www.chefkoch.de/rezepte/1637201271310186/Hackbraten-mit-Sauce.html");


	
insert into Rezept (Name, Zutaten, Schritte, Website) Values ("Softcookies",
"   250 Butter Zucker Mehl
    2 Eier
    1 TL Natron
    Salz 
    300 G Schokostücke
	Eventuell Backkakao",
	"
	Butter und Zucker schaumig rühren, Eier hinzufügen. Mehl langsam unterheben und schokostücke hiunzfügen. 
	backkako eventuell ebenfalls. Kleine Kugel formen und auf doppelte backpapier legen. etwa 6 pro Blech. 10 minuten bei 180 grad backen",
	"/");
	
insert into Rezept (Name, Zutaten, Schritte, Website) Values ("Churros",
"
115 g Butter

1⁄2 TL Salz

6 EL Zucker

235 ml Wasser

130 g Mehl

3 Eier

1 TL Vanille

1⁄2 TL Zimt

Geschmolzene Butter
",
	"
	Butter in mittelgroßem Topf erhitzen. Salz, 2 EL Zucker und Wasser hinzufügen und ständig umrühren, bis die Butter geschmolzen ist und das Wasser kocht. Dann Mehl zugeben und weiter verrühren, bis alles vermischt ist. Vom Herd nehmen.
Die Eier nacheinander zugeben und nach jedem gut vermischen. Vanille beigeben und vermischen. Teig mit einem Löffel in einen Spritzbeutel geben.
Teig auf ein ausgelegtes Backblech spritzen und neben jedem Churro etwa 2 cm Platz lassen. Bei 180 °C für 20-25 Minuten im Ofen backen.
Restlichen Zucker und Zimt in einem Frischhaltebeutel mischen.
Die Churros mit geschmolzener Butter bepinseln. Ein oder zwei Churros auf einmal in die Tüte mit dem Zimtzucker legen. Schütteln, um sie mit der Mischung zu bedecken. Schmeckt übrigens auch toll mit Schokosoße!",
	"https://www.lecker.de/churros-aus-dem-ofen-so-gehts-72094.html"); 	
	










insert into Rezept (Name, Zutaten, Schritte, Website) Values ("Muffins mit Nugat kern",
"80 g	Butter
200 g	Zartbitterschokolade
200 g	Nougat
4	Ei(er)
120 g	Mehl
1 TL	Backpulver
13 TL	Nougatcreme, z. B. Nuspli
n. B.	Schokolade oder Ähnliches zum Verzieren oder als Guss
",
"Als Vorbereitung portionieren wir mit einem Teelöffel kleine Haufen Nougatcreme auf ein Backpapier und frieren sie ca. 1 - 2 Stunden ein. Ich habe mich für Nusspli entschieden, weil es etwas fester als Nutella ist. Da ich die Erfahrung gemacht habe, dass Nougatkerne beim Backen meistens zu schnell zerlaufen und dann während des Backens unten aus den Muffin herauslaufen, habe ich mich entschlossen diese kurz einzufrieren. So wird der Teig schnell genug fest, bevor die Nougatcreme unten herausläuft.

Für den Teig lassen wir die Butter sowie die Schokolade und die Nougatmasse langsam in einem Topf miteinander zerlaufen. Dabei rühren wir des Öfteren um, damit es nicht anbrennt. Wenn wir eine glatte Masse haben, lassen wir diese kurz leicht abkühlen.

In dieser Zeit verrühren wir die Eier schaumig. Wir geben die Schokoladen-Butter-Nougat-Masse, sowie das Mehl und das Backpulver zu den Eiern und verrühren alles zu einen glatten Teig.

Wir legen unsere Papierförmchen in die Muffinbleche und füllen in jedes ca. einen Esslöffel Muffinteig. In die Mitte setzen wir jeweils einen gefrorenen Nougat-Creme-Kern und füllen das Förmchen dann mit weiterem Muffinteig, damit der Kern gut verdeckt ist. Anschließend backen wir die Muffins bei 150 Grad Umluft ca. 20 Minuten.

Nach Wunsch können wir die Muffins nach dem Abkühlen noch mit einem Schokoladenguss überziehen oder verzieren."
	,"https://www.chefkoch.de/rezepte/3650321549538241/Jonas-Schoko-Nougat-Muffin-mit-Nougatkern.html"); 	
	


insert into Rezept (Name, Zutaten, Schritte, Website) Values ("bananen Walnussbrot",
"
2	Banane(n), reife
50 g	Zucker
250 g	Mehl
300 g	Walnüsse, 200 g grob gehackt, 100 g im Ganzen
200 g	Rosinen (kann man auch weglassen)
2 EL	Öl
3 EL	Milch
½ TL	Natron
¼ TL	Salz
2	Ei(er)
",
	"Die Bananen mit einer Gabel zu Mus zerdrücken oder mit dem Pürierstab zerkleinern. Öl, Zucker, Milch und Eier hinzufügen und gut verrühren.

Natron, Mehl, Salz, Nüsse (und Rosinen) mischen und unter die Bananenmasse heben. In eine gut gefettete Kastenform (30 x 11 x 8) füllen. Mit halbierten Nüssen dicht belegen. Bei 200 Grad (Heißluft ca. 190 Grad) 40 Minuten backen (unbedingt Garprobe machen).

Statt Walnüssen kann man sehr gut auch Haselnüsse oder Mandeln nehmen. Statt Milch kann auch Wasser verwendet werden.

Sehr lecker mit Gouda, Honig oder Marmeladen. Schmeckt aber auch gut ohne Belag.
	",
	"https://www.chefkoch.de/rezepte/780101181114660/Walnuss-Bananen-Brot.html
"); 	
	


insert into Rezept (Name, Zutaten, Schritte, Website) Values ("
Thunfisch oliven Brot",
"
300 g	Blätterteig (TK)
1 Dose	Thunfisch in Öl
50 g	Oliven, mit Paprika gefüllt
1 m.-große	Zwiebel(n)
150 g	Frischkäse
1	Eigelb
Salz und Pfeffer, schwarzer, aus der Mühle
1 Prise(n)	Oregano, gerebelt
Mehl für die Arbeitsfläche
",
	"
	Die Blätterteigplatten bei Zimmertemperatur auftauen lassen.

Für die Füllung die Zwiebel schälen und sehr fein hacken. Die Oliven in feine Ringe schneiden. Den Thunfisch mit einer Gabel auseinanderpflücken. Zwiebeln, Oliven und Thunfisch mit dem Frischkäse mischen und die Mischung mit Pfeffer, Oregano und Salz würzen .

Die Blätterteigscheiben jeweils halbieren, sodass es 12 Quadrate ergibt. Diese auf bemehlter Arbeitsfläche etwas dünner ausrollen. Die Füllung auf dem Teig verteilen. Dann die Ränder der Quadrate mit wenig Eigelb bestreichen und die Quadrate diagonal zusammenklappen. Mit einer Gabel die Ränder ringsum gut andrücken. Zum Schluss auch noch die Oberseite ein wenig mit Eigelb bestreichen. Die Teilchen etwa 10 Minuten ruhen lassen, damit das Eigelb etwas trocknen kann.

Inzwischen den Ofen auf 200 Grad (Umluft 175 Grad) vorheizen und die Täschchen auf einem mit Backpapier belegten Blech 25 Minuten auf der Mittelschiene backen.

Die Täschchen schmecken warm, aber auch kalt.","
https://www.chefkoch.de/rezepte/1042911209283817/Thunfisch-Oliven-Taeschchen.html"); 	
	

	
-- Todos : Ein Webscraper bauen der Link bekommt und dann das Rezept in die DB screibt.
-- Todos: Website bauen
-- Todos: Programm bauen dass ein Rezept ausgibt
-- Todos: Programm bauen dass suchen lässt nach Rezepten
-- Todos: Webcrawler für seeeehr gute Rezepte