CREATE TABLE drink_accessories
(
    drink_id integer NOT NULL,
    accessories_id integer NOT NULL,
    pieces integer,
    before boolean, -- Should we keep this?
    CONSTRAINT drink_accessories_drinks_id_fk FOREIGN KEY (drink_id) REFERENCES drinks (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_accessories_accessories_id_fk FOREIGN KEY (accessories_id) REFERENCES accessories (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_accessories_pk PRIMARY KEY (drink_id, accessories_id) ON DELETE CASCADE ON UPDATE CASCADE
);
