CREATE TABLE drinks
(
    id integer DEFAULT nextval('drinks_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    instructions text,
    image_link varchar(512),
    description varchar(1024),
    revision_date date NOT NULL,
    notes text,
    category integer NOT NULL,
    glass integer NOT NULL,
    CONSTRAINT drinks_categories_id_fk FOREIGN KEY (category) REFERENCES categories (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drinks_glasses_id_fk FOREIGN KEY (glass) REFERENCES glasses (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX drinks_id_uindex ON drinks (id);