CREATE TABLE recipe
(
    cocktail_id integer NOT NULL,
    generic_ingredient_id integer NOT NULL,
    share integer NOT NUll,
    rank integer, -- The order in which the ingredients should be put into the glass
    CHECK (share >= 0 AND share <= 100),
    CONSTRAINT recipe_cocktail_id_fk FOREIGN KEY (cocktail_id) REFERENCES cocktail (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT recipe_generic_ingredient_id_fk FOREIGN KEY (generic_ingredient_id) REFERENCES generic_ingredient (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT recipe_pk PRIMARY KEY (cocktail_id, generic_ingredient_id)
);
