create table character
(
	id integer not null
		constraint character_pk
			primary key,
	name varchar(256) not null
);

alter table character owner to postgres;

