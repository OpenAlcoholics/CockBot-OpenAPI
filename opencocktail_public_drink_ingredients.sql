CREATE TABLE public.drink_ingredients
(
    drink_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    CONSTRAINT drink_ingredients_drinks_id_fk FOREIGN KEY (drink_id) REFERENCES public.drinks (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_ingredients_ingredients_id_fk FOREIGN KEY (ingredient_id) REFERENCES public.ingredients (id) ON DELETE CASCADE ON UPDATE CASCADE
);