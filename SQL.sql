
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
	Schritte varchar(20000)
);

