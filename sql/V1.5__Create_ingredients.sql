CREATE TABLE ingredients
(
    id integer DEFAULT nextval('ingredients_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512),
    notes varchar(1024),
    alcohol_percentage integer DEFAULT 0 NOT NULL,
    category integer NOT NULL,
    CONSTRAINT ingredients_ingredient_categories_id_fk FOREIGN KEY (category) REFERENCES ingredient_categories (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX ingredients_id_uindex ON ingredients (id);