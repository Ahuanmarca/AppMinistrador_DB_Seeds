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
-- Name: neighbors_to_properties; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.neighbors_to_properties (
    id integer NOT NULL,
    property_id integer NOT NULL,
    neighbor_dni character varying(55) NOT NULL,
    starting_date date,
    ending_date date
);


ALTER TABLE public.neighbors_to_properties OWNER TO renzobelon;

--
-- Name: neighbors_to_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.neighbors_to_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.neighbors_to_properties_id_seq OWNER TO renzobelon;

--
-- Name: neighbors_to_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.neighbors_to_properties_id_seq OWNED BY public.neighbors_to_properties.id;


--
-- Name: neighbors_to_properties id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.neighbors_to_properties ALTER COLUMN id SET DEFAULT nextval('public.neighbors_to_properties_id_seq'::regclass);


--
-- Data for Name: neighbors_to_properties; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.neighbors_to_properties (id, property_id, neighbor_dni, starting_date, ending_date) FROM stdin;
1	1	55921386C	2022-01-01	\N
2	1	88231154F	2022-01-01	\N
3	2	51802544N	2022-01-01	\N
4	2	80038104J	2022-01-01	\N
5	3	91975156L	2022-01-01	2023-06-30
6	3	58388741K	2022-01-01	2023-06-30
7	3	02296421D	2022-01-01	2023-06-30
8	3	92347502X	2023-08-01	\N
9	3	29034509Q	2023-08-01	\N
10	4	59410465Q	2022-01-01	\N
11	4	93037013N	2022-01-01	\N
12	5	04265798B	2022-01-01	\N
13	6	12199979C	2022-01-01	\N
14	6	14482182W	2022-01-01	\N
15	6	47763259X	2022-01-01	\N
16	7	76641167S	2022-01-01	\N
17	7	48094905L	2022-01-01	\N
18	8	01436730N	2022-01-01	\N
19	9	92074524G	2022-01-01	\N
20	10	12385025T	2022-08-01	2023-07-31
21	10	10475049E	2022-08-01	2023-07-31
22	10	85851455E	2022-08-01	2023-07-31
23	10	43209548V	2024-02-01	\N
24	10	97534485K	2024-02-01	\N
25	10	84739289N	2024-02-01	\N
26	11	98842669P	2022-01-01	\N
27	12	59662279A	2022-01-01	\N
28	12	31816363A	2022-01-01	\N
29	13	11166260J	2022-01-01	\N
30	13	73044876G	2022-01-01	\N
31	13	26487326C	2022-01-01	\N
32	14	36735743M	2022-01-01	\N
33	15	56565155J	2022-01-01	\N
34	15	35164153M	2022-01-01	\N
35	16	62000855P	2022-01-01	\N
36	16	46535516F	2022-01-01	\N
37	17	58529701Z	2022-01-01	\N
38	17	70828988M	2022-01-01	\N
39	17	95515925F	2022-01-01	\N
40	18	25332987M	2022-01-01	\N
41	18	98192302N	2022-01-01	\N
42	19	75319865V	2022-01-01	\N
43	19	87626347G	2022-01-01	\N
44	20	93710295H	2022-01-01	\N
45	20	73017594G	2022-01-01	\N
46	21	56570285Z	2022-01-01	\N
47	21	95010162Z	2022-01-01	\N
48	22	04602000E	2022-01-01	\N
49	22	90158168P	2022-01-01	\N
50	23	43860950L	2022-01-01	\N
51	24	90763073J	2022-01-01	\N
52	24	94368182X	2022-01-01	\N
53	25	26033775Y	2022-01-01	\N
54	25	56861626Z	2022-01-01	\N
55	26	84935712R	2022-01-01	\N
56	26	47445025G	2022-01-01	\N
57	27	72922555C	2022-01-01	\N
58	27	15907991H	2022-01-01	\N
59	28	04739439J	2022-01-01	\N
60	29	24950067N	2022-01-01	\N
61	29	29464744L	2022-01-01	\N
62	30	03325587V	2022-01-01	\N
63	31	43566488A	2022-01-01	\N
64	31	48985645S	2022-01-01	\N
65	32	98991792E	2022-01-01	\N
66	32	46288180J	2022-01-01	\N
67	32	76102441H	2022-01-01	\N
68	33	39315828L	2022-01-01	\N
69	33	24706023K	2022-01-01	\N
70	34	20163152H	2022-01-01	\N
71	34	01720623Q	2022-01-01	\N
72	35	54914007N	2022-01-01	\N
73	35	10500290P	2022-01-01	\N
74	36	54307628M	2022-01-01	\N
75	37	93204137H	2022-01-01	\N
76	37	52223455T	2022-01-01	\N
77	38	41363919Y	2022-01-01	\N
78	38	79453724V	2022-01-01	\N
79	39	58433795H	2022-01-01	\N
80	39	61744063B	2022-01-01	\N
81	40	78128952E	2022-01-01	\N
82	41	11155577Y	2022-01-01	\N
83	61	73291043U	2022-01-01	\N
84	81	11222712B	2022-01-01	\N
85	101	11109874H	2022-01-01	\N
86	121	16852244F	2022-01-01	\N
87	141	61999991V	2022-01-01	\N
88	161	11000222Y	2022-01-01	\N
89	181	72934798Q	2022-01-01	\N
\.


--
-- Name: neighbors_to_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.neighbors_to_properties_id_seq', 89, true);


--
-- Name: neighbors_to_properties neighbors_to_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.neighbors_to_properties
    ADD CONSTRAINT neighbors_to_properties_pkey PRIMARY KEY (id, property_id, neighbor_dni);


--
-- Name: neighbors_to_properties fk_neighbor_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.neighbors_to_properties
    ADD CONSTRAINT fk_neighbor_dni FOREIGN KEY (neighbor_dni) REFERENCES public.people(dni);


--
-- Name: neighbors_to_properties fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.neighbors_to_properties
    ADD CONSTRAINT fk_property_id FOREIGN KEY (property_id) REFERENCES public.properties(id);


--
-- PostgreSQL database dump complete
--

