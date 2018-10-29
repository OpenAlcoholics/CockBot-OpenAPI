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

INSERT INTO drinks (name, image_link, description, revision_date, notes, category_id, glass_id, ice_cubes)
VALUES (
	'Mojito',
	'https://images.unsplash.com/photo-1531387367216-681093c0279b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=73ca72de11ae9cd2fa7367dc1ee76705&auto=format&fit=crop&w=1016&q=80',
	'Mojito is a traditional Cuban highball. Traditionally, a mojito is a cocktail that consists of five ingredients: white rum, sugar, lime juice, soda water, and mint.',
	1540833962,
	'Minty',
	(SELECT id FROM drink_categories WHERE drink_categories.name = 'Highballs'), -- Is this correct?
	(SELECT id FROM glasses WHERE glasses.name = 'Highball'),
	true
);

INSERT INTO drinks (name, image_link, description, revision_date, notes, category_id, glass_id, ice_cubes)
VALUES (
	'Long Island Ice tea',
	'https://images.unsplash.com/photo-1537401198317-1231361cbd5f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5a9460422cdba960d32b584a568f3022&auto=format&fit=crop&w=1050&q=80',
	'A Long Island Iced Tea is a type of alcoholic mixed drink typically made with vodka, tequila, light rum, triple sec, gin, and a splash of cola, which gives the drink the same amber hue as its namesake.',
	1540833962,
	'Best fucking cocktail',
	(SELECT id FROM drink_categories WHERE drink_categories.name = 'Highballs'), -- Is this correct?
	(SELECT id FROM glasses WHERE glasses.name = 'Highball'),
	true
);

INSERT INTO drinks (name, image_link, description, revision_date, notes, category_id, glass_id, ice_cubes)
VALUES (
	'Tequila Sunrise',
	'https://images.unsplash.com/photo-1498956405005-42073c453e8a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1eda0d515a7d535e6d89a87e936f2628&auto=format&fit=crop&w=1051&q=80',
	'The Tequila Sunrise is a cocktail made of tequila, orange juice, and grenadine syrup and served unmixed in a tall glass.',
	1540833962,
	'Get wasted',
	(SELECT id FROM drink_categories WHERE drink_categories.name = 'Highballs'), -- Is this correct?
	(SELECT id FROM glasses WHERE glasses.name = 'Highball'),
	true
);
