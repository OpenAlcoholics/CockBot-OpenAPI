CREATE TABLE recipe_ingredient_suggestion
(
    cocktail_id integer NOT NULL,
    ingredient_category_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    CONSTRAINT recipe_ingredient_suggestion_recipe_fk FOREIGN KEY (cocktail_id, ingredient_category_id) REFERENCES recipe(cocktail_id, ingredient_category_id) ON UPDATE CASCADE,
    CONSTRAINT recipe_ingredient_suggestion_pk PRIMARY KEY (cocktail_id, ingredient_category_id, ingredient_id)
);
