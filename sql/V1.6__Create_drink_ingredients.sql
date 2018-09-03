CREATE TABLE drink_ingredients
(
    drink_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    share integer NOT NUll,
    rank integer, -- The order in which the ingredients should be put into the glass
    CHECK (share >= 0 AND share <= 100),
    CONSTRAINT drink_ingredients_drinks_id_fk FOREIGN KEY (drink_id) REFERENCES drinks (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_ingredients_ingredients_id_fk FOREIGN KEY (ingredient_id) REFERENCES ingredients (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_ingredients_pk PRIMARY KEY (drink_id, ingredient_id) ON DELETE CASCADE ON UPDATE CASCADE
);
