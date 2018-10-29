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

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Virgin Vodka-O'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Orange Juice'),
	100,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Mojito'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'White Rum'), -- TODO
	30,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Mojito'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Soda'), -- TODO
	70,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Dark Rum'), -- TODO
	12,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Vodka'), -- TODO
	12,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Gin'), -- TODO
	12,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Tequila'), -- TODO
	12,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Orange liquor'), -- TODO
	11,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Sugar syrup'), -- TODO
	11,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Lemon juice'), -- TODO
	11,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Lime juice'), -- TODO
	11,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Cola'), -- TODO
	8,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Tequila Sunrise'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Tequila'),
	20,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Tequila Sunrise'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Orange Juice'),
	75,
	0
);

INSERT INTO drink_ingredients (drink_id, ingredient_id, share, rank)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Tequila Sunrise'),
	(SELECT id FROM ingredients WHERE ingredients.name = 'Grenadine'), -- TODO
	5,
	0
);
