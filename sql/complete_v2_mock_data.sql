INSERT INTO ingredient_categories (name, description, image_link, is_alcoholic)
VALUES (
	'Tonic Water',
	'Tonic water (or Indian tonic water) is a carbonated soft drink in which quinine is dissolved. Originally used as a prophylactic against malaria, tonic water usually now has a significantly lower quinine content and is consumed for its distinctive bitter flavor. It is often used in mixed drinks, particularly in gin and tonic.',
	'https://upload.wikimedia.org/wikipedia/commons/b/b2/Tonic_water_uv.jpg',
	false,
	false
);

INSERT INTO ingredient_categories (name, description, image_link, is_alcoholic)
VALUES (
	'Gin',
	'Gin is liquor which derives its predominant flavour from juniper berries (Juniperus communis). Gin is one of the broadest categories of spirits, all of various origins, styles, and flavour profiles that revolve around juniper as a common ingredient.',
	'https://cdn.pixabay.com/photo/2017/05/10/08/05/gin-2300126_960_720.png',
	false,
	true
);

INSERT INTO glasses (name, estimated_size, image_link)
VALUES (
	'Highball',
	400,
	'https://cdn.shopify.com/s/files/1/0583/3185/files/liber_gin_tonic_medium.jpg?v=1500514523'
);

INSERT INTO categories (name, description, image_link)
VALUES (
	'Highballs', 
	'Highballs are called "long" drinks as they are usually a sour or stirred base that is lengthened by the addition of carbonated water. The base may be sometimes be shaken before the addition of carbonated water or built in the glass and stirred to combine. Highballs are served in a tall glass over ice. Iconic highballs include the Gin & Tonic, the Moscow Mule, and the Mojito.',
	'https://cdn.shopify.com/s/files/1/0583/3185/files/liber_gin_tonic_medium.jpg?v=1500514523'
);

INSERT INTO drinks (name, instructions, image_link, description, revision_date, notes, category, glass)
VALUES (
	'Gin & Tonic',
	'In a highball glass filled with ice cubes, pour the gin then top it with tonic. Stir well. Garnish with a cucumber slice.',
	'https://www.thespruceeats.com/thmb/9g5q0ChNcHs5IjThGwciEsa5d0Y=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/gin-tonic-5a8f334b8e1b6e0036a9631d.jpg',
	'Classic and easy, the gin and tonic is light and refreshing. It\'s a simple mixed drink—requiring just the two ingredients—and is perfect for happy hour, dinner, or anytime you simply want an invigorating beverage.',
	'2018-08-29',
	'Hendricks Gin is best paired with a cucumber and a mold tonic water.',
	(SELECT id FROM categories WHERE categories.name = 'Highballs'),
	(SELECT id FROM glasses WHERE glasses.name = 'Highball')
);

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

INSERT INTO accessories (name, description, image_link)
VALUES (
	'Cucumber slice',
	'Slice of a cucumber',
	'https://c1.staticflickr.com/4/3234/2738586453_f23bc8244e_b.jpg'
);

INSERT INTO accessories (name, description, image_link)
VALUES (
	'Ice cube',
	'This should really be self explanatory...',
	''
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces, before)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Gin & Tonic'),
	(SELECT id FROM accessories WHERE accessories.name = 'Cucumber slice'),
	2,
	false
);

INSERT INTO drink_accessories (drink_id, accessories_id, pieces, before)
VALUES (
	(SELECT id FROM drinks WHERE drinks.name = 'Gin & Tonic'),
	(SELECT id FROM accessories WHERE accessories.name = 'Ice cube'),
	4,
	true
);