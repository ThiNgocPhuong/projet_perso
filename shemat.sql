create database projet_perso;

create table chapitre(
    id integer unique not null,
    text blob (65 535),
    primary key(id)
) ;
create table parcours (
    id integer unique not null,
    email Varchar(50),
    ordre Varchar(10),
    primary key (id, email),
    FOREIGN key (id) references chapitre(id),
    FOREIGN key (email) references lecteur(email)

);
create table lecteur(
    email Varchar(50),
    pseudo varchar(50),
    mdp varchar(50),
    primary key(email)
);