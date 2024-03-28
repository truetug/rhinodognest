# DATABASE

CREATE TABLE IF NOT EXISTS comments (
	id BIGINT PRIMARY KEY, 
	body TEXT NOT NULL, 
	domain VARCHAR (50) NOT NULL, 
	rating INT NOT NULL,
	post_id INT NOT NULL,
	created_at TIMESTAMP NOT NULL,
);

create table public.comments
(
    id         integer
        constraint comments_pk
            primary key,
    body       text        not null,
    domain     varchar(50) not null,
    rating     integer     not null,
    post_id    integer     not null,
    created_at timestamp   not null
);

{
    "body": "Абсолютно прекрасный фильм. А с другой стороны именно этого я и ждал от режиссера снявшего один из самых напряженных фильмов о музыкантах. Магия кино в обоих фильмах чрезвычайно сильна. Теперь вопрос только один, про какого музыканта, после барабанщика и пианиста, будет снимать Дэмьен свой следующий фильм?<br><br>Эмма и Райан молодцы, очень крутые. Здорово, что локализация не коснулась песен. Единственная вещь, которая мне не дала почувствовать полный восторг от фильма — мой слабый культурный бэкграунд в джазе, в золотом фонде Голливуда, да и в мюзиклах...",
    "can_edit": false,
    "domain": {
        "idna_url": "https://cinema.leprosorium.ru",
        "is_in_bookmarks": false,
        "description": "<b>Подкаст —</b> <a href=\"https://pc.st/1665451078\">Это мы смотрим</a><br><br><b>Telegram–чат —</b> <a href=\"http://kinolepra.t.me\">@kinolepra</a>",
        "title": "Передвижной вуду-кинотеатр им. Патриса Лумумбы",
        "idna_prefix": "cinema",
        "readers_count": 8613,
        "is_subscribed": false,
        "is_mythings_subscribed": true,
        "name": "Здесь всегда лето",
        "url": "https://cinema.leprosorium.ru",
        "prefix": "cinema",
        "owner": {
            "deleted": false,
            "gender": "male",
            "rank": null,
            "active": true,
            "login": "kvado",
            "id": 87573
        },
        "domain_owner_title": "Человек с кнопкой",
        "logo_url": "https://cdn.jpg.wtf/futurico/pit/lepro/171/design/16325-20090318-063303-0f1d35ccb8bf95af204aa0e486fdaa59.jpg",
        "id": 171,
        "is_readable_for_everyone": true
    },
    "rating": 11,
    "created": 1484261761,
    "post": {
        "id": 2151747
    },
    "can_moderate": false,
    "user_vote": null,
    "can_ban": false,
    "user": {
        "deleted": false,
        "gender": "male",
        "is_ignored": false,
        "rank": null,
        "active": true,
        "login": "tug",
        "id": 5439
    },
    "can_delete": false,
    "id": 48655073,
    "tree_level": 0
}