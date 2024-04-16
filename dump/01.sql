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
-- Name: people; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.people (
    id integer NOT NULL,
    forename character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    second_surname character varying(255),
    email character varying(255),
    phone_code character varying(55),
    phone_number character varying(255),
    birth date,
    dni character varying(55)
);


ALTER TABLE public.people OWNER TO renzobelon;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.people_id_seq OWNER TO renzobelon;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.people (id, forename, surname, second_surname, email, phone_code, phone_number, birth, dni) FROM stdin;
1	Alice	Espinosa	Ortiz	aliceesp1990@gmail.com	34	963992134	1990-06-22	55921386C
2	Luz	Fernandez	García	luz_fernandez@hotmail.com	34	655267790	1987-10-19	88231154F
3	Bob	Korolev	\N	Bobkkor@yahoo.com	34	967721031	1965-12-30	51802544N
4	Soledad	Molina	Rocha	somoro67@hotmail.com	34	772931647	1967-11-17	80038104J
5	María del Mar	Pineda	Navarro	marimar.pineda@hotmail.com	34	790448213	1948-09-16	91975156L
6	Milagros	Zuniga	Lucero	milagros.zuniga@yahoo.com	34	899216445	1994-11-09	58388741K
7	Carlos	Castilla	Zamora	carcaza94@gmail.com	34	792261306	1994-05-02	02296421D
8	Andrea	Mir	Olva	amirolba@mail.org	34	764298346	1985-05-19	92347502X
9	Ulises	Portales	Quispe	up.quispe@mail.org	34	743456573	1988-01-17	29034509Q
10	Martín	Maldonado	Castro	marmaca00@gmail.com	34	620773412	2000-02-07	59410465Q
11	Pablo	Jorda	\N	pablojorda90@gmail.com	34	531009677	2003-07-23	93037013N
12	Cristian	García	Cantabria	crisgarcan93@gmail.com	34	948012377	1993-07-20	04265798B
13	Miguel Ángel 	Ledesma	Anillo	miguelangel.ledesma@hotmail.com	34	666720412	1970-03-22	12199979C
14	Angélica	Rey	\N	angelicareyq@hotmail.com	34	738202278	1972-08-11	14482182W
15	Luis 	Ledesma	Acosta	luisito_ledesma98@gmail.com	34	743535329	1998-06-30	47763259X
16	Renzo	Belon	\N	renzobelon@hotmail.com	34	662200403	1985-07-07	76641167S
17	Katherine 	Bluer	\N	kateblue@hotmail.com	34	879111365	1988-12-06	48094905L
18	Mateo	Ruiz	Trujillo	mateo.ruiz_trujillo@yahoo.com	34	744102977	1974-08-19	01436730N
19	Ricardo	Rossi	\N	ricarossi99@gmail.com	34	899391048	1999-01-30	92074524G
20	John	Doe	Cooper	john.doe@example.com	34	849127904	1970-08-12	12385025T
21	Alice	Cooper	\N	alice.cooper@music.org	34	395018302	1960-05-03	10475049E
22	Jefferson	Cooper	\N	jeffcooper90@gmail.com	34	608826576	1990-05-12	85851455E
23	Masanso	Tejada	\N	gt.coronado@mail.org	34	781938594	1990-05-14	43209548V
24	Ana Lucía	Cornejo	Paredes	ac.paredes@mail.org	34	602888990	1991-02-12	97534485K
25	Leonardo	Tejada	Cornejo	lt.lozano@mail.org	34	911800000	2001-04-23	84739289N
26	Carlos	Mateo	\N	carlosmateo.vae@hotmail.es	34	797835500	1990-05-17	98842669P
27	Rebecca	Pines	\N	becca.pines@yahoo.com	34	230748797	1986-06-06	59662279A
28	Gustavo	Acc	\N	gustavoacc07@yahoo.com	34	968400889	1986-02-02	31816363A
29	Inmaculada	Granell	Franco	inma_granell80@hotmail.com	34	681371795	1979-08-24	11166260J
30	Corina	Valero	Granell	corina_valgra@gmail.com	34	520078058	1990-10-21	73044876G
31	Esmeralda	Valero	Granell	esme_valgra@gmail.com	34	988846850	2000-09-09	26487326C
32	Erika	Coronel	\N	ecoronel368@hotmail.com	34	785657064	1959-12-03	36735743M
33	Joan	Roig	Casado	redjohn@hotmail.com	34	783357999	1983-09-14	56565155J
34	Rosalia	Sumbiela	del Pino	rosalia_sumbiela@hotmail.com	34	245956519	1987-02-19	35164153M
35	Ravi	Singh	\N	ravi_singh@yahoo.com	34	424649296	1994-09-12	62000855P
36	Shaila	Gupta-Singh	\N	shaila_gupta.singh@hotmail.com	34	925094841	1991-01-14	46535516F
37	Esperanza	Montoya	Escobar	espemontoya@yahoo.com	34	609329447	1998-11-03	58529701Z
38	Renzo	Acevedo	Gonzalez	renzo_crack02@gmail.com	34	963218800	2002-06-19	70828988M
39	Belén	Villegas 	Valenzuela	belenvilval@hotmail.com	34	706345980	1995-08-30	95515925F
40	Suzanne	Woods	\N	susiewoods@hotmail.com	34	838995560	1981-05-08	25332987M
41	Melvin	Woods	\N	melvinwoods79@yahoo.com	34	378897321	1979-07-07	98192302N
42	Nicolás	Perez 	Perez	nikoperez2@hotmail.com	34	948213091	1993-08-06	75319865V
43	Eusebio	Gómez	Braille	eusebio_gombra@gmail.com	34	936459554	1980-10-10	87626347G
44	Raúl	Manrique	Seminario	raul.manrique@hotmail.com	34	482057334	1985-02-15	93710295H
45	Gabriela	Camacho	Peralta	gaby.camacho@yahoo.com	34	947104722	1980-03-06	73017594G
46	Aaron	White	\N	aaron_white99@gmail.com	34	418320119	1999-03-01	56570285Z
47	Janice	Simpson	\N	janice.simpson@gmail.com	34	820247273	2002-08-22	95010162Z
48	Isabel	Pacheco	Tapia	sabel.pacheco@gmail.com	34	973458646	1973-11-24	04602000E
49	Brian	Adams	\N	brian.adams@yahoo.com	34	687909832	1985-07-13	90158168P
50	Kevin	Durant	\N	kevin.durant@hotmail.com	34	659768643	1998-04-30	43860950L
51	Lara	Herrera 	Espinoza	lara.herrera@gmail.com	34	885355937	1998-09-05	90763073J
52	Daniela	Herrera	Espinoza	daniela.herrera@yahoo.com	34	618985569	1995-12-17	94368182X
53	Isaac	Wells	\N	isaac.wells@yahoo.com	34	650558180	2003-10-11	26033775Y
54	Jordi	Cruz	Silva	jordi.cruz@hotmail.com	34	921160077	1983-01-09	56861626Z
55	Nestor	Aguilar	Peralta	nestor.aguilar@gmail.com	34	428143794	2001-08-19	84935712R
56	Héctor	Aguilar 	Peralta	hector.aguilar@yahoo.com	34	597799321	2002-03-26	47445025G
57	Adela	Peralta	Vega	adela.peralta@hotmail.com	34	675271514	1978-05-31	72922555C
58	Santiago	Aguilar	Viga	santiago.aguilar@gmail.com	34	454348597	1982-11-02	15907991H
59	Johan	Karel	\N	johan.karel@hotmail.com	34	612706702	2005-01-07	04739439J
60	Zhang	Wei	\N	zhang.wei@gmail.com	34	563161537	1997-09-14	24950067N
61	Li 	Min	\N	li.min@yahoo.com	34	966921832	1994-12-28	29464744L
62	Diego	Salazar	Torres	diego.salazar@yahoo.com	34	864752808	2000-03-18	03325587V
63	Alejandro	Allende	Alarjón	alejandro.allende@hotmail.com	34	385702989	1971-10-22	43566488A
64	Patricia	Vargas	Llosa	patricia.vargas@gmail.com	34	950449355	1984-08-06	48985645S
65	Sandra	Kostas	\N	sandra.kostas@yahoo.com	34	931104488	1996-02-15	98991792E
66	Olga	Kovalenko	\N	olga.kovalenko@hotmail.com	34	685622617	1979-12-03	46288180J
67	Irene	Nowak	\N	irene.nowak@gmail.com	34	221517010	1991-05-07	76102441H
68	Ainhoa	Otxoa	Aguirre	ainhoa.otxoa@yahoo.com	34	232771577	1981-07-20	39315828L
69	Lourdes	Cortez	Ibaéz	lourdes.cortez@hotmail.com	34	305742964	2002-09-28	24706023K
70	Javier	Fernandez	Ochoa	javier.fernandez@gmail.com	34	700963196	1975-01-16	20163152H
71	Joaquin	Ramirez	Gutiérrez	joaquin.ramirez@yahoo.com	34	645162565	1999-11-23	01720623Q
72	Ernesto	Delgado	Fernández	ernesto.delgado@hotmail.com	34	303689487	2004-06-01	54914007N
73	Sonia	Castillo	González	sonia.castillo@yahoo.com	34	107627021	1986-09-27	10500290P
74	Consuelo	Herrera	Sánchez	consuelo.herrera@hotmail.com	34	631995879	1994-04-05	54307628M
75	Oscar	Peralta	Molina	oscar.peralta@gmail.com	34	771009861	1989-10-13	93204137H
76	Raúl	Dominguez	Ortiz	raul.dominguez@hotmail.com	34	932343024	1991-03-03	52223455T
77	Paula	Martínez	Castro	paula.martinez@gmail.com	34	401116309	2002-11-30	41363919Y
78	Salvador	Serrano	Jiménez	salvador.serrano@yahoo.com	34	807279974	1982-06-15	79453724V
79	Nuría	Rodríguez	Salvador	nuria.rodriguez@hotmail.com	34	776287829	1976-09-02	58433795H
80	Victor	López	Sacastume	victor.lopez@gmail.com	34	409966769	1997-01-12	61744063B
81	Silvia	Morales	Corazón	silvia.morales@yahoo.com	34	237827162	2004-05-20	78128952E
82	Palmira	Villa	Escribano	palmivilla@hotmail.com	34	865214590	1978-02-23	04563677V
83	Jose Luís	Salas	Ibarra	jlsalas@yahoo.com	34	690144670	1953-12-13	75920194T
84	Pablo	Gil 	Ramos	pablogil01@gmail.com	34	690444219	2001-09-03	39496103C
85	Margaret	Keller	\N	maggie_keller@hotmail.com	34	604303117	1973-03-14	54266227G
86	Gustavo	Madera	Nieto	gus.madera@hotmail.com	34	888336712	1977-04-21	72534248E
87	Arturo	Quevedo	Robles	quevedo_robles@hotmail.com	34	878136330	1972-04-29	97585098P
88	Antonio	Gonzaga	Claro	antonio_gonzaga@yahoo.es	34	540997802	1967-09-11	22137770V
89	Erika	Tapia	Rosales	erika.tapia_rosales@hotmail.com	34	744219387	1968-01-29	80073680P
90	Andrea	Molina	Acosta	dreamoac@yahoo.es	34	967003461	1986-12-24	97545284F
91	Bruno	Herrera	Soler	bruno.herrera@hotmail.com	34	463069515	1978-02-28	30974704Y
92	Miriam	Espinoza	Castillo	miriam.espinoza@gmail.com	34	617053614	1974-06-22	40786311C
93	François	Moreau	\N	francois.moreau@yahoo.com	34	549773458	1990-07-25	06200942G
94	Huang 	Wei	\N	huang.wei@hotmail.com	34	624346802	1976-04-03	01017494C
95	Elena	Montoya	Pérez	elena.montoya@gmail.com	34	966251384	1972-03-11	41794147L
96	Germán	Vargas	Díaz	german.vargas@yahoo.com	34	192719340	1977-08-08	31136436W
97	Esteban	Lozano	del Rio	eldelrio92@gmail.com	34	803553902	1992-03-07	49751664L
98	Chen	Min	\N	chen.min@gmail.com	34	197208276	1973-06-10	05009487H
99	Adriana	Navarro	Villa	adrian.navarro@hotmail.com	34	912257767	1983-04-14	41318419T
100	Francisco	Lombardi	Galarreta	francisco.lombardi@ejemplo.net	34	999666111	1969-08-09	11928436U
101	Humberto	Campodónico	Linares	hc.linares@yahoo.es	34	716749252	1972-09-23	11155577Y
102	Tatiana	Rey	Tello	trtello@pucp.edu.es	34	618573026	1983-12-01	73291043U
103	Mauricio	Chávez	Vizcarra	mcvizcarra@gmail.com	34	916505126	1999-09-19	11222712B
104	Martina	Carranza	Romero	mcromero@altavista.net	34	777123940	1975-06-01	11109874H
105	Amapola	Miranda	Málaga	amapola.mm@correo.com	34	683055026	1969-03-29	16852244F
106	Daniela	Quezada	Alegría	dqalegria@gmail.com	34	777111999	2001-11-22	61999991V
107	Emilio	Miranda	López	emlopez@hotmail.com	34	666111000	2002-12-23	11000222Y
108	Annette	Dubois	Jiménez	adjimenez	34	888550192	2003-01-03	72934798Q
109	Bruno	Palomino	Vélez	bruno.palomino@hotmail.com	34	5017902377	1985-04-04	59128374D
110	Omar	Quezada	Machiavello	omar.quezada@hotmail.com	34	3429875460	1975-05-07	93094857W
\.


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.people_id_seq', 111, true);


--
-- Name: people people_dni_key; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_dni_key UNIQUE (dni);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

