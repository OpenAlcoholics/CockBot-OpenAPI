CREATE TABLE glass
(
    id integer DEFAULT nextval('glass_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    estimated_size integer, -- What unit do we use here?
    image_link varchar(512)
);
CREATE UNIQUE INDEX glass_id_uindex ON glass (id);
