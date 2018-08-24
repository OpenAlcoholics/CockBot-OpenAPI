CREATE TABLE public.drinks
(
    id integer DEFAULT nextval('drinks_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    instructions text,
    image_link varchar(512),
    description varchar(1024),
    revision_date date NOT NULL,
    notes text,
    category integer NOT NULL,
    CONSTRAINT drinks_categories_id_fk FOREIGN KEY (category) REFERENCES public.categories (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX drinks_id_uindex ON public.drinks (id);