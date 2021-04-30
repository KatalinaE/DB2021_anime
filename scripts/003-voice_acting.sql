create table voice_acting
(
	id integer not null
		constraint voice_acting_pk
			primary key,
	name varchar(256) not null
);

alter table voice_acting owner to postgres;

