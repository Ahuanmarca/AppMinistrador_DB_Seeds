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
-- Name: properties; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.properties (
    id integer NOT NULL,
    building_id integer,
    floor character varying(55),
    door character varying(55),
    owner_dni character varying(55)
);


ALTER TABLE public.properties OWNER TO renzobelon;

--
-- Name: properties_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.properties_id_seq OWNER TO renzobelon;

--
-- Name: properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.properties_id_seq OWNED BY public.properties.id;


--
-- Name: properties id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.properties ALTER COLUMN id SET DEFAULT nextval('public.properties_id_seq'::regclass);


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.properties (id, building_id, floor, door, owner_dni) FROM stdin;
1	1	1	1	04563677V
2	1	1	2	75920194T
3	1	1	3	39496103C
4	1	1	4	54266227G
5	1	2	5	11928436U
6	1	2	6	14482182W
7	1	2	7	76641167S
8	1	2	8	72534248E
9	1	3	9	97585098P
10	1	3	10	12385025T
11	1	3	11	22137770V
12	1	3	12	80073680P
13	1	4	13	11166260J
14	1	4	14	36735743M
15	1	4	15	56565155J
16	1	4	16	56565155J
17	2	1	1A	49751664L
18	2	1	1B	25332987M
19	2	1	1C	87626347G
20	2	1	1D	56565155J
21	2	2	2A	97545284F
22	2	2	2B	72922555C
23	2	2	2C	43860950L
24	2	2	2D	30974704Y
25	2	3	3A	40786311C
26	2	3	3B	40786311C
27	2	3	3C	40786311C
28	2	3	3D	06200942G
29	2	4	4A	01017494C
30	2	4	4B	03325587V
31	2	4	4C	05009487H
32	2	4	4D	46288180J
33	2	5	5A	39315828L
34	2	5	5B	05009487H
35	2	5	5C	41794147L
36	2	5	5D	05009487H
37	2	6	6A	31136436W
38	2	6	6B	31136436W
39	2	6	6C	41318419T
40	2	6	6D	41318419T
41	3	1	1	11155577Y
61	4	1	1	73291043U
81	5	1	1	11222712B
101	6	1	1	11109874H
121	7	1	1	16852244F
141	8	1	1	61999991V
161	9	1	1	11000222Y
181	10	1	1	72934798Q
\.


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.properties_id_seq', 1, false);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (id);


--
-- Name: properties dk_owner_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT dk_owner_dni FOREIGN KEY (owner_dni) REFERENCES public.people(dni);


--
-- Name: properties fk_building_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT fk_building_id FOREIGN KEY (building_id) REFERENCES public.buildings(id);


--
-- PostgreSQL database dump complete
--

