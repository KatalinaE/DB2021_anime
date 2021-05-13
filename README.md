# Работа по курсу "Базы данных"
## Предметная область
Предметной областью данного проекта является аниме. Существует множество сайтов, на которых можно его посмотреть. Цель - создать базу данных для удобного поиска аниме по ряду критериев.
## Концептуальная модель
На этом этапе выделяются ключевые сущности, связи между ними обозначаются с помощью нотации "воронья лапка":

![Anime_K](https://user-images.githubusercontent.com/55049564/118163855-2149a500-b42b-11eb-99c4-10fea079511a.jpg)
## Логическая модель
На данном этапе мы дополняем концептуальную модель путём добавления к сущностям атрибутов:

![anime](https://user-images.githubusercontent.com/55049564/118164071-58b85180-b42b-11eb-86d1-362ee22b2285.png)
## Физическая модель
Для создания данной модели используется СУБД PostgreSQL. Логическая модель переносится в такой вид, что становится понятной компьютеру.

![anime](https://user-images.githubusercontent.com/55049564/118159486-bb0e5380-b425-11eb-8a2c-21256f622f56.png)
## DDL скрипты
Теперь мы создаём таблицы для нашей базы (на самом деле это потребовалось ещё на предыдущем шаге). Все CREATE-запросы можно увидеть [здесь](https://github.com/KatalinaE/DB2021_anime/tree/main/DDL).
