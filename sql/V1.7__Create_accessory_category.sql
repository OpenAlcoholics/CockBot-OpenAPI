CREATE TABLE accessory_category
(
    id integer DEFAULT nextval('accessory_category_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(2048),
    image_link varchar(512)
);
CREATE UNIQUE INDEX accessory_category_id_uindex ON ingredient_category (id);
