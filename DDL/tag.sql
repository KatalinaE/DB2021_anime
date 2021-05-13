create table tag
(
	id serial not null
		constraint tag_pk
			primary key,
	name varchar(256) not null
);

alter table tag owner to postgres;

create unique index tag_id_uindex
	on tag (id);

