CREATE TABLE recipe
(
    drink_id integer NOT NULL,
    ingredient_category_id integer NOT NULL,
    share integer NOT NUll,
    rank integer, -- The order in which the ingredients should be put into the glass
    CHECK (share >= 0 AND share <= 100),
    CONSTRAINT recipe_drinks_id_fk FOREIGN KEY (drink_id) REFERENCES drinks (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT recipe_ingredient_category_id_fk FOREIGN KEY (ingredient_id) REFERENCES ingredient_categories (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT recipe_pk PRIMARY KEY (drink_id, ingredient_category_id)
);
