INSERT INTO accessories (name, description, image_link, category_id)
VALUES (
	'Cucumber slice',
	'Slice of a cucumber',
	'https://c1.staticflickr.com/4/3234/2738586453_f23bc8244e_b.jpg',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Cucumber')
);

INSERT INTO accessories (name, description, image_link, category_id)
VALUES (
	'Lemon Slice',
	'Slice of a lemon',
	'',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Lemon')
);

INSERT INTO accessories (name, description, image_link, category_id)
VALUES (
	'Orange Slice',
	'Slice of an orange',
	'',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Citrus')
);

INSERT INTO accessories (name, description, image_link, category_id)
VALUES (
	'White sugar',
	'...',
	'',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Sugar')
);

INSERT INTO accessories (name, description, image_link, category_id)
VALUES (
	'Brown sugar',
	'...',
	'',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Sugar')
);

INSERT INTO accessories (name, description, image_link, category_id)
VALUES (
	'Mint leaves',
	'...',
	'',
	(SELECT id FROM accessories_categories WHERE accessories_categories.name = 'Herbs')
);