INSERT INTO recipe (cocktail_id, ingredient_category_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Gin & Tonic'),
	(SELECT id FROM ingredient_category WHERE ingredient_category.name = 'Gin'),
	50,
	0
);

INSERT INTO recipe (cocktail_id, ingredient_category_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Gin & Tonic'),
	(SELECT id FROM ingredient_category WHERE ingredient_category.name = 'Tonic Water'),
	50,
	0
);

INSERT INTO recipe (cocktail_id, ingredient_category_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Vodka-O'),
	(SELECT id FROM ingredient_category WHERE ingredient_category.name = 'Orange Juice'),
	70,
	0
);

INSERT INTO recipe (cocktail_id, ingredient_category_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Vodka-O'),
	(SELECT id FROM ingredient_category WHERE ingredient_category.name = 'Vodka'),
	30,
	0
);

INSERT INTO recipe (cocktail_id, ingredient_category_id, share, rank)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Virgin Vodka-O'),
	(SELECT id FROM ingredient_category WHERE ingredient_category.name = 'Orange Juice'),
	100,
	0
);
