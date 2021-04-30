create table anime
(
	id serial not null
		constraint anime_pk
			primary key,
	name varchar(256) not null,
	description text,
	episodes_count integer not null,
	studio varchar(256) not null,
	duration time not null,
	date varchar(256) not null,
	director_name varchar(256) not null,
	original_author_name varchar(256) not null,
	"age_limit " varchar(256) not null,
	type varchar(256) not null
);

alter table anime owner to postgres;

create unique index anime_id_uindex
	on anime (id);

