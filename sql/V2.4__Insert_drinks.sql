INSERT INTO drinks (name, instructions, image_link, description, revision_date, notes, category, glass)
VALUES (
	'Gin & Tonic',
	'In a highball glass filled with ice cubes, pour the gin then top it with tonic. Stir well. Garnish with a cucumber slice.',
	'https://www.thespruceeats.com/thmb/9g5q0ChNcHs5IjThGwciEsa5d0Y=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/gin-tonic-5a8f334b8e1b6e0036a9631d.jpg',
	'Classic and easy, the gin and tonic is light and refreshing. It is a simple mixed drink—requiring just the two ingredients—and is perfect for happy hour, dinner, or anytime you simply want an invigorating beverage.',
	'2018-08-29',
	'Hendricks Gin is best paired with a cucumber and a mold tonic water.',
	(SELECT id FROM categories WHERE categories.name = 'Highballs'),
	(SELECT id FROM glasses WHERE glasses.name = 'Highball')
);

INSERT INTO drinks (name, instructions, image_link, description, revision_date, notes, category, glass)
VALUES (
	'Vodka-O',
	'TODO',
	'TODO',
	'TODO',
	'2018-08-30',
	'TODO',
	(SELECT id FROM categories WHERE categories.name = 'Highballs'), -- Is this correct?
	(SELECT id FROM glasses WHERE glasses.name = 'Highball')
);