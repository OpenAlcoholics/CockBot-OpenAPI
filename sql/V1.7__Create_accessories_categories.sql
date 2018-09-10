CREATE TABLE accessories_categories
(
    id integer DEFAULT nextval('accessories_categories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(2048),
    image_link varchar(512)
);
CREATE UNIQUE INDEX accessories_categories_id_uindex ON ingredient_categories (id);
