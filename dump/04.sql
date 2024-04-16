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
-- Name: users; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.users (
    id integer NOT NULL,
    person_dni character varying(255),
    username character varying(255),
    hash text,
    is_validated boolean DEFAULT false,
    is_system_admin boolean DEFAULT false,
    portrait_url character varying(255)
);


ALTER TABLE public.users OWNER TO renzobelon;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO renzobelon;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.users (id, person_dni, username, hash, is_validated, is_system_admin, portrait_url) FROM stdin;
1	55921386C	user	$2a$10$yQKQdwIq5Q5nqJo7AP.Lmu9GsaXkUqHpIj6QUfl154JPh3ippjViS	t	f	1438761681033-6461ffad8d80
2	51802544N	mikhailkorolov	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1539571696357-5a69c17a67c6
3	02296421D	carloscastilla	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1620225700549-0ebf995a3d9a
4	92347502X	amirolba	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1506863530036-1efeddceb993
5	93037013N	pablojorda90	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1568602471122-7832951cc4c5
6	04265798B	cristiangarcia	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1564564321837-a57b7070ac4f
7	14482182W	angelicareyq	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1508214751196-bcfd4ca60f91
8	76641167S	renzobelon	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1576110598658-096ae24cdb97
9	01436730N	mateoruiz	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1500648767791-00dcc994a43e
10	92074524G	ricardorossi	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1592827095305-68f21edefb82
11	12385025T	johndoe	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1527082395-e939b847da0d
12	43209548V	masanso7	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1607990281513-2c110a25bd8c
13	98842669P	carlosmateo.vae	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1463453091185-61582044d556
14	31816363A	gustavoacc07	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1556474835-b0f3ac40d4d1
15	11166260J	inmaculadagranell	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1487573884658-a5d3c667584e
16	36735743M	ecoronel368	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1522938974444-f12497b69347
17	56565155J	joanroig	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1529977421774-808dda19c3f9
18	62000855P	ravisingh	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1492562080023-ab3db95bfbce
19	95515925F	belenvillegas	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1492633423870-43d1cd2775eb
20	25332987M	suzannewoods	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1506863530036-1efeddceb993
21	87626347G	eusebiomanrique	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1521817760127-e15c26f67fd2
22	73017594G	gabrielacamacho	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1488508872907-592763824245
23	56570285Z	aaronwhite	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1512484776495-a09d92e87c3b
24	90158168P	brianadams	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1468218457742-ee484fe2fe4c
25	43860950L	kevindurant	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1489980557514-251d61e3eeb6
26	90763073J	laraherrera	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1542131596-91a634bfc5e7
27	26033775Y	isaacwells	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1504199367641-aba8151af406
28	84935712R	naperalta	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1472099645785-5658abf4ff4e
29	72922555C	adelaperalta	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1516913840875-366de3e463bd
30	04739439J	johankarel	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1541112324160-e8a425b58dac
31	24950067N	zhangwei	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1532170579297-281918c8ae72
32	03325587V	diegosalazar	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1594849017806-9f5795c6758d
33	48985645S	patriciavargas	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1603988089669-c041ac2fe196
34	46288180J	olgakovalenko	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1495914510314-ba3164b1321f
35	39315828L	ainhoaotxoa	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1499229694635-fc626e0d9c01
36	01720623Q	joaquinramirez	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1624395213232-ea2bcd36b865
37	10500290P	soniacastillo	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1507101105822-7472b28e22ac
38	54307628M	consueloherrera	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1524550158212-33f2ff985344
39	93204137H	oscarperalta	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1645830166230-187caf791b90
40	41363919Y	paulamartinez	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1534528741775-53994a69daeb
41	61744063B	victorlopez	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1645830166230-187caf791b90
42	78128952E	silviamorales	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1485960994840-902a67e187c8
43	04563677V	palmiravilla	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1507152832244-10d45c7eda57
44	75920194T	joseluissalas	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1697634203747-5282f52a8585
45	39496103C	pablogil	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1624395213232-ea2bcd36b865
46	54266227G	margaretkeller	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1579295560051-3df968edb036
47	72534248E	gustavomadera	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1520560868530-7877729f8942
48	97585098P	arturoquevedo	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1504199367641-aba8151af406
49	22137770V	antoniogonzaga	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1456327102063-fb5054efe647
50	80073680P	erikatapia	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1641311280728-bec9ba3f221f
51	97545284F	andreamolina	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1512288094938-363287817259
52	30974704Y	bhsoler	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1566753323558-f4e0952af115
53	40786311C	miriamespinosa	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1508002366005-75a695ee2d17
54	06200942G	françoismoreau	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1513925407702-735e1f07e988
55	01017494C	hwei	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1622626426572-c268eb006092
56	41794147L	elenamontoya	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1526080652727-5b77f74eacd2
57	31136436W	germanvargas	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1529111290557-82f6d5c6cf85
58	49751664L	estebanlozano	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1513925407702-735e1f07e988
59	05009487H	chengmin	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1699435743279-c939e8eb8f80
60	41318419T	adriananavarro	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1627744078152-c106f8d738d6
61	11928436U	franciscolombardi	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1572631382901-cf1a0a6087cb
62	11155577Y	hclinares	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1510821984-41a9197835e6
63	73291043U	dmtellotrtello	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1620231145627-fd3a3b321d57
64	11222712B	mcvizcarra	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1588976612067-d015cbbdb38b
65	11109874H	mcromero	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1511684344724-cda927f1ba0e
66	16852244F	amapola.mm	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1618297817149-d703265028b8
67	61999991V	dqalegria	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1526510747491-58f928ec870f
68	11000222Y	emlopez	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1590031905406-f18a426d772d
69	72934798Q	adjimenez	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1526510747491-58f928ec870f
70	59128374D	admin	$2a$10$AtCT2HGhcG7CAbRiDSxfDuXgh5Wrru6nSy3WpYwe7M2PWh32cuS2i	t	f	1620225700456-a5006ce38d66
71	93094857W	omarQM	$2a$10$l1Vmac11oGJP7J4Gz8A2Te6kLk0LO09sBcmnoAgGDLf4iKiFPKEsq	t	f	1611413194619-43d598287739
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.users_id_seq', 71, true);


--
-- Name: users users_person_dni_key; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_person_dni_key UNIQUE (person_dni);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users fk_person_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_person_dni FOREIGN KEY (person_dni) REFERENCES public.people(dni);


--
-- PostgreSQL database dump complete
--

