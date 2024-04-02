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
-- Name: owners_to_properties; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.owners_to_properties (
    property_id integer NOT NULL,
    owner_dni character varying(55) NOT NULL
);


ALTER TABLE public.owners_to_properties OWNER TO renzobelon;

--
-- Data for Name: owners_to_properties; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.owners_to_properties (property_id, owner_dni) FROM stdin;
1	04563677V
2	75920194T
3	39496103C
4	54266227G
5	11928436U
6	14482182W
7	76641167S
8	72534248E
9	97585098P
10	12385025T
11	22137770V
12	80073680P
13	11166260J
14	36735743M
15	56565155J
16	56565155J
17	49751664L
18	25332987M
19	87626347G
20	56565155J
21	97545284F
22	72922555C
23	43860950L
24	30974704Y
25	40786311C
26	40786311C
27	40786311C
28	06200942G
29	01017494C
30	03325587V
31	05009487H
32	46288180J
33	39315828L
34	05009487H
35	41794147L
36	05009487H
37	31136436W
38	31136436W
39	41318419T
40	41318419T
41	11155577Y
61	73291043U
81	11222712B
101	11109874H
121	16852244F
141	61999991V
161	11000222Y
181	72934798Q
\.


--
-- Name: owners_to_properties owners_to_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.owners_to_properties
    ADD CONSTRAINT owners_to_properties_pkey PRIMARY KEY (property_id, owner_dni);


--
-- Name: owners_to_properties fk_owner_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.owners_to_properties
    ADD CONSTRAINT fk_owner_dni FOREIGN KEY (owner_dni) REFERENCES public.people(dni);


--
-- Name: owners_to_properties fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.owners_to_properties
    ADD CONSTRAINT fk_property_id FOREIGN KEY (property_id) REFERENCES public.properties(id);


--
-- PostgreSQL database dump complete
--

