INSERT INTO drinks (name, image_link, description, revision_date, notes, category_id, glass_id, ice_cubes)
VALUES (
	'Gin & Tonic',
	'https://www.thespruceeats.com/thmb/9g5q0ChNcHs5IjThGwciEsa5d0Y=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/gin-tonic-5a8f334b8e1b6e0036a9631d.jpg',
	'Classic and easy, the gin and tonic is light and refreshing. It is a simple mixed drink—requiring just the two ingredients—and is perfect for happy hour, dinner, or anytime you simply want an invigorating beverage.',
	1535500800,
	'Hendricks Gin is best paired with a cucumber and a mold tonic water.',
	(SELECT id FROM drink_categories WHERE drink_categories.name = 'Highballs'),
	(SELECT id FROM glasses WHERE glasses.name = 'Highball'),
	true
);

INSERT INTO drinks (name, image_link, description, revision_date, notes, category_id, glass_id, ice_cubes)
VALUES (
	'Vodka-O',
	'https://example.com/vodkaO.jpg',
	'Vodka and orange juice.',
	1535587200,
	'Not technically a cocktail.',
	(SELECT id FROM drink_categories WHERE drink_categories.name = 'Highballs'), -- Is this correct?
	(SELECT id FROM glasses WHERE glasses.name = 'Highball'),
	true
);

INSERT INTO drinks (name, image_link, description, revision_date, notes, category_id, glass_id, ice_cubes)
VALUES (
	'Virgin Vodka-O',
	'https://example.com/o.jpg',
	'Vodka and orange juice, sans Vodka.',
	1536537600,
	'Why dont you make this one yourself?',
	(SELECT id FROM drink_categories WHERE drink_categories.name = 'Highballs'), -- Is this correct?
	(SELECT id FROM glasses WHERE glasses.name = 'Highball'),
	true
);
