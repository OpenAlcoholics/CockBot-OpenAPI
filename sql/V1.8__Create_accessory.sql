CREATE TABLE accessory
(
    id integer DEFAULT nextval('accessory_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512)
);
CREATE UNIQUE INDEX accessory_id_uindex ON accessory (id);
