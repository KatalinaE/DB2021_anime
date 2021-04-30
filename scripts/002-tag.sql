create table tag
(
	id integer not null
		constraint tag_pk
			primary key,
	name varchar(256) not null
);

alter table tag owner to postgres;

