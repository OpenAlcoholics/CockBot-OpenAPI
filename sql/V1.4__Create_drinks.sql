CREATE TABLE drinks
(
    id integer DEFAULT nextval('drinks_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512),
    description varchar(1024),
    revision_date date NOT NULL,
    notes text,
    category_id integer NOT NULL,
    glass_id integer NOT NULL,
    ice_cubes boolean,
    CONSTRAINT drinks_categories_id_fk FOREIGN KEY (category_id) REFERENCES drink_categories (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drinks_glasses_id_fk FOREIGN KEY (glass_id) REFERENCES glasses (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX drinks_id_uindex ON drinks (id);
