INSERT INTO accessories (name, description, image_link, category)
VALUES (
	'Cucumber slice',
	'Slice of a cucumber',
	'https://c1.staticflickr.com/4/3234/2738586453_f23bc8244e_b.jpg',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Cucumber slice')
);

INSERT INTO accessories (name, description, image_link, category)
VALUES (
	'Ice cube',
	'This should really be self explanatory...',
	'',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Ice')
);