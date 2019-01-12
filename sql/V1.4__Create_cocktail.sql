CREATE TABLE cocktail
(
    id integer DEFAULT nextval('cocktail_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512),
    description varchar(1024),
    revision_date integer NOT NULL, -- unix timestamp
    notes text,
    category_id integer NOT NULL,
    glass_id integer NOT NULL,
    ice_cubes boolean,
    CONSTRAINT cocktail_category_id_fk FOREIGN KEY (category_id) REFERENCES cocktail_category (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT cocktail_glass_id_fk FOREIGN KEY (glass_id) REFERENCES glass (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX cocktail_id_uindex ON cocktail (id);
