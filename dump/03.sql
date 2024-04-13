--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: buildings; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.buildings (
    id integer NOT NULL,
    address_type character varying(255),
    street_address character varying(255),
    number character varying(255),
    district character varying(255),
    postal_code character varying(255),
    locality character varying(255),
    province character varying(255),
    country character varying(255),
    admin_dni character varying(255),
    president_dni character varying(255),
    build_year integer,
    floors integer,
    elevators integer,
    parking_slots integer,
    image_url character varying(255)
);


ALTER TABLE public.buildings OWNER TO renzobelon;

--
-- Name: buildings_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.buildings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.buildings_id_seq OWNER TO renzobelon;

--
-- Name: buildings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.buildings_id_seq OWNED BY public.buildings.id;


--
-- Name: buildings id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.buildings ALTER COLUMN id SET DEFAULT nextval('public.buildings_id_seq'::regclass);


--
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.buildings (id, address_type, street_address, number, district, postal_code, locality, province, country, admin_dni, president_dni, build_year, floors, elevators, parking_slots, image_url) FROM stdin;
1	Calle	Dr. Sumsi	12	Campanar	46005	Valencia	Valencia	España	59128374D	55921386C	1998	4	0	0	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379316/AppMinistrador/buildings/ut1xn3fy9s2m40x4au0v.jpg
2	Avenida	al Vedat	110	Libertad	46900	Torrent	Valencia	España	59128374D	93204137H	2004	6	1	32	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379317/AppMinistrador/buildings/i7pfzg8naudhugpvfnjf.jpg
3	Calle	Reina Na Maria	7	Campanar	46006	Valencia	Valencia	España	59128374D	11155577Y	2000	6	1	24	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379319/AppMinistrador/buildings/q91ez32dl5poabxer3lp.jpg
4	Calle	Francesc Cubells	18	Campanar	46011	Valencia	Valencia	España	59128374D	73291043U	2014	8	1	0	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379316/AppMinistrador/buildings/ubl0ztmubjl80ngucnmk.jpg
5	Avenida	General Avilés	79	Empalme	46015	Burjassot	Valencia	España	59128374D	11222712B	2016	16	2	64	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379316/AppMinistrador/buildings/ogyhbu4qu344fjgyfxmf.jpg
6	Calle	Músic Belando	15	Campanar	46020	Valencia	Valencia	España	93094857W	11109874H	2002	12	1	32	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379317/AppMinistrador/buildings/n9dh1x89tvw7kuontysv.jpg
7	Carretera	Llíria	99	Empalme	46100	Burjassot	Valencia	España	93094857W	16852244F	1994	6	1	0	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379317/AppMinistrador/buildings/rrp1po5qat2r9zpjubii.jpg
8	Calle	Sant Josep	17	Libertad	46200	Torrent	Valencia	España	93094857W	61999991V	1980	4	0	0	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379317/AppMinistrador/buildings/nlgwlu1cye9o7at1zueg.jpg
9	Calle	Azorín	12	Libertad	46901	Torrent	Valencia	España	93094857W	11000222Y	1999	6	1	0	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379317/AppMinistrador/buildings/nui1odk2vwkswtdwuthl.jpg
10	Calle	Joan Baptista Peset	42	Empalme	46980	Burjassot	Valencia	España	93094857W	72934798Q	2005	8	1	32	https://res.cloudinary.com/dlz0pxdtz/image/upload/v1711379319/AppMinistrador/buildings/wh1mmrf73uss82zfgfuy.png
\.


--
-- Name: buildings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.buildings_id_seq', 1, false);


--
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);


--
-- Name: buildings fk_admin_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT fk_admin_dni FOREIGN KEY (admin_dni) REFERENCES public.people(dni);


--
-- Name: buildings fk_president_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT fk_president_dni FOREIGN KEY (president_dni) REFERENCES public.people(dni);


--
-- PostgreSQL database dump complete
--

