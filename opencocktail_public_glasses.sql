CREATE TABLE public.glasses
(
    id integer DEFAULT nextval('glasses_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    image_link varchar(512)
);
CREATE UNIQUE INDEX glasses_id_uindex ON public.glasses (id);