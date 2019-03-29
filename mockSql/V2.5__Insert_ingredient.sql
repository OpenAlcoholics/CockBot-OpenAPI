INSERT INTO ingredient (name, image_link, notes, alcohol_percentage, generic_id)
VALUES (
	'Hendricks Gin',
	'https://upload.wikimedia.org/wikipedia/commons/2/25/Gin_Hendricks.jpg',
	'Earthy',
	44,
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Gin')
);

INSERT INTO ingredient (name, image_link, notes, alcohol_percentage, generic_id)
VALUES (
	'Tonic Water',
	'https://cdn.pixabay.com/photo/2017/05/10/08/05/gin-2300126_960_720.png',
	'',
	0,
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Tonic Water')
);

INSERT INTO ingredient (name, image_link, notes, alcohol_percentage, generic_id)
VALUES (
	'SKYY vodka',
	'http://campariamerica.com/wp-content/uploads/2016/03/SKYY_Infusions_HoneycrispApple_TropicalMango.jpg',
	'A pretty solid vodka',
	0,
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Vodka')
);

INSERT INTO ingredient (name, image_link, notes, alcohol_percentage, generic_id)
VALUES (
	'Orange Juice',
	null,
	'TODO',
	0,
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Orange Juice')
);

INSERT INTO ingredient (name, image_link, notes, alcohol_percentage, generic_id)
VALUES (
	'Three Sixty Vodka',
	null,
	'Good vokda',
	37,
	(SELECT id FROM generic_ingredient WHERE generic_ingredient.name = 'Vodka')
);
