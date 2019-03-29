INSERT INTO cocktail_accessory (cocktail_id, accessory_id, pieces)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Gin & Tonic'),
	(SELECT id FROM accessory WHERE accessory.name = 'Cucumber'),
	2
);
