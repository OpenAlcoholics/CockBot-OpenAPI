CREATE TABLE cocktail_category
(
    id integer DEFAULT nextval('cocktail_category_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512)
);
CREATE UNIQUE INDEX category_id_uindex ON cocktail_category (id);
