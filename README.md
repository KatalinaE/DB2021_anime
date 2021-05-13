# Работа по курсу "Базы данных"
## Предметная область
Предметной областью данного проекта является аниме. Существует множество сайтов, на которых можно его посмотреть. Цель - создать базу данных для удобного поиска аниме по ряду критериев.
## Концептуальная модель
На этом этапе выделяются ключевые сущности, связи между ними обозначаются с помощью нотации "воронья лапка":

![Anime_K](https://user-images.githubusercontent.com/55049564/118162808-da0ee480-b429-11eb-93c8-56c16edf32a6.jpg)
## Логическая модель
На данном этапе мы дополняем концептуальную модель путём добавления к сущностям атрибутов:

![Anime](https://user-images.githubusercontent.com/55049564/118159304-88645b00-b425-11eb-8b0e-7a7fad0fe9f5.jpg)
## Физическая модель
Для создания данной модели используется СУБД PostgreSQL. Логическая модель переносится в такой вид, что становится понятной компьютеру.

![anime](https://user-images.githubusercontent.com/55049564/118159486-bb0e5380-b425-11eb-8a2c-21256f622f56.png)
## DDL скрипты
Теперь мы создаём таблицы для нашей базы (на самом деле это потребовалось ещё на предыдущем шаге). Все CREATE-запросы можно увидеть [здесь](https://github.com/KatalinaE/DB2021_anime/tree/main/DDL).
