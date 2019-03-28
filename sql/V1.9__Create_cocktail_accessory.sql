CREATE TABLE cocktail_accessory
(
    cocktail_id integer NOT NULL,
    accessory_category_id integer NOT NULL,
    pieces integer,
    CONSTRAINT cocktail_accessory_cocktail_id_fk FOREIGN KEY (cocktail_id) REFERENCES cocktail (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT cocktail_accessory_accessory_category_id_fk FOREIGN KEY (accessory_category_id) REFERENCES accessory_category (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT cocktail_accessory_pk PRIMARY KEY (cocktail_id, accessory_category_id)
);
