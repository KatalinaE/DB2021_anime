CREATE TYPE age_t AS ENUM ('G (0+)', 'PG (0+ со взрослыми)', 'PG-13 (13+)', 'R-17 (17+, до 17 со взрослыми)', 'R+ (17+)');
CREATE TYPE type_t AS ENUM ('ТВ-сериал', 'ТВ-фильм', 'OAV/OVA', 'Полнометражный фильм', 'Короткометражный фильм');

insert into studio values (10, 'CoMix Wave');
insert into anime_x_tag values (4, 3);
insert into anime_x_voice_acting values (4, 7);
insert into tag values (10, 'Мелодрама');
insert into anime_x_character values (3, 8);
insert into character values (10, 'Майн', 'Второстепенный герой');
insert into voice_acting values (10, '2x2');
insert into anime values (5, 'Yosuga no Sora (Связанные небом)', 'Действие разворачивается в Окукодзоме, далёкой горной деревушке. Потеряв родителей в автокатастрофе, Касугано Харука и его сестра-близнец Касугано Сора из-за нехватки средств переезжают из города в дом покойного деда в деревню, где они прежде часто гостили на летних каникулах.
Здесь близнецы встречают старых и новых друзей: подругу детства Ёрихимэ Нао, одноклассника Накадзато Рёхея, а так же жрицу синтоистского храма Амацумэ Акиру вместе с её лучшей подругой Мигива Кадзухой, дочерью влиятельного магната.
Однако истинная причина появления близнецов в деревне вовсе не та, что кажется на первый взгляд. Все дело в старом обещании, данном друг другу, связанном с местонахождением важного и давно потерянного для близнецов предмета...', '12', '00:25:00', 'c 4 октября по 20 декабря 2010', 'Такэо Такахаси', 'R+ (17+)', 'ТВ-сериал', 2);

update anime set duration = '00:25:00' where name = 'Steins;Gate (Врата Штейна)';
update character set role = 'Главный герой' where name = 'Леона';

delete from voice_acting where name = 'Дубляж';
delete from tag where name = 'Мелодрама';

select name, "age_limit ", type from anime where episodes_count = 24;
select name, role from character where role = 'Второстепенный герой';

select studio_id, count(studio_id) from anime group by studio_id having count(studio_id) > 2;
select studio_id, sum(duration*episodes_count) as time from anime group by studio_id order by time;
select studio_id, avg(duration) as time from anime group by studio_id order by time;
select name, episodes_count, duration from anime order by episodes_count asc;
select name, studio_id, count(studio_id) over (partition by studio_id) from anime;

select studio_id, avg(duration) over (partition by studio_id order by studio_id desc) as time from anime;
select studio_id, count(duration) over (partition by studio_id order by studio_id desc) as time from anime;
select studio_id, max(duration) over (partition by studio_id order by studio_id desc) as time from anime;
