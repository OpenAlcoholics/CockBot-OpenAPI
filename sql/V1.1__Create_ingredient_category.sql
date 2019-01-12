CREATE TABLE ingredient_category
(
    id integer DEFAULT nextval('ingredient_category_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(2048),
    image_link varchar(512),
    is_alcoholic boolean NOT NULL
);
CREATE UNIQUE INDEX ingredient_category_id_uindex ON ingredient_category (id);
