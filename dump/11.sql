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
-- Name: banking_transactions; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.banking_transactions (
    id integer NOT NULL,
    account_id integer,
    property_id integer,
    description text,
    category character varying(255),
    date date,
    "time" time without time zone,
    amount numeric(10,2),
    building_id integer
);


ALTER TABLE public.banking_transactions OWNER TO renzobelon;

--
-- Name: banking_transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.banking_transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banking_transactions_id_seq OWNER TO renzobelon;

--
-- Name: banking_transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.banking_transactions_id_seq OWNED BY public.banking_transactions.id;


--
-- Name: banking_transactions id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.banking_transactions ALTER COLUMN id SET DEFAULT nextval('public.banking_transactions_id_seq'::regclass);


--
-- Data for Name: banking_transactions; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.banking_transactions (id, account_id, property_id, description, category, date, "time", amount, building_id) FROM stdin;
1	1	\N	depósito inicial	caja chica	2022-12-01	10:53:19	10000.00	1
2	1	\N	pintado de paredes	servicios	2022-12-10	14:06:44	-2000.00	1
3	1	\N	acondicionamiento tuberías	servicios	2022-12-12	16:43:11	-3000.00	1
4	1	\N	limpieza geneal	limpieza	2022-12-28	11:20:35	-1500.00	1
5	1	\N	consumo de electricidad	luz	2023-01-23	12:19:07	-750.45	1
6	1	\N	consumo de agua	agua	2023-01-24	09:48:59	-200.20	1
7	1	\N	consumo de gas	gas	2023-01-24	15:32:25	-210.75	1
8	1	\N	servicio de limpieza	limpieza	2023-01-25	10:29:02	-200.00	1
9	1	\N	servicio de cerrajeria	cerrajeria	2023-01-26	17:10:41	-225.00	1
10	1	\N	servicio de gasfiteria	gasfiteria	2023-01-30	13:07:18	-270.00	1
11	1	\N	servicio de electricista	mantenimiento	2023-01-29	16:21:53	-310.00	1
12	1	1	1 - 1	comunidad	2023-01-31	14:48:29	120.00	1
13	1	2	1 - 2	comunidad	2023-01-02	11:56:09	120.00	1
14	1	3	1 - 3	comunidad	2023-01-03	10:04:38	120.00	1
15	1	4	1 - 4	comunidad	2023-01-04	13:50:56	120.00	1
16	1	5	2 - 5	comunidad	2023-01-05	09:36:47	120.00	1
17	1	6	2 - 6	comunidad	2023-01-06	12:53:20	120.00	1
18	1	7	2 - 7	comunidad	2023-01-07	17:26:39	120.00	1
19	1	8	2 - 8	comunidad	2023-01-08	15:55:01	120.00	1
20	1	9	3 - 9	comunidad	2023-01-09	10:17:29	120.00	1
21	1	10	3 - 10	comunidad	2023-01-10	16:05:49	120.00	1
22	1	11	3 - 11	comunidad	2023-01-11	11:43:30	120.00	1
23	1	12	3 - 12	comunidad	2023-01-12	14:25:51	120.00	1
24	1	13	4 - 13	comunidad	2023-01-13	09:57:34	140.00	1
25	1	14	4 - 14	comunidad	2023-01-14	13:32:10	140.00	1
26	1	15	4 - 15	comunidad	2023-01-15	12:41:02	140.00	1
27	1	16	4 - 16	comunidad	2023-01-16	15:19:31	140.00	1
28	1	\N	consumo de electricidad	luz	2023-02-10	10:46:11	-750.68	1
29	1	\N	consumo de agua	agua	2023-02-10	16:30:37	-210.87	1
30	1	\N	consumo de gas	gas	2023-02-10	11:09:22	-220.23	1
31	1	\N	servicio de limpieza	limpieza	2023-02-11	17:55:49	-200.00	1
32	1	\N	reparacion de ascensor	mantenimiento	2023-02-11	09:25:03	-980.00	1
33	1	1	1 - 1	comunidad	2023-02-12	14:14:24	120.00	1
34	1	2	1 - 2	comunidad	2023-02-12	12:32:58	120.00	1
35	1	3	1 - 3	comunidad	2023-02-13	15:08:20	120.00	1
36	1	4	1 - 4	comunidad	2023-02-14	10:02:39	120.00	1
37	1	5	2 - 5	comunidad	2023-02-14	16:15:05	120.00	1
38	1	6	2 - 6	comunidad	2023-02-15	11:39:14	120.00	1
39	1	7	2 - 7	comunidad	2023-02-16	13:54:53	120.00	1
40	1	8	2 - 8	comunidad	2023-02-17	09:42:19	120.00	1
41	1	9	3 - 9	comunidad	2023-02-17	17:40:35	120.00	1
42	1	10	3 - 10	comunidad	2023-02-18	14:36:21	120.00	1
43	1	11	3 - 11	comunidad	2023-02-19	12:59:06	120.00	1
44	1	12	3 - 12	comunidad	2023-02-20	15:44:16	120.00	1
45	1	13	4 - 13	comunidad	2023-02-21	10:22:47	140.00	1
46	1	14	4 - 14	comunidad	2023-02-22	16:52:12	140.00	1
47	1	15	4 - 15	comunidad	2023-02-23	11:29:02	140.00	1
48	1	16	4 - 16	comunidad	2023-02-24	13:16:18	140.00	1
49	1	\N	consumo de electricidad	luz	2023-03-06	09:51:34	-770.32	1
50	1	\N	consumo de agua	agua	2023-03-07	14:03:11	-210.20	1
51	1	\N	consumo de gas	gas	2023-03-08	17:15:39	-220.75	1
52	1	\N	servicio de limpieza	limpieza	2023-03-09	12:23:59	-200.00	1
53	1	\N	servicio de fumigación	fumigacion	2023-03-10	15:03:25	-200.00	1
54	1	1	1 - 1	comunidad	2023-03-13	10:35:49	120.00	1
55	1	2	1 - 2	comunidad	2023-03-14	16:26:33	120.00	1
56	1	3	1 - 3	comunidad	2023-03-15	11:48:07	120.00	1
57	1	4	1 - 4	comunidad	2023-03-16	13:43:56	120.00	1
58	1	5	2 - 5	comunidad	2023-03-17	09:34:28	120.00	1
59	1	6	2 - 6	comunidad	2023-03-20	14:17:02	120.00	1
60	1	7	2 - 7	comunidad	2023-03-21	17:33:44	120.00	1
61	1	8	2 - 8	comunidad	2023-03-22	12:47:29	120.00	1
62	1	9	3 - 9	comunidad	2023-03-23	15:24:13	120.00	1
63	1	10	3 - 10	comunidad	2023-03-24	10:12:47	120.00	1
64	1	11	3 - 11	comunidad	2023-03-27	16:04:01	120.00	1
65	1	12	3 - 12	comunidad	2023-03-28	11:54:32	120.00	1
66	1	13	4 - 13	comunidad	2023-03-29	13:26:05	140.00	1
67	1	14	4 - 14	comunidad	2023-03-30	09:45:51	140.00	1
68	1	15	4 - 15	comunidad	2023-03-31	14:09:30	140.00	1
69	1	16	4 - 16	comunidad	2023-03-31	17:27:02	140.00	1
70	1	\N	consumo de electricidad	luz	2023-04-06	12:50:36	-800.77	1
71	1	\N	consumo de agua	agua	2023-04-07	15:41:23	-210.15	1
72	1	\N	consumo de gas	gas	2023-04-10	10:27:57	-200.93	1
73	1	\N	servicio de limpieza	limpieza	2023-04-11	16:19:32	-200.00	1
74	1	\N	reparación de tuberías	gasfiteria	2023-04-12	11:58:14	-200.00	1
75	1	\N	mantenimiento ascensor	ascensor	2023-04-13	13:38:40	-300.00	1
76	1	\N	cambio de bombillas	electricista	2023-04-14	09:37:23	-100.00	1
77	1	1	1 - 1	comunidad	2023-04-17	14:02:59	120.00	1
78	1	1	1 - 2	comunidad	2023-04-18	17:16:37	120.00	1
79	1	1	1 - 3	comunidad	2023-04-19	12:56:14	120.00	1
80	1	1	1 - 4	comunidad	2023-04-20	15:29:01	120.00	1
81	1	1	2 - 5	comunidad	2023-04-21	10:08:42	120.00	1
82	1	1	2 - 6	comunidad	2023-04-24	16:01:30	120.00	1
83	1	1	2 - 7	comunidad	2023-04-25	11:46:07	120.00	1
84	1	1	2 - 8	comunidad	2023-04-26	13:21:51	120.00	1
85	1	1	3 - 9	comunidad	2023-04-27	09:43:29	120.00	1
86	1	1	3 - 10	comunidad	2023-04-28	14:20:09	120.00	1
87	1	1	3 - 11	comunidad	2023-04-21	17:34:56	120.00	1
88	1	1	3 - 12	comunidad	2023-04-24	12:43:37	120.00	1
89	1	1	4 - 13	comunidad	2023-04-25	15:12:16	140.00	1
90	1	1	4 - 14	comunidad	2023-04-26	10:33:04	140.00	1
91	1	1	4 - 15	comunidad	2023-04-27	16:24:57	140.00	1
92	1	1	4 - 16	comunidad	2023-04-28	11:52:35	140.00	1
93	1	\N	consumo de electricidad	luz	2023-05-06	13:48:15	-770.89	1
94	1	\N	consumo de agua	agua	2023-05-09	09:56:51	-205.62	1
95	1	\N	consumo de gas	gas	2023-05-10	16:47:21	-205.10	1
96	1	\N	servicio de limpieza	limpieza	2023-05-11	14:32:04	-200.00	1
97	1	\N	reparación de rampas	reparaciones	2023-05-12	11:45:51	-200.00	1
98	1	1	1 - 1	comunidad	2023-05-15	12:57:19	120.00	1
99	1	2	1 - 2	comunidad	2023-05-16	09:29:49	120.00	1
100	1	3	1 - 3	comunidad	2023-05-17	17:34:58	120.00	1
101	1	4	1 - 4	comunidad	2023-05-18	10:48:37	120.00	1
102	1	5	2 - 5	comunidad	2023-05-19	15:59:12	120.00	1
103	1	6	2 - 6	comunidad	2023-05-22	13:09:28	120.00	1
104	1	7	2 - 7	comunidad	2023-05-23	09:58:53	120.00	1
105	1	8	2 - 8	comunidad	2023-05-24	16:12:45	120.00	1
106	1	9	3 - 9	comunidad	2023-05-25	11:33:09	120.00	1
107	1	10	3 - 10	comunidad	2023-05-26	12:43:53	120.00	1
108	1	11	3 - 11	comunidad	2023-05-29	09:53:20	120.00	1
109	1	12	3 - 12	comunidad	2023-05-30	17:21:47	120.00	1
110	1	13	4 - 13	comunidad	2023-05-31	10:36:22	140.00	1
111	1	14	4 - 14	comunidad	2023-05-29	15:47:03	140.00	1
112	1	15	4 - 15	comunidad	2023-05-30	13:25:41	140.00	1
113	1	16	4 - 16	comunidad	2023-05-31	09:37:57	140.00	1
114	1	\N	consumo de electricidad	luz	2023-06-06	16:51:36	-760.22	1
115	1	\N	consumo de agua	agua	2023-06-07	11:58:08	-205.55	1
116	1	\N	consumo de gas	gas	2023-06-08	12:30:55	-205.38	1
117	1	\N	servicio de limpieza	limpieza	2023-06-09	09:26:33	-200.00	1
118	1	1	1 - 1	comunidad	2023-06-12	17:05:18	120.00	1
119	1	2	1 - 2	comunidad	2023-06-13	10:17:44	120.00	1
120	1	3	1 - 3	comunidad	2023-06-14	15:40:29	120.00	1
121	1	4	1 - 4	comunidad	2023-06-15	13:21:06	120.00	1
122	1	5	2 - 5	comunidad	2023-06-16	09:41:55	120.00	1
123	1	6	2 - 6	comunidad	2023-06-19	16:58:29	120.00	1
124	1	7	2 - 7	comunidad	2023-06-20	11:52:13	120.00	1
125	1	8	2 - 8	comunidad	2023-06-21	12:36:54	120.00	1
126	1	9	3 - 9	comunidad	2023-06-22	09:49:16	120.00	1
127	1	10	3 - 10	comunidad	2023-06-23	17:15:27	120.00	1
128	1	11	3 - 11	comunidad	2023-06-26	10:29:05	120.00	1
129	1	12	3 - 12	comunidad	2023-06-27	15:53:33	120.00	1
130	1	13	4 - 13	comunidad	2023-06-28	13:17:49	140.00	1
131	1	14	4 - 14	comunidad	2023-06-29	09:39:10	140.00	1
132	1	15	4 - 15	comunidad	2023-06-30	16:37:21	140.00	1
133	1	16	4 - 16	comunidad	2023-06-30	11:47:04	140.00	1
134	1	\N	consumo de electricidad	luz	2023-07-06	12:48:31	-890.56	1
135	1	\N	consumo de agua	agua	2023-07-07	09:27:28	-205.30	1
136	1	\N	consumo de gas	gas	2023-07-10	17:29:43	-215.82	1
137	1	\N	servicio de limpieza	limpieza	2023-07-11	10:22:57	-200.00	1
138	1	\N	mantenimiento ascensor	ascensor	2023-07-12	15:42:38	-200.00	1
139	1	1	1 - 1	comunidad	2023-07-13	13:13:22	120.00	1
140	1	2	1 - 2	comunidad	2023-07-14	09:46:19	120.00	1
141	1	3	1 - 3	comunidad	2023-07-17	16:44:57	120.00	1
142	1	4	1 - 4	comunidad	2023-07-18	11:53:25	120.00	1
143	1	5	2 - 5	comunidad	2023-07-19	12:41:02	120.00	1
144	1	6	2 - 6	comunidad	2023-07-20	09:54:49	120.00	1
145	1	7	2 - 7	comunidad	2023-07-21	17:07:38	120.00	1
146	1	8	2 - 8	comunidad	2023-07-24	10:26:19	120.00	1
147	1	9	3 - 9	comunidad	2023-07-25	15:58:43	120.00	1
148	1	10	3 - 10	comunidad	2023-07-26	13:05:29	120.00	1
149	1	11	3 - 11	comunidad	2023-07-27	09:31:58	120.00	1
150	1	12	3 - 12	comunidad	2023-07-28	16:22:34	120.00	1
151	1	13	4 - 13	comunidad	2023-07-25	11:49:05	140.00	1
152	1	14	4 - 14	comunidad	2023-07-26	12:33:43	140.00	1
153	1	15	4 - 15	comunidad	2023-07-27	09:57:16	140.00	1
154	1	16	4 - 16	comunidad	2023-07-28	17:16:12	140.00	1
155	1	\N	consumo de electricidad	luz	2023-08-06	10:19:52	-810.14	1
156	1	\N	consumo de agua	agua	2023-08-07	15:46:28	-210.43	1
157	1	\N	consumo de gas	gas	2023-08-08	13:20:17	-215.67	1
158	1	\N	servicio de limpieza	limpieza	2023-08-09	09:45:39	-200.00	1
159	1	\N	servicio de fumigacion	fumigacion	2023-08-10	16:41:22	-350.00	1
160	1	1	1 - 1	comunidad	2023-08-14	11:56:07	120.00	1
161	1	2	1 - 2	comunidad	2023-08-15	12:38:44	120.00	1
162	1	3	1 - 3	comunidad	2023-08-16	09:25:17	120.00	1
163	1	4	1 - 4	comunidad	2023-08-17	17:25:51	120.00	1
164	1	5	2 - 5	comunidad	2023-08-18	10:35:09	120.00	1
165	1	6	2 - 6	comunidad	2023-08-21	15:52:37	120.00	1
166	1	7	2 - 7	comunidad	2023-08-22	13:11:05	120.00	1
167	1	8	2 - 8	comunidad	2023-08-23	09:34:59	120.00	1
168	1	9	3 - 9	comunidad	2023-08-24	16:53:27	120.00	1
169	1	10	3 - 10	comunidad	2023-08-25	11:51:02	120.00	1
170	1	11	3 - 11	comunidad	2023-08-28	12:45:42	120.00	1
171	1	12	3 - 12	comunidad	2023-08-29	09:59:19	120.00	1
172	1	13	4 - 13	comunidad	2023-08-30	17:09:55	140.00	1
173	1	14	4 - 14	comunidad	2023-08-31	10:21:30	140.00	1
174	1	15	4 - 15	comunidad	2023-08-30	15:45:22	140.00	1
175	1	16	4 - 16	comunidad	2023-08-31	13:01:14	140.00	1
176	1	\N	consumo de electricidad	luz	2023-09-06	09:28:33	-775.79	1
177	1	\N	consumo de agua	agua	2023-09-07	16:35:44	-200.78	1
178	1	\N	consumo de gas	gas	2023-09-08	11:50:29	-190.25	1
179	1	\N	servicio de limpieza	limpieza	2023-09-11	12:40:07	-200.00	1
180	1	\N	servicio de gasfiteria	gasfiteria	2023-09-12	09:52:24	-200.00	1
181	1	\N	servicio de electricista	electricista	2023-09-13	17:03:59	-200.00	1
182	1	\N	servicio de cerrajeria	cerrajeria	2023-09-14	10:18:37	-100.00	1
183	1	1	1 - 1	comunidad	2023-09-15	15:51:11	120.00	1
184	1	2	1 - 2	comunidad	2023-09-18	13:08:29	120.00	1
185	1	3	1 - 3	comunidad	2023-09-19	09:43:05	120.00	1
186	1	4	1 - 4	comunidad	2023-09-20	16:59:32	120.00	1
187	1	5	2 - 5	comunidad	2023-09-21	11:54:23	120.00	1
188	1	6	2 - 6	comunidad	2023-09-22	12:32:53	120.00	1
189	1	7	2 - 7	comunidad	2023-09-25	09:56:40	120.00	1
190	1	8	2 - 8	comunidad	2023-09-26	17:11:59	120.00	1
191	1	9	3 - 9	comunidad	2023-09-27	10:24:49	120.00	1
192	1	10	3 - 10	comunidad	2023-09-28	15:48:33	120.00	1
193	1	11	3 - 11	comunidad	2023-09-29	13:14:59	120.00	1
194	1	12	3 - 12	comunidad	2023-09-25	09:47:17	120.00	1
195	1	13	4 - 13	comunidad	2023-09-26	16:38:28	140.00	1
196	1	14	4 - 14	comunidad	2023-09-27	11:57:51	140.00	1
197	1	15	4 - 15	comunidad	2023-09-28	12:42:25	140.00	1
198	1	16	4 - 16	comunidad	2023-09-29	09:30:04	140.00	1
199	1	\N	consumo de electricidad	luz	2023-10-06	17:18:08	-865.03	1
200	1	\N	consumo de agua	agua	2023-10-10	10:32:27	-205.95	1
201	1	\N	consumo de gas	gas	2023-10-11	15:57:59	-210.17	1
202	1	\N	servicio de limpieza	limpieza	2023-10-12	13:04:15	-200.00	1
203	1	\N	servicio de carpinteria	carpinteria	2023-10-13	09:55:12	-400.00	1
204	1	1	1 - 1	comunidad	2023-10-16	16:56:22	120.00	1
205	1	2	1 - 2	comunidad	2023-10-17	11:55:02	120.00	1
206	1	3	1 - 3	comunidad	2023-10-18	12:37:44	120.00	1
207	1	4	1 - 4	comunidad	2023-10-19	09:40:29	120.00	1
208	1	5	2 - 5	comunidad	2023-10-20	17:01:09	120.00	1
209	1	6	2 - 6	comunidad	2023-10-23	10:25:58	120.00	1
210	1	7	2 - 7	comunidad	2023-10-24	15:49:07	120.00	1
211	1	8	2 - 8	comunidad	2023-10-25	13:12:03	120.00	1
212	1	9	3 - 9	comunidad	2023-10-26	09:33:51	120.00	1
213	1	10	3 - 10	comunidad	2023-10-27	16:49:21	120.00	1
214	1	11	3 - 11	comunidad	2023-10-30	11:59:59	120.00	1
215	1	12	3 - 12	comunidad	2023-10-31	12:34:35	120.00	1
216	1	13	4 - 13	comunidad	2023-10-26	09:51:28	140.00	1
217	1	14	4 - 14	comunidad	2023-10-27	17:02:38	140.00	1
218	1	15	4 - 15	comunidad	2023-10-30	10:20:04	140.00	1
219	1	16	4 - 16	comunidad	2023-10-31	15:54:43	140.00	1
220	1	\N	consumo de electricidad	luz	2023-11-06	13:10:18	-785.27	1
221	1	\N	consumo de agua	agua	2023-11-07	09:38:47	-190.68	1
222	1	\N	consumo de gas	gas	2023-11-08	16:56:01	-215.49	1
223	1	\N	servicio de limpieza	limpieza	2023-11-09	11:57:28	-250.00	1
224	1	\N	pintado interior escaleras	pintura	2023-11-13	12:39:05	800.00	1
225	1	1	1 - 1	comunidad	2023-11-14	09:58:22	120.00	1
226	1	2	1 - 2	comunidad	2023-11-15	17:08:31	120.00	1
227	1	3	1 - 3	comunidad	2023-11-16	10:23:14	120.00	1
228	1	4	1 - 4	comunidad	2023-11-17	15:47:56	120.00	1
229	1	5	2 - 5	comunidad	2023-11-20	13:04:08	120.00	1
230	1	6	2 - 6	comunidad	2023-11-21	09:42:37	120.00	1
231	1	7	2 - 7	comunidad	2023-11-22	16:43:51	120.00	1
232	1	8	2 - 8	comunidad	2023-11-23	11:59:24	120.00	1
233	1	9	3 - 9	comunidad	2023-11-27	12:43:14	120.00	1
234	1	10	3 - 10	comunidad	2023-11-28	09:53:36	120.00	1
235	1	11	3 - 11	comunidad	2023-11-29	17:13:48	120.00	1
236	1	12	3 - 12	comunidad	2023-11-30	10:26:09	120.00	1
237	1	13	4 - 13	comunidad	2023-11-27	15:50:04	140.00	1
238	1	14	4 - 14	comunidad	2023-11-28	13:15:12	140.00	1
239	1	15	4 - 15	comunidad	2023-11-29	09:31:46	140.00	1
240	1	16	4 - 16	comunidad	2023-11-30	16:51:39	140.00	1
241	1	\N	consumo de electricidad	luz	2023-12-06	11:56:57	-795.71	1
242	1	\N	consumo de agua	agua	2023-12-07	12:35:19	-215.12	1
243	1	\N	consumo de gas	gas	2023-12-08	09:49:08	-205.33	1
244	1	\N	servicio de limpieza	limpieza	2023-12-11	17:09:41	-200.00	1
245	1	\N	reparacion tuberias	gasfiteria	2023-12-12	10:21:20	-600.00	1
246	1	\N	servicio de electricista	electricista	2023-12-13	15:49:48	-200.00	1
247	1	1	1 - 1	comunidad	2023-12-14	13:05:36	120.00	1
248	1	2	1 - 2	comunidad	2023-12-15	09:45:01	120.00	1
249	1	3	1 - 3	comunidad	2023-12-18	16:46:23	120.00	1
250	1	4	1 - 4	comunidad	2023-12-19	11:56:18	120.00	1
251	1	5	2 - 5	comunidad	2023-12-20	12:42:39	120.00	1
252	1	6	2 - 6	comunidad	2023-12-21	09:58:44	120.00	1
253	1	7	2 - 7	comunidad	2023-12-22	17:14:27	120.00	1
254	1	8	2 - 8	comunidad	2023-12-26	10:24:01	120.00	1
255	1	9	3 - 9	comunidad	2023-12-27	15:52:49	120.00	1
256	1	10	3 - 10	comunidad	2023-12-28	13:08:57	120.00	1
257	1	11	3 - 11	comunidad	2023-12-29	09:47:36	120.00	1
258	1	12	3 - 12	comunidad	2023-12-22	16:57:12	120.00	1
259	1	13	4 - 13	comunidad	2023-12-26	11:54:29	140.00	1
260	1	14	4 - 14	comunidad	2023-12-27	17:09:41	140.00	1
261	1	15	4 - 15	comunidad	2023-12-28	10:21:20	140.00	1
262	1	16	4 - 16	comunidad	2023-12-29	15:49:48	140.00	1
263	1	\N	consumo de electricidad	luz	2024-01-01	09:37:21	-865.03	1
264	1	\N	consumo de agua	agua	2024-01-02	10:14:03	-205.95	1
265	1	\N	consumo de gas	gas	2024-01-03	11:26:55	-210.17	1
266	1	\N	servicio de limpieza	limpieza	2024-01-04	10:45:18	-200.00	1
267	1	\N	reparación puerta principal	reparaciones	2024-01-05	11:58:09	-400.00	1
268	1	\N	servicio de gasfiteria	gasfiteria	2024-01-06	12:29:47	-200.00	1
269	1	1	1 - 1	comunidad	2024-01-07	14:52:36	125.00	1
270	1	2	1 - 2	comunidad	2024-01-08	15:41:27	125.00	1
271	1	3	1 - 3	comunidad	2024-01-09	10:21:59	125.00	1
272	1	4	1 - 4	comunidad	2024-01-10	13:17:04	125.00	1
273	1	5	2 - 5	comunidad	2024-01-11	12:04:11	125.00	1
274	1	6	2 - 6	comunidad	2024-01-12	10:39:52	125.00	1
275	1	7	2 - 7	comunidad	2024-01-13	17:21:15	125.00	1
276	1	8	2 - 8	comunidad	2024-01-14	11:12:48	125.00	1
277	1	9	3 - 9	comunidad	2024-01-15	12:45:33	125.00	1
278	1	10	3 - 10	comunidad	2024-01-16	10:01:28	125.00	1
279	1	11	3 - 11	comunidad	2024-01-17	13:42:10	125.00	1
280	1	12	3 - 12	comunidad	2024-01-18	10:56:22	125.00	1
281	1	13	4 - 13	comunidad	2024-01-19	16:33:59	145.00	1
282	1	14	4 - 14	comunidad	2024-01-20	15:09:07	145.00	1
283	1	15	4 - 15	comunidad	2024-01-21	14:17:41	145.00	1
284	1	16	4 - 16	comunidad	2024-01-22	09:25:14	145.00	1
285	1	\N	consumo de electricidad	luz	2024-02-01	12:21:30	-890.56	1
286	1	\N	consumo de agua	agua	2024-02-02	15:27:52	-205.30	1
287	1	\N	consumo de gas	gas	2024-02-03	13:58:06	-215.82	1
288	1	\N	servicio de limpieza	limpieza	2024-02-04	14:32:49	-200.00	1
289	1	\N	mantenimiento intercom	reparaciones	2024-02-05	17:05:18	-200.00	1
290	1	\N	servicio de electricista	electricista	2024-02-06	09:53:44	-250.00	1
291	1	\N	cambio de bombillas	electricista	2024-02-07	11:32:19	-50.00	1
292	1	1	1 - 1	comunidad	2024-02-08	10:28:55	125.00	1
293	1	2	1 - 2	comunidad	2024-02-09	13:13:01	125.00	1
294	1	3	1 - 3	comunidad	2024-02-10	15:15:29	125.00	1
295	1	4	1 - 4	comunidad	2024-02-11	14:08:17	125.00	1
296	1	5	2 - 5	comunidad	2024-02-12	11:05:50	125.00	1
297	1	6	2 - 6	comunidad	2024-02-13	12:37:20	125.00	1
298	1	7	2 - 7	comunidad	2024-02-14	16:47:40	125.00	1
299	1	8	2 - 8	comunidad	2024-02-15	13:33:06	125.00	1
300	1	9	3 - 9	comunidad	2024-02-16	17:36:54	125.00	1
301	1	10	3 - 10	comunidad	2024-02-17	14:59:31	125.00	1
302	1	11	3 - 11	comunidad	2024-02-18	16:22:00	125.00	1
303	1	12	3 - 12	comunidad	2024-02-19	12:14:12	125.00	1
304	1	13	4 - 13	comunidad	2024-02-20	09:48:02	145.00	1
305	1	14	4 - 14	comunidad	2024-02-21	15:54:24	145.00	1
306	1	15	4 - 15	comunidad	2024-02-22	14:42:08	145.00	1
307	1	16	4 - 16	comunidad	2024-02-23	09:30:39	145.00	1
308	1	\N	consumo de electricidad	luz	2024-03-01	11:45:27	-770.89	1
309	1	\N	consumo de agua	agua	2024-03-02	16:09:58	-205.62	1
310	1	\N	consumo de gas	gas	2024-03-03	10:07:36	-205.10	1
311	1	\N	servicio de limpieza	limpieza	2024-03-04	13:24:16	-200.00	1
312	1	\N	mantenimiento gas	mantenimiento	2024-03-05	15:22:04	-200.00	1
313	1	\N	servicio de cerrajeria	cerrajeria	2024-03-06	09:16:47	-100.00	1
314	1	1	1 - 1	comunidad	2024-03-07	16:57:11	125.00	1
315	1	2	1 - 2	comunidad	2024-03-08	11:52:33	125.00	1
316	1	3	1 - 3	comunidad	2024-03-09	17:54:44	125.00	1
317	1	4	1 - 4	comunidad	2024-03-10	10:50:21	125.00	1
318	1	5	2 - 5	comunidad	2024-03-11	15:35:50	125.00	1
319	1	6	2 - 6	comunidad	2024-03-12	14:25:07	125.00	1
320	1	7	2 - 7	comunidad	2024-03-13	13:03:57	125.00	1
321	1	8	2 - 8	comunidad	2024-03-14	16:12:25	125.00	1
322	1	9	3 - 9	comunidad	2024-03-15	10:17:40	125.00	1
323	1	10	3 - 10	comunidad	2024-03-16	12:51:05	125.00	1
324	1	11	3 - 11	comunidad	2024-03-17	11:09:42	125.00	1
325	1	12	3 - 12	comunidad	2024-03-18	14:54:01	125.00	1
326	1	13	4 - 13	comunidad	2024-03-19	17:25:30	145.00	1
327	1	14	4 - 14	comunidad	2024-03-20	09:59:22	145.00	1
328	1	15	4 - 15	comunidad	2024-03-21	16:40:15	145.00	1
329	1	16	4 - 16	comunidad	2024-03-22	13:48:38	145.00	1
330	1	\N	consumo de electricidad	luz	2024-04-01	15:47:23	-750.45	1
331	1	\N	consumo de agua	agua	2024-04-02	12:34:57	-200.20	1
332	1	\N	consumo de gas	gas	2024-04-03	10:34:09	-210.75	1
333	1	\N	servicio de limpieza	limpieza	2024-04-04	11:20:51	-200.00	1
334	1	\N	reparación sistema de gas	reparaciones	2024-04-05	16:18:28	-400.00	1
335	1	\N	mantenimiento ascensor	ascensor	2024-04-06	15:02:13	-200.00	1
336	1	1	1 - 1	comunidad	2024-04-08	09:42:11	125.00	1
337	1	2	1 - 2	comunidad	2024-04-09	14:11:07	125.00	1
338	1	3	1 - 3	comunidad	2024-04-10	12:56:36	125.00	1
339	1	4	1 - 4	comunidad	2024-04-11	11:38:14	125.00	1
340	1	5	2 - 5	comunidad	2024-04-12	17:00:26	125.00	1
341	1	6	2 - 6	comunidad	2024-04-13	13:28:47	125.00	1
342	1	7	2 - 7	comunidad	2024-04-14	10:23:41	125.00	1
343	1	8	2 - 8	comunidad	2024-04-15	15:19:37	125.00	1
344	1	9	3 - 9	comunidad	2024-04-16	14:36:21	125.00	1
345	1	10	3 - 10	comunidad	2024-04-17	09:34:57	125.00	1
346	1	11	3 - 11	comunidad	2024-04-18	11:59:49	125.00	1
347	1	12	3 - 12	comunidad	2024-04-19	17:48:11	125.00	1
348	1	13	4 - 13	comunidad	2024-04-20	12:09:03	145.00	1
349	1	14	4 - 14	comunidad	2024-04-21	10:08:52	145.00	1
350	1	15	4 - 15	comunidad	2024-04-22	13:38:43	145.00	1
351	1	16	4 - 16	comunidad	2024-04-23	16:32:19	145.00	1
\.


--
-- Name: banking_transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.banking_transactions_id_seq', 1, false);


--
-- Name: banking_transactions banking_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.banking_transactions
    ADD CONSTRAINT banking_transactions_pkey PRIMARY KEY (id);


--
-- Name: banking_transactions fk_account_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.banking_transactions
    ADD CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES public.bank_accounts(id);


--
-- Name: banking_transactions fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.banking_transactions
    ADD CONSTRAINT fk_property_id FOREIGN KEY (property_id) REFERENCES public.properties(id);


--
-- PostgreSQL database dump complete
--

