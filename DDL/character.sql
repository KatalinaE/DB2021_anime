create table character
(
	id serial not null
		constraint character_pk
			primary key,
	name varchar(256) not null,
	role varchar(256) not null
);

alter table character owner to postgres;

create unique index character_id_uindex
	on character (id);

