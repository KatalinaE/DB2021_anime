create table anime_x_tag
(
	anime_id integer
		constraint anime_x_tag_anime_id_fkey
			references anime,
	tag_id integer
		constraint anime_x_tag_tag_id_fkey
			references tag
);

alter table anime_x_tag owner to postgres;

