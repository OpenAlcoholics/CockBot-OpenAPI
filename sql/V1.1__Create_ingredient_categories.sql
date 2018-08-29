CREATE TABLE ingredient_categories
(
    id integer DEFAULT nextval('ingredient_categories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(2048),
    image_link varchar(512),
    is_accessory boolean NOT NULL,
    is_alcoholic boolean NOT NULL
);
CREATE UNIQUE INDEX ingredient_categories_id_uindex ON ingredient_categories (id);