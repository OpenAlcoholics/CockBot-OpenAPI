CREATE TABLE accessories
(
    id integer DEFAULT nextval('accessories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512)
);
CREATE UNIQUE INDEX accessories_id_uindex ON accessories (id);