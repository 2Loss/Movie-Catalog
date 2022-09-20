create schema dev;
create schema prod;
create table "user" (user_id serial primary key,  "user" text, "email" text, "country" text, "sex" text, age int, "privacy" text);
create table movie (movie_id serial primary key, "name" text, "year" int, "genre" text, "country" text,
"awards" text, budget real, box_office real);
create table user_rating (rating int, "favorite" text, "comment" text, "status" text, user_id int references "user"(user_id),
movie_id int references movie(movie_id),
primary key(user_id, movie_id));
create table user_follower (subscriber_user_id int, user_id int references "user"(user_id), 
primary key(subscriber_user_id, user_id));
create table review (id serial primary key, user_id int references "user"(user_id),
movie_id int references movie(movie_id), "text" text, rating int);
create table list (id serial primary key, user_id int references "user"(user_id), 
"description" text, "name" text, movie_id int references movie(movie_id));
create table movie_list (list_id int references list(id), movie_id int references movie(movie_id), primary key(list_id, movie_id));
create table festival (id serial primary key, "name" varchar, "year" int);
create table festival_movie (festival_id int  references festival(id), 
movie_id int references movie(movie_id), "status" text, "won" text, 
primary key(festival_id, movie_id));
create table "role" (id serial primary key, "name" varchar);
create table person (id serial primary key, "name" varchar, birthdate date, deathdate date);
create table person_role (role_id int references "role"(id), person_id int references person(id),
primary key (role_id, person_id));
create table person_movie (person_id int references person(id), movie_id int references movie(movie_id), 
primary key (person_id, movie_id));
select * from "user";
INSERT into "user" (user_id, "user", email, country, sex, age, privacy)
values(1,'Umi2000', 'UmoGama@mail.ru', 'Germany', 'w', '20', 'private');
INSERT into "user" (user_id, "user", email, country, sex, age, privacy)
values(2,'Grigorriii', 'Grisha@gmail.ru', 'Russia', 'm', '18', 'open');
INSERT into "user" (user_id, "user", email, country, sex, age, privacy)
values(3,'Mikli10', 'IDONTHaveacc@gmail.com', 'USA', 'm', '22', 'open');
INSERT into "user" (user_id, "user", email, country, sex, age, privacy)
values(4,'Kim', 'KimiKimi@yandex.ru', 'Russia', 'w', '21', 'open');
INSERT into "user" (user_id, "user", email, country, sex, age, privacy)
values(5, 'NikolasPort', 'Nikolaaa@gmail.com', 'France', 'm', '23', 'private');

select * from movie;
INSERT into movie (movie_id, e9, box_off9c

