INSERT INTO drink_accessories (drink_id, accessories_id, pieces, before)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = "Gin & Tonic"),
	(SELECT id FROM accessories WHERE accessories.name = "Cucumber slice"),
	2,
	false
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces, before)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = "Gin & Tonic"),
	(SELECT id FROM accessories WHERE accessories.name = "Ice cube"),
	4,
	true
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces, before)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = "Vodka-O"),
	(SELECT id FROM accessories WHERE accessories.name = "Ice cube"),
	4,
	true
);
