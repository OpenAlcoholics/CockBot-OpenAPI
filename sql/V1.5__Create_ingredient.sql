CREATE TABLE ingredient
(
    id integer DEFAULT nextval('ingredient_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512),
    notes varchar(1024),
    alcohol_percentage integer DEFAULT 0 NOT NULL,
    generic_id integer NOT NULL,
    CONSTRAINT ingredient_generic_ingredient_id_fk FOREIGN KEY (generic_id) REFERENCES generic_ingredient (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX ingredient_id_uindex ON ingredient (id);
