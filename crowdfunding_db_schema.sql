CREATE TABLE IF NOT EXISTS public.campaign
(
    cf_id integer NOT NULL,
    contact_id integer,
    company_name character varying COLLATE pg_catalog."default",
    description character varying COLLATE pg_catalog."default",
    goal numeric,
    pledged numeric,
    outcome character varying COLLATE pg_catalog."default",
    backers_count integer,
    country character varying COLLATE pg_catalog."default",
    currency character varying COLLATE pg_catalog."default",
    launch_date character varying COLLATE pg_catalog."default",
    end_date character varying COLLATE pg_catalog."default",
    category_id character varying COLLATE pg_catalog."default",
    subcategory_id character varying COLLATE pg_catalog."default",
    CONSTRAINT campaign_pkey PRIMARY KEY (cf_id)
);

CREATE TABLE IF NOT EXISTS public.category
(
    category_id character varying COLLATE pg_catalog."default" NOT NULL,
    category character varying COLLATE pg_catalog."default",
    CONSTRAINT category_pkey PRIMARY KEY (category_id)
);

CREATE TABLE IF NOT EXISTS public.contacts
(
    contact_id integer NOT NULL,
    first_name character varying COLLATE pg_catalog."default",
    last_name character varying COLLATE pg_catalog."default",
    email character varying COLLATE pg_catalog."default",
    CONSTRAINT contacts_pkey PRIMARY KEY (contact_id)
);

CREATE TABLE IF NOT EXISTS public.subcategory
(
    subcategory_id character varying COLLATE pg_catalog."default" NOT NULL,
    subcategory character varying COLLATE pg_catalog."default",
    CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id)
);

ALTER TABLE IF EXISTS public.campaign
    ADD CONSTRAINT campaign_category_id_fkey FOREIGN KEY (category_id)
    REFERENCES public.category (category_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.campaign
    ADD CONSTRAINT campaign_contact_id_fkey FOREIGN KEY (contact_id)
    REFERENCES public.contacts (contact_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.campaign
    ADD CONSTRAINT campaign_subcategory_id_fkey FOREIGN KEY (subcategory_id)
    REFERENCES public.subcategory (subcategory_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
END;