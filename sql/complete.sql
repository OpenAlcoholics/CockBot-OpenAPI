CREATE SEQUENCE categories_id_seq start 1 increment 1 MAXVALUE 2147483647;
CREATE SEQUENCE drinks_id_seq start 1 increment 1 MAXVALUE 2147483647;
CREATE SEQUENCE glasses_id_seq start 1 increment 1 MAXVALUE 2147483647;
CREATE SEQUENCE ingredient_categories_id_seq start 1 increment 1 MAXVALUE 2147483647;
CREATE SEQUENCE ingredients_id_seq start 1 increment 1 MAXVALUE 2147483647;

CREATE TABLE ingredient_categories
(
    id integer DEFAULT nextval('ingredient_categories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512),
    is_accessory boolean NOT NULL,
    is_alcoholic boolean NOT NULL
);
CREATE UNIQUE INDEX ingredient_categories_id_uindex ON ingredient_categories (id);

CREATE TABLE glasses
(
    id integer DEFAULT nextval('glasses_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    estimated_size integer,
    image_link varchar(512)
);
CREATE UNIQUE INDEX glasses_id_uindex ON glasses (id);

CREATE TABLE categories
(
    id integer DEFAULT nextval('categories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512)
);
CREATE UNIQUE INDEX categories_id_uindex ON categories (id);

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

CREATE TABLE ingredients
(
    id integer DEFAULT nextval('ingredients_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512),
    notes varchar(1024),
    alcohol_percentage integer DEFAULT 0 NOT NULL,
    category integer NOT NULL,
    CONSTRAINT ingredients_ingredient_categories_id_fk FOREIGN KEY (category) REFERENCES ingredient_categories (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX ingredients_id_uindex ON ingredients (id);

CREATE TABLE drink_ingredients
(
    drink_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    share integer NOT NUll,
    CHECK (share >= 0 AND share <= 100),
    CONSTRAINT drink_ingredients_drinks_id_fk FOREIGN KEY (drink_id) REFERENCES drinks (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_ingredients_ingredients_id_fk FOREIGN KEY (ingredient_id) REFERENCES ingredients (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE accessories_categories
(
    id integer DEFAULT nextval('accessories_categories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(2048),
    image_link varchar(512)
);
CREATE UNIQUE INDEX accessories_categories_id_uindex ON ingredient_categories (id);

CREATE TABLE accessories
(
    id integer DEFAULT nextval('accessories_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(512),
    image_link varchar(512),
    category integer NOT NULL -- accessories_categories
);
CREATE UNIQUE INDEX accessories_id_uindex ON accessories (id);

CREATE TABLE drink_accessories
(
    drink_id integer NOT NULL,
    accessories_id integer NOT NULL,
    pieces integer,
    before boolean, -- Should we keep this?
    CONSTRAINT drink_accessories_drinks_id_fk FOREIGN KEY (drink_id) REFERENCES drinks (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT drink_accessories_accessories_id_fk FOREIGN KEY (accessories_id) REFERENCES accessories (id) ON DELETE CASCADE ON UPDATE CASCADE
);