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
-- Name: announces; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.announces (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    building_id integer NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL
);


ALTER TABLE public.announces OWNER TO renzobelon;

--
-- Name: announces_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.announces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.announces_id_seq OWNER TO renzobelon;

--
-- Name: announces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.announces_id_seq OWNED BY public.announces.id;


--
-- Name: announces id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.announces ALTER COLUMN id SET DEFAULT nextval('public.announces_id_seq'::regclass);


--
-- Data for Name: announces; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.announces (id, title, description, building_id, date, "time") FROM stdin;
1	Corte de agua	Aviso de corte de agua por mantenimiento.	1	2024-02-01	08:30:00
2	Recordatorio de reunión de vecinos	La tarde del 9 a las 18:00 reunión de vecinos en la planta baja.	1	2024-02-07	16:00:00
3	Aviso de obras en la finca	Durante la semana del 12 al 18 se realizaran obras en la terraza del edificio	1	2024-02-10	09:00:00
4	Aviso sobre nuevas normativas	No se permitirá dejar las bolsas de basura afuera de las puertas	1	2024-03-01	10:30:00
5	Mantenimiento	Se revisará el ascensor durante la mañana del 21	1	2024-02-10	09:00:00
6	Aviso de seguridad	Les recordamos no dejar abierta la puerta principal de la entrada	1	2024-03-09	09:40:00
7	Convocatoria para formar comités	Invitación a los vecinos interesados a formar parte de comités de trabajo el día 24 de Mayo a las 20:00pm	1	2024-01-08	09:30:00
8	Recordatorio de pago de cuotas	Recordatorio a todos los vecinos que tienen hasta el 3 de Mayo para pagar las cuotas de mantenimiento	1	2024-01-17	10:00:00
9	Aviso sobre cierre de áreas comunes	El día 15 de Abril la zona humeda permanecerá cerrada	1	2024-02-15	16:30:00
10	Aviso sobre reformas	El día 14 de Mayo empiezan las reformas en el rellano del segundo piso.	1	2024-02-19	09:30:00
11	Mantenimiento	Revisión de contadores de la luz el dia 06.	2	2024-02-02	08:30:00
12	Anuncio de inspección de seguridad	Se informa a los residentes que se llevará a cabo una inspección de seguridad en la finca.	2	2024-03-09	12:00:00
13	Recordatorio de reunión de vecinos	La tarde del 29 a las 18:00 reunión de vecinos en la planta baja.	2	2024-03-17	18:30:00
14	Aviso de corte de agua programado	Se informa a los residentes que el suministro de agua será interrumpido temporalmente para realizar trabajos de mantenimiento en las tuberías.	2	2024-04-27	21:30:00
15	Mantenimiento	Por revisión del tendido eléctrico durante el día 15 la luz permanecerá cortada entre las 10:00 y las 12:00 en toda la finca.	2	2024-03-12	21:30:00
16	Aviso de seguridad	Les recordamos no dejar abierta la puerta principal por su seguridad.	2	2024-04-01	10:45:00
17	Recordatorio	La tarde del 25 a las 19:00 reunión de vecinos en la planta baja.	2	2024-04-22	19:15:00
18	Mantenimiento	La piscina permanecerá cerrada para su limpieza los días 29-30.	2	2024-04-27	10:30:00
\.


--
-- Name: announces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.announces_id_seq', 19, true);


--
-- Name: announces announces_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.announces
    ADD CONSTRAINT announces_pkey PRIMARY KEY (id);


--
-- Name: announces fk_building_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.announces
    ADD CONSTRAINT fk_building_id FOREIGN KEY (building_id) REFERENCES public.buildings(id);


--
-- PostgreSQL database dump complete
--

