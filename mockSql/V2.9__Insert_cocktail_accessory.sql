INSERT INTO cocktail_accessory (cocktail_id, accessory_category_id, pieces)
VALUES (
	(SELECT id FROM cocktail WHERE cocktail.name = 'Gin & Tonic'),
	(SELECT id FROM accessory_category WHERE accessory_category.name = 'Cucumber'),
	2
);
