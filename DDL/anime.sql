create table anime
(
	id serial not null
		constraint anime_pk
			primary key,
	name varchar(256) not null,
	description text,
	episodes_count integer not null,
	duration time not null,
	date varchar(256) not null,
	creator_name varchar(256) not null,
	"age_limit " age_t not null,
	type type_t not null,
	studio_id integer not null
		constraint anime_studio_id_fk
			references studio
);

alter table anime owner to postgres;

create unique index anime_id_uindex
	on anime (id);

