create table studio
(
	id serial not null
		constraint studio_pk
			primary key,
	name varchar(256) not null
);

alter table studio owner to postgres;

create unique index studio_id_uindex
	on studio (id);

