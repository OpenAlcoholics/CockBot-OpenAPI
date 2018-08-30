INSERT INTO ingredients (name, image_link, notes, alcohol_percentage, category)
VALUES (
	'Hendricks Gin',
	'https://upload.wikimedia.org/wikipedia/commons/2/25/Gin_Hendricks.jpg',
	'Earthy',
	'44',
	(SELECT id FROM ingredient_categories WHERE ingredient_categories.name = 'Gin')
);

INSERT INTO ingredients (name, image_link, notes, alcohol_percentage, category)
VALUES (
	'Tonic Water',
	'https://cdn.pixabay.com/photo/2017/05/10/08/05/gin-2300126_960_720.png',,
	'',
	'0',
	(SELECT id FROM ingredient_categories WHERE ingredient_categories.name = 'Tonic Water')
);

INSERT INTO ingredients (name, image_link, notes, alcohol_percentage, category)
VALUES (
	'Cucumber slice',
	'https://c1.staticflickr.com/4/3234/2738586453_f23bc8244e_b.jpg',,
	'Slice of a cucumber',
	'0',
	(SELECT id FROM ingredient_categories WHERE ingredient_categories.name = 'Tonic Water')
);

INSERT INTO ingredients (name, image_link, notes, alcohol_percentage, category)
VALUES (
	'Orange juice',
	'TODO',,
	'TODO',
	'0',
	(SELECT id FROM ingredient_categories WHERE ingredient_categories.name = 'Juice')
);

INSERT INTO ingredients (name, image_link, notes, alcohol_percentage, category)
VALUES (
	'Three Sixty Vodka',
	'TODO',,
	'TODO',
	'TODO',
	(SELECT id FROM ingredient_categories WHERE ingredient_categories.name = 'Vodka')
);