create table voice_acting
(
	id serial not null
		constraint voice_acting_pk
			primary key,
	name varchar(256) not null
);

alter table voice_acting owner to postgres;

create unique index voice_acting_id_uindex
	on voice_acting (id);

