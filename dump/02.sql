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
-- Name: providers; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.providers (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    category character varying(255),
    phone_code character varying(55) NOT NULL,
    phone_number character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public.providers OWNER TO renzobelon;

--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.providers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.providers_id_seq OWNER TO renzobelon;

--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);


--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.providers (id, title, description, category, phone_code, phone_number, email) FROM stdin;
1	Electromaster LCC	Profesional especializado en la instalación, mantenimiento y reparación de sistemas eléctricos en la finca de arrendatarios. Puede encargarse de resolver problemas eléctricos, instalar nuevas conexiones y asegurar que el sistema eléctrico funcione de manera segura y eficiente.	Electricista	34	904119141	electricidadjuan@example.com
2	Juan Marqués Fontaneros	Experto en instalación y reparación de sistemas de fontanería. Se encarga de mantener en buen estado las tuberías, grifos, sanitarios y otros elementos relacionados con el suministro y drenaje de agua en la finca.	Fontanería	34	985786758	fontaneriaroberto@example.com
3	Flormás Jardinería	Profesional encargado del diseño, mantenimiento y cuidado de áreas verdes y jardines en la finca. Su trabajo incluye poda, fertilización, riego y control de plagas para mantener los espacios exteriores en óptimas condiciones estéticas y funcionales.	Jardinería y Paisajismo	34	946839233	paisajismomaria@example.com
4	Mister Limpieza Co. 	Empresa o equipo especializado en la limpieza y mantenimiento de espacios interiores y exteriores de la finca. Puede ofrecer servicios de limpieza regular, limpieza profunda, eliminación de residuos y gestión de la higiene en áreas comunes.	Limpieza	34	947438292	limpiezaprofesional@example.com
5	PoolClean Service	Profesionales dedicados al mantenimiento y limpieza de piscinas en la finca. Su labor incluye el equilibrio químico del agua, limpieza de filtros, reparación de equipos y aseguramiento de la seguridad en el área de la piscina.	Mantenimiento de Piscinas	34	947444822	piscinasclean@example.com
6	Galp S.A	Suministra gas licuado de petróleo (GLP) para uso doméstico o comercial en la finca de arrendatarios. Se encarga de la instalación, mantenimiento y reposición de los tanques de gas, así como de asegurar un suministro continuo y seguro de este combustible.	Gas	34	935648302	gasfiable@example.com
7	Save&Sound Security	Empresa especializada en brindar seguridad física y patrullaje en la finca de arrendatarios. Puede ofrecer vigilancia las 24 horas del día, control de acceso, monitoreo de cámaras de seguridad y respuesta rápida ante situaciones de emergencia o intrusión.	Seguridad	34	927657493	seguridadtotal@example.com
8	Nomasplagas S.L	Profesionales encargados de identificar, prevenir y controlar infestaciones de plagas como insectos, roedores y otros organismos no deseados en la finca. Utilizan métodos seguros y efectivos para proteger las instalaciones y la salud de los arrendatarios.	Control de Plagas	34	968374392	controlplagas@example.com
9	Conexiones Telenet	Empresa que ofrece servicios de conexión a internet, telefonía fija y móvil en la finca de arrendatarios. Puede proporcionar planes de internet de alta velocidad, líneas telefónicas y paquetes de televisión por cable o satélite según las necesidades de los residentes.	Internet y Telecomunicaciones	34	928265658	internetrapido@example.com
10	FontanerosMartinez S.L	Profesionales especializados en la instalación, mantenimiento y reparación de sistemas de fontanería en la finca. Se encargan de resolver problemas de fugas, atascos y mal funcionamiento en las tuberías de agua potable y desagüe.	Fontanería	34	927465645	fontaneroexpress@example.com
11	Climateros S.L	Empresa dedicada a la instalación y mantenimiento de sistemas de climatización y aire acondicionado en la finca. Su labor incluye la revisión periódica de equipos, reparación de averías y garantizar un ambiente confortable en todas las estaciones del año.	Climatización y Aire Acondicionado	34	694754833	climatizacioncool@example.com
12	Boor Studio	Ofrece servicios de construcción, remodelación y reparación de estructuras en la finca. Puede encargarse de proyectos de ampliación, renovación de interiores, reparación de techos y otras obras de mantenimiento y mejora.	Construcción y Reparaciones	34	603938474	construrepara@example.com
13	Administradoresromero S.L	Empresa especializada en la gestión integral de propiedades de alquiler, incluida la finca de arrendatarios. Proporciona servicios como cobro de alquileres, mantenimiento de registros, coordinación de reparaciones y comunicación con los arrendatarios.	Administración de Propiedades	34	643830292	adminpropiedades@example.com
14	Landscapes S.A	Profesionales que ofrecen servicios de diseño y planificación de espacios exteriores en la finca. Se encargan de crear ambientes estéticamente agradables y funcionales mediante la selección de plantas, mobiliario de exterior y elementos decorativos.	Paisajismo y Diseño de Exteriores	34	618339234	exteriordesign@example.com
15	Basureros Muñoz S.L	Empresa encargada de la recolección y disposición adecuada de los residuos generados en la finca. Proporciona contenedores adecuados para la separación de residuos reciclables y no reciclables, así como su recolección periódica.	Recolección de Basura y Residuos	34	603874492	reciclajeservicio@example.com
16	CleanAires S.L	Especialistas en la limpieza y mantenimiento de conductos de aire acondicionado, calefacción y ventilación en la finca. Eliminan la acumulación de polvo, suciedad y contaminantes para mejorar la calidad del aire interior y el rendimiento de los sistemas de climatización.	Limpieza de Conductos de Aire	34	603827284	airepuro@example.com
17	TecMaster Electrodomésticos	Técnicos especializados en la reparación de electrodomésticos en la finca, como lavadoras, refrigeradores, hornos, entre otros. Ofrecen diagnóstico de averías, piezas de repuesto y reparaciones rápidas para garantizar el funcionamiento óptimo de los aparatos.	Reparación de Electrodomésticos	34	619282744	reparaelectro@example.com
18	Bob el Constructor Servicio	Empresa que suministra materiales de construcción para proyectos de mantenimiento, reparación o renovación en la finca. Ofrece una amplia gama de materiales como cemento, madera, azulejos, pinturas y herramientas para satisfacer las necesidades de construcción.	Materiales de Construcción	34	923827734	materialconstruccion@example.com
19	La Alfombra Mágica S.L	Profesionales especializados en la limpieza y mantenimiento de alfombras, tapicería y muebles tapizados en la finca. Utilizan técnicas y productos específicos para eliminar manchas, olores y suciedad, prolongando la vida útil de estos elementos.	Limpieza de Alfombras y Tapicería	34	692832742	alfombraslimpias@example.com
20	Techados Pérez S.L	Empresa encargada del mantenimiento y reparación de techos en la finca. Realiza inspecciones periódicas, reparación de goteras, limpieza de canalones y reemplazo de tejas o materiales dañados para garantizar la integridad estructural del edificio.	Mantenimiento de Techos	34	929428400	techomantenimiento@example.com
\.


--
-- Name: providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.providers_id_seq', 1, false);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

