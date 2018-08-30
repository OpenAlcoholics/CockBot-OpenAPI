INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Gin & Tonic'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Hendricks Gin'),
	50,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Gin & Tonic'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Tonic Water'),
	50,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Vodka-O'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Orange Juice'),
	70,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Vodka-O'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Three Sixty Vodka'),
	30,
	0
);