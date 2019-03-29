INSERT INTO recipe (cocktail_id, generic_ingredient_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Gin & Tonic'),
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Gin'),
	50,
	0
);

INSERT INTO recipe (cocktail_id, generic_ingredient_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Gin & Tonic'),
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Tonic Water'),
	50,
	0
);

INSERT INTO recipe (cocktail_id, generic_ingredient_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Vodka-O'),
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Orange Juice'),
	70,
	0
);

INSERT INTO recipe (cocktail_id, generic_ingredient_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Vodka-O'),
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Vodka'),
	30,
	0
);

INSERT INTO recipe (cocktail_id, generic_ingredient_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Virgin Vodka-O'),
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Orange Juice'),
	100,
	0
);
