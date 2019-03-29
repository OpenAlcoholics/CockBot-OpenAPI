CREATE TABLE generic_ingredient
(
    id integer DEFAULT nextval('generic_ingredient_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(2048),
    image_link varchar(512),
    is_alcoholic boolean NOT NULL
);
CREATE UNIQUE INDEX generic_ingredient_id_uindex ON generic_ingredient (id);
