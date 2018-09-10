INSERT INTO drink_accessories (drink_id, accessories_id, pieces)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Gin & Tonic'),
	(SELECT id FROM accessories WHERE accessories.name = 'Cucumber slice'),
	2
);
