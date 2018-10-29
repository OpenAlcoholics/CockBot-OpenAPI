INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Gin & Tonic'),
	(SELECT id FROM accessories WHERE accessories.name = 'Cucumber slice'),
	2
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Mojito'),
	(SELECT id FROM accessories WHERE accessories.name = 'White sugar'),
	2
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Mojito'),
	(SELECT id FROM accessories WHERE accessories.name = 'Mint leaves'),
	10
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Mojito'),
	(SELECT id FROM accessories WHERE accessories.name = 'Lemon slice'),
	2
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Long Island Ice Tea'),
	(SELECT id FROM accessories WHERE accessories.name = 'Lemon slice'),
	2
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Tequila Sunrise'),
	(SELECT id FROM accessories WHERE accessories.name = 'Orange slice'),
	1
);
