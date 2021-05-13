create table anime_x_character
(
	anime_id integer
		constraint anim_x_character_anime_id_fkey
			references anime,
	character_id integer
		constraint anim_x_character_character_id_fkey
			references character
);

alter table anime_x_character owner to postgres;

