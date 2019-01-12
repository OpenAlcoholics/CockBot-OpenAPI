CREATE TABLE accessory
(
    id integer DEFAULT nextval('accessory_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512),
    category_id integer NOT NULL -- accessory_category
);
CREATE UNIQUE INDEX accessory_id_uindex ON accessory (id);
