CREATE TABLE drink_categories
(
    id integer DEFAULT nextval('categories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512)
);
CREATE UNIQUE INDEX categories_id_uindex ON categories (id);
