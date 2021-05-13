create table anime_x_voice_acting
(
	anime_id integer
		constraint anime_x_voice_acting_anime_id_fkey
			references anime,
	voice_acting_id integer
		constraint anime_x_voice_acting_voice_acting_id_fkey
			references voice_acting
);

alter table anime_x_voice_acting owner to postgres;

