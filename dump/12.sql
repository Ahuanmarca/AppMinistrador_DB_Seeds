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
-- Name: community_fees; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.community_fees (
    id integer NOT NULL,
    property_id integer,
    description text,
    building_id integer,
    property_due numeric(10,2),
    due_date date
);


ALTER TABLE public.community_fees OWNER TO renzobelon;

--
-- Name: community_fees_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.community_fees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.community_fees_id_seq OWNER TO renzobelon;

--
-- Name: community_fees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.community_fees_id_seq OWNED BY public.community_fees.id;


--
-- Name: community_fees id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.community_fees ALTER COLUMN id SET DEFAULT nextval('public.community_fees_id_seq'::regclass);


--
-- Data for Name: community_fees; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.community_fees (id, property_id, description, building_id, property_due, due_date) FROM stdin;
1	1	1 - 1	1	123.60	2023-01-31
2	2	1 - 2	1	123.60	2023-01-31
3	3	1 - 3	1	123.60	2023-01-31
4	4	1 - 4	1	123.60	2023-01-31
5	5	2 - 5	1	123.60	2023-01-31
6	6	2 - 6	1	123.60	2023-01-31
7	7	2 - 7	1	123.60	2023-01-31
8	8	2 - 8	1	123.60	2023-01-31
9	9	3 - 9	1	123.60	2023-01-31
10	10	3 - 10	1	123.60	2023-01-31
11	11	3 - 11	1	123.60	2023-01-31
12	12	3 - 12	1	123.60	2023-01-31
13	13	4 - 13	1	142.80	2023-01-31
14	14	4 - 14	1	142.80	2023-01-31
15	15	4 - 15	1	142.80	2023-01-31
16	16	4 - 16	1	142.80	2023-01-31
17	1	1 - 1	1	124.80	2023-02-28
18	2	1 - 2	1	124.80	2023-02-28
19	3	1 - 3	1	124.80	2023-02-28
20	4	1 - 4	1	124.80	2023-02-28
21	5	2 - 5	1	124.80	2023-02-28
22	6	2 - 6	1	124.80	2023-02-28
23	7	2 - 7	1	124.80	2023-02-28
24	8	2 - 8	1	124.80	2023-02-28
25	9	3 - 9	1	124.80	2023-02-28
26	10	3 - 10	1	124.80	2023-02-28
27	11	3 - 11	1	124.80	2023-02-28
28	12	3 - 12	1	124.80	2023-02-28
29	13	4 - 13	1	141.40	2023-02-28
30	14	4 - 14	1	141.40	2023-02-28
31	15	4 - 15	1	141.40	2023-02-28
32	16	4 - 16	1	141.40	2023-02-28
33	1	1 - 1	1	123.60	2023-03-31
34	2	1 - 2	1	123.60	2023-03-31
35	3	1 - 3	1	123.60	2023-03-31
36	4	1 - 4	1	123.60	2023-03-31
37	5	2 - 5	1	123.60	2023-03-31
38	6	2 - 6	1	123.60	2023-03-31
39	7	2 - 7	1	123.60	2023-03-31
40	8	2 - 8	1	123.60	2023-03-31
41	9	3 - 9	1	123.60	2023-03-31
42	10	3 - 10	1	123.60	2023-03-31
43	11	3 - 11	1	123.60	2023-03-31
44	12	3 - 12	1	123.60	2023-03-31
45	13	4 - 13	1	144.20	2023-03-31
46	14	4 - 14	1	144.20	2023-03-31
47	15	4 - 15	1	144.20	2023-03-31
48	16	4 - 16	1	144.20	2023-03-31
49	1	1 - 1	1	122.40	2023-04-30
50	1	1 - 2	1	122.40	2023-04-30
51	1	1 - 3	1	122.40	2023-04-30
52	1	1 - 4	1	122.40	2023-04-30
53	1	2 - 5	1	122.40	2023-04-30
54	1	2 - 6	1	122.40	2023-04-30
55	1	2 - 7	1	122.40	2023-04-30
56	1	2 - 8	1	122.40	2023-04-30
57	1	3 - 9	1	122.40	2023-04-30
58	1	3 - 10	1	122.40	2023-04-30
59	1	3 - 11	1	122.40	2023-04-30
60	1	3 - 12	1	122.40	2023-04-30
61	1	4 - 13	1	141.40	2023-04-30
62	1	4 - 14	1	141.40	2023-04-30
63	1	4 - 15	1	141.40	2023-04-30
64	1	4 - 16	1	141.40	2023-04-30
65	1	1 - 1	1	126.00	2023-05-31
66	2	1 - 2	1	126.00	2023-05-31
67	3	1 - 3	1	126.00	2023-05-31
68	4	1 - 4	1	126.00	2023-05-31
69	5	2 - 5	1	126.00	2023-05-31
70	6	2 - 6	1	126.00	2023-05-31
71	7	2 - 7	1	126.00	2023-05-31
72	8	2 - 8	1	126.00	2023-05-31
73	9	3 - 9	1	126.00	2023-05-31
74	10	3 - 10	1	126.00	2023-05-31
75	11	3 - 11	1	126.00	2023-05-31
76	12	3 - 12	1	126.00	2023-05-31
77	13	4 - 13	1	145.60	2023-05-31
78	14	4 - 14	1	145.60	2023-05-31
79	15	4 - 15	1	145.60	2023-05-31
80	16	4 - 16	1	145.60	2023-05-31
81	1	1 - 1	1	122.40	2023-06-30
82	2	1 - 2	1	122.40	2023-06-30
83	3	1 - 3	1	122.40	2023-06-30
84	4	1 - 4	1	122.40	2023-06-30
85	5	2 - 5	1	122.40	2023-06-30
86	6	2 - 6	1	122.40	2023-06-30
87	7	2 - 7	1	122.40	2023-06-30
88	8	2 - 8	1	122.40	2023-06-30
89	9	3 - 9	1	122.40	2023-06-30
90	10	3 - 10	1	122.40	2023-06-30
91	11	3 - 11	1	122.40	2023-06-30
92	12	3 - 12	1	122.40	2023-06-30
93	13	4 - 13	1	142.80	2023-06-30
94	14	4 - 14	1	142.80	2023-06-30
95	15	4 - 15	1	142.80	2023-06-30
96	16	4 - 16	1	142.80	2023-06-30
97	1	1 - 1	1	124.80	2023-07-31
98	2	1 - 2	1	124.80	2023-07-31
99	3	1 - 3	1	124.80	2023-07-31
100	4	1 - 4	1	124.80	2023-07-31
101	5	2 - 5	1	124.80	2023-07-31
102	6	2 - 6	1	124.80	2023-07-31
103	7	2 - 7	1	124.80	2023-07-31
104	8	2 - 8	1	124.80	2023-07-31
105	9	3 - 9	1	124.80	2023-07-31
106	10	3 - 10	1	124.80	2023-07-31
107	11	3 - 11	1	124.80	2023-07-31
108	12	3 - 12	1	124.80	2023-07-31
109	13	4 - 13	1	144.20	2023-07-31
110	14	4 - 14	1	144.20	2023-07-31
111	15	4 - 15	1	144.20	2023-07-31
112	16	4 - 16	1	144.20	2023-07-31
113	1	1 - 1	1	126.63	2023-08-31
114	2	1 - 2	1	126.63	2023-08-31
115	3	1 - 3	1	126.63	2023-08-31
116	4	1 - 4	1	126.63	2023-08-31
117	5	2 - 5	1	126.63	2023-08-31
118	6	2 - 6	1	126.63	2023-08-31
119	7	2 - 7	1	126.63	2023-08-31
120	8	2 - 8	1	126.63	2023-08-31
121	9	3 - 9	1	126.63	2023-08-31
122	10	3 - 10	1	126.63	2023-08-31
123	11	3 - 11	1	126.63	2023-08-31
124	12	3 - 12	1	126.63	2023-08-31
125	13	4 - 13	1	141.40	2023-08-31
126	14	4 - 14	1	141.40	2023-08-31
127	15	4 - 15	1	141.40	2023-08-31
128	16	4 - 16	1	141.40	2023-08-31
129	1	1 - 1	1	123.93	2023-09-30
130	2	1 - 2	1	123.93	2023-09-30
131	3	1 - 3	1	123.93	2023-09-30
132	4	1 - 4	1	123.93	2023-09-30
133	5	2 - 5	1	123.93	2023-09-30
134	6	2 - 6	1	123.93	2023-09-30
135	7	2 - 7	1	123.93	2023-09-30
136	8	2 - 8	1	123.93	2023-09-30
137	9	3 - 9	1	123.93	2023-09-30
138	10	3 - 10	1	123.93	2023-09-30
139	11	3 - 11	1	123.93	2023-09-30
140	12	3 - 12	1	123.93	2023-09-30
141	13	4 - 13	1	142.80	2023-09-30
142	14	4 - 14	1	142.80	2023-09-30
143	15	4 - 15	1	142.80	2023-09-30
144	16	4 - 16	1	142.80	2023-09-30
145	1	1 - 1	1	122.57	2023-10-31
146	2	1 - 2	1	122.57	2023-10-31
147	3	1 - 3	1	122.57	2023-10-31
148	4	1 - 4	1	122.57	2023-10-31
149	5	2 - 5	1	122.57	2023-10-31
150	6	2 - 6	1	122.57	2023-10-31
151	7	2 - 7	1	122.57	2023-10-31
152	8	2 - 8	1	122.57	2023-10-31
153	9	3 - 9	1	122.57	2023-10-31
154	10	3 - 10	1	122.57	2023-10-31
155	11	3 - 11	1	122.57	2023-10-31
156	12	3 - 12	1	122.57	2023-10-31
157	13	4 - 13	1	145.60	2023-10-31
158	14	4 - 14	1	145.60	2023-10-31
159	15	4 - 15	1	145.60	2023-10-31
160	16	4 - 16	1	145.60	2023-10-31
161	1	1 - 1	1	122.72	2023-11-30
162	2	1 - 2	1	122.72	2023-11-30
163	3	1 - 3	1	122.72	2023-11-30
164	4	1 - 4	1	122.72	2023-11-30
165	5	2 - 5	1	122.72	2023-11-30
166	6	2 - 6	1	122.72	2023-11-30
167	7	2 - 7	1	122.72	2023-11-30
168	8	2 - 8	1	122.72	2023-11-30
169	9	3 - 9	1	122.72	2023-11-30
170	10	3 - 10	1	122.72	2023-11-30
171	11	3 - 11	1	122.72	2023-11-30
172	12	3 - 12	1	122.72	2023-11-30
173	13	4 - 13	1	142.29	2023-11-30
174	14	4 - 14	1	142.29	2023-11-30
175	15	4 - 15	1	142.29	2023-11-30
176	16	4 - 16	1	142.29	2023-11-30
177	1	1 - 1	1	123.76	2023-12-31
178	2	1 - 2	1	123.76	2023-12-31
179	3	1 - 3	1	123.76	2023-12-31
180	4	1 - 4	1	123.76	2023-12-31
181	5	2 - 5	1	123.76	2023-12-31
182	6	2 - 6	1	123.76	2023-12-31
183	7	2 - 7	1	123.76	2023-12-31
184	8	2 - 8	1	123.76	2023-12-31
185	9	3 - 9	1	123.76	2023-12-31
186	10	3 - 10	1	123.76	2023-12-31
187	11	3 - 11	1	123.76	2023-12-31
188	12	3 - 12	1	123.76	2023-12-31
189	13	4 - 13	1	146.47	2023-12-31
190	14	4 - 14	1	146.47	2023-12-31
191	15	4 - 15	1	146.47	2023-12-31
192	16	4 - 16	1	146.47	2023-12-31
193	1	1 - 1	1	126.25	2024-01-31
194	2	1 - 2	1	126.25	2024-01-31
195	3	1 - 3	1	126.25	2024-01-31
196	4	1 - 4	1	126.25	2024-01-31
197	5	2 - 5	1	126.25	2024-01-31
198	6	2 - 6	1	126.25	2024-01-31
199	7	2 - 7	1	126.25	2024-01-31
200	8	2 - 8	1	126.25	2024-01-31
201	9	3 - 9	1	126.25	2024-01-31
202	10	3 - 10	1	126.25	2024-01-31
203	11	3 - 11	1	126.25	2024-01-31
204	12	3 - 12	1	126.25	2024-01-31
205	13	4 - 13	1	150.80	2024-01-31
206	14	4 - 14	1	150.80	2024-01-31
207	15	4 - 15	1	150.80	2024-01-31
208	16	4 - 16	1	150.80	2024-01-31
209	1	1 - 1	1	130.00	2024-02-29
210	2	1 - 2	1	130.00	2024-02-29
211	3	1 - 3	1	130.00	2024-02-29
212	4	1 - 4	1	130.00	2024-02-29
213	5	2 - 5	1	130.00	2024-02-29
214	6	2 - 6	1	130.00	2024-02-29
215	7	2 - 7	1	130.00	2024-02-29
216	8	2 - 8	1	130.00	2024-02-29
217	9	3 - 9	1	130.00	2024-02-29
218	10	3 - 10	1	130.00	2024-02-29
219	11	3 - 11	1	130.00	2024-02-29
220	12	3 - 12	1	130.00	2024-02-29
221	13	4 - 13	1	149.35	2024-02-29
222	14	4 - 14	1	149.35	2024-02-29
223	15	4 - 15	1	149.35	2024-02-29
224	16	4 - 16	1	149.35	2024-02-29
225	1	1 - 1	1	128.75	2024-03-31
226	2	1 - 2	1	128.75	2024-03-31
227	3	1 - 3	1	128.75	2024-03-31
228	4	1 - 4	1	128.75	2024-03-31
229	5	2 - 5	1	128.75	2024-03-31
230	6	2 - 6	1	128.75	2024-03-31
231	7	2 - 7	1	128.75	2024-03-31
232	8	2 - 8	1	128.75	2024-03-31
233	9	3 - 9	1	128.75	2024-03-31
234	10	3 - 10	1	128.75	2024-03-31
235	11	3 - 11	1	128.75	2024-03-31
236	12	3 - 12	1	128.75	2024-03-31
237	13	4 - 13	1	147.90	2024-03-31
238	14	4 - 14	1	147.90	2024-03-31
239	15	4 - 15	1	147.90	2024-03-31
240	16	4 - 16	1	147.90	2024-03-31
241	1	1 - 1	1	127.50	2024-04-30
242	2	1 - 2	1	127.50	2024-04-30
243	3	1 - 3	1	127.50	2024-04-30
244	4	1 - 4	1	127.50	2024-04-30
245	5	2 - 5	1	127.50	2024-04-30
246	6	2 - 6	1	127.50	2024-04-30
247	7	2 - 7	1	127.50	2024-04-30
248	8	2 - 8	1	127.50	2024-04-30
249	9	3 - 9	1	127.50	2024-04-30
250	10	3 - 10	1	127.50	2024-04-30
251	11	3 - 11	1	127.50	2024-04-30
252	12	3 - 12	1	127.50	2024-04-30
253	13	4 - 13	1	148.32	2024-04-30
254	14	4 - 14	1	148.32	2024-04-30
255	15	4 - 15	1	148.32	2024-04-30
256	16	4 - 16	1	148.32	2024-04-30
257	17	1A	2	123.60	2023-01-31
258	18	1B	2	123.60	2023-01-31
259	19	1C	2	123.60	2023-01-31
260	20	1D	2	123.60	2023-01-31
261	21	2A	2	123.60	2023-01-31
262	22	2B	2	123.60	2023-01-31
263	23	2C	2	123.60	2023-01-31
264	24	2D	2	123.60	2023-01-31
265	25	3A	2	123.60	2023-01-31
266	26	3B	2	123.60	2023-01-31
267	27	3C	2	123.60	2023-01-31
268	28	3D	2	123.60	2023-01-31
269	29	4A	2	123.60	2023-01-31
270	30	4B	2	123.60	2023-01-31
271	31	4C	2	123.60	2023-01-31
272	32	4D	2	123.60	2023-01-31
273	33	5A	2	142.80	2023-01-31
274	34	5B	2	142.80	2023-01-31
275	35	5C	2	142.80	2023-01-31
276	36	5D	2	142.80	2023-01-31
277	37	6A	2	142.80	2023-01-31
278	38	6B	2	142.80	2023-01-31
279	39	6C	2	142.80	2023-01-31
280	40	6D	2	142.80	2023-01-31
281	17	1A	2	124.80	2023-02-28
282	18	1B	2	124.80	2023-02-28
283	19	1C	2	124.80	2023-02-28
284	20	1D	2	124.80	2023-02-28
285	21	2A	2	124.80	2023-02-28
286	22	2B	2	124.80	2023-02-28
287	23	2C	2	124.80	2023-02-28
288	24	2D	2	124.80	2023-02-28
289	25	3A	2	124.80	2023-02-28
290	26	3B	2	124.80	2023-02-28
291	27	3C	2	124.80	2023-02-28
292	28	3D	2	124.80	2023-02-28
293	29	4A	2	124.80	2023-02-28
294	30	4B	2	124.80	2023-02-28
295	31	4C	2	124.80	2023-02-28
296	32	4D	2	124.80	2023-02-28
297	33	5A	2	142.80	2023-02-28
298	34	5B	2	142.80	2023-02-28
299	35	5C	2	142.80	2023-02-28
300	36	5D	2	142.80	2023-02-28
301	37	6A	2	142.80	2023-02-28
302	38	6B	2	142.80	2023-02-28
303	39	6C	2	142.80	2023-02-28
304	40	6D	2	142.80	2023-02-28
305	17	1A	2	123.60	2023-03-31
306	18	1B	2	123.60	2023-03-31
307	19	1C	2	123.60	2023-03-31
308	20	1D	2	123.60	2023-03-31
309	21	2A	2	123.60	2023-03-31
310	22	2B	2	123.60	2023-03-31
311	23	2C	2	123.60	2023-03-31
312	24	2D	2	123.60	2023-03-31
313	25	3A	2	123.60	2023-03-31
314	26	3B	2	123.60	2023-03-31
315	27	3C	2	123.60	2023-03-31
316	28	3D	2	123.60	2023-03-31
317	29	4A	2	123.60	2023-03-31
318	30	4B	2	123.60	2023-03-31
319	31	4C	2	123.60	2023-03-31
320	32	4D	2	123.60	2023-03-31
321	33	5A	2	144.20	2023-03-31
322	34	5B	2	144.20	2023-03-31
323	35	5C	2	144.20	2023-03-31
324	36	5D	2	144.20	2023-03-31
325	37	6A	2	144.20	2023-03-31
326	38	6B	2	144.20	2023-03-31
327	39	6C	2	144.20	2023-03-31
328	40	6D	2	144.20	2023-03-31
329	17	1A	2	122.40	2023-04-30
330	18	1B	2	122.40	2023-04-30
331	19	1C	2	122.40	2023-04-30
332	20	1D	2	122.40	2023-04-30
333	21	2A	2	122.40	2023-04-30
334	22	2B	2	122.40	2023-04-30
335	23	2C	2	122.40	2023-04-30
336	24	2D	2	122.40	2023-04-30
337	25	3A	2	122.40	2023-04-30
338	26	3B	2	122.40	2023-04-30
339	27	3C	2	122.40	2023-04-30
340	28	3D	2	122.40	2023-04-30
341	29	4A	2	122.40	2023-04-30
342	30	4B	2	122.40	2023-04-30
343	31	4C	2	122.40	2023-04-30
344	32	4D	2	122.40	2023-04-30
345	33	5A	2	141.40	2023-04-30
346	34	5B	2	141.40	2023-04-30
347	35	5C	2	141.40	2023-04-30
348	36	5D	2	141.40	2023-04-30
349	37	6A	2	141.40	2023-04-30
350	38	6B	2	141.40	2023-04-30
351	39	6C	2	141.40	2023-04-30
352	40	6D	2	141.40	2023-04-30
353	17	1A	2	126.00	2023-05-31
354	18	1B	2	126.00	2023-05-31
355	19	1C	2	126.00	2023-05-31
356	20	1D	2	126.00	2023-05-31
357	21	2A	2	126.00	2023-05-31
358	22	2B	2	126.00	2023-05-31
359	23	2C	2	126.00	2023-05-31
360	24	2D	2	126.00	2023-05-31
361	25	3A	2	126.00	2023-05-31
362	26	3B	2	126.00	2023-05-31
363	27	3C	2	126.00	2023-05-31
364	28	3D	2	126.00	2023-05-31
365	29	4A	2	126.00	2023-05-31
366	30	4B	2	126.00	2023-05-31
367	31	4C	2	126.00	2023-05-31
368	32	4D	2	126.00	2023-05-31
369	33	5A	2	145.60	2023-05-31
370	34	5B	2	145.60	2023-05-31
371	35	5C	2	145.60	2023-05-31
372	36	5D	2	145.60	2023-05-31
373	37	6A	2	145.60	2023-05-31
374	38	6B	2	145.60	2023-05-31
375	39	6C	2	145.60	2023-05-31
376	40	6D	2	145.60	2023-05-31
377	17	1A	2	122.40	2023-06-30
378	18	1B	2	122.40	2023-06-30
379	19	1C	2	122.40	2023-06-30
380	20	1D	2	122.40	2023-06-30
381	21	2A	2	122.40	2023-06-30
382	22	2B	2	122.40	2023-06-30
383	23	2C	2	122.40	2023-06-30
384	24	2D	2	122.40	2023-06-30
385	25	3A	2	122.40	2023-06-30
386	26	3B	2	122.40	2023-06-30
387	27	3C	2	122.40	2023-06-30
388	28	3D	2	122.40	2023-06-30
389	29	4A	2	122.40	2023-06-30
390	30	4B	2	122.40	2023-06-30
391	31	4C	2	122.40	2023-06-30
392	32	4D	2	122.40	2023-06-30
393	33	5A	2	142.80	2023-06-30
394	34	5B	2	142.80	2023-06-30
395	35	5C	2	142.80	2023-06-30
396	36	5D	2	142.80	2023-06-30
397	37	6A	2	142.80	2023-06-30
398	38	6B	2	142.80	2023-06-30
399	39	6C	2	142.80	2023-06-30
400	40	6D	2	142.80	2023-06-30
401	17	1A	2	124.80	2023-07-31
402	18	1B	2	124.80	2023-07-31
403	19	1C	2	124.80	2023-07-31
404	20	1D	2	124.80	2023-07-31
405	21	2A	2	124.80	2023-07-31
406	22	2B	2	124.80	2023-07-31
407	23	2C	2	124.80	2023-07-31
408	24	2D	2	124.80	2023-07-31
409	25	3A	2	124.80	2023-07-31
410	26	3B	2	124.80	2023-07-31
411	27	3C	2	124.80	2023-07-31
412	28	3D	2	124.80	2023-07-31
413	29	4A	2	124.80	2023-07-31
414	30	4B	2	124.80	2023-07-31
415	31	4C	2	124.80	2023-07-31
416	32	4D	2	124.80	2023-07-31
417	33	5A	2	144.20	2023-07-31
418	34	5B	2	144.20	2023-07-31
419	35	5C	2	144.20	2023-07-31
420	36	5D	2	144.20	2023-07-31
421	37	6A	2	144.20	2023-07-31
422	38	6B	2	144.20	2023-07-31
423	39	6C	2	144.20	2023-07-31
424	40	6D	2	144.20	2023-07-31
425	17	1A	2	126.63	2023-08-31
426	18	1B	2	126.63	2023-08-31
427	19	1C	2	126.63	2023-08-31
428	20	1D	2	126.63	2023-08-31
429	21	2A	2	126.63	2023-08-31
430	22	2B	2	126.63	2023-08-31
431	23	2C	2	126.63	2023-08-31
432	24	2D	2	126.63	2023-08-31
433	25	3A	2	126.63	2023-08-31
434	26	3B	2	126.63	2023-08-31
435	27	3C	2	126.63	2023-08-31
436	28	3D	2	126.63	2023-08-31
437	29	4A	2	126.63	2023-08-31
438	30	4B	2	126.63	2023-08-31
439	31	4C	2	126.63	2023-08-31
440	32	4D	2	126.63	2023-08-31
441	33	5A	2	141.40	2023-08-31
442	34	5B	2	141.40	2023-08-31
443	35	5C	2	141.40	2023-08-31
444	36	5D	2	141.40	2023-08-31
445	37	6A	2	141.40	2023-08-31
446	38	6B	2	141.40	2023-08-31
447	39	6C	2	141.40	2023-08-31
448	40	6D	2	141.40	2023-08-31
449	17	1A	2	123.93	2023-09-30
450	18	1B	2	123.93	2023-09-30
451	19	1C	2	123.93	2023-09-30
452	20	1D	2	123.93	2023-09-30
453	21	2A	2	123.93	2023-09-30
454	22	2B	2	123.93	2023-09-30
455	23	2C	2	123.93	2023-09-30
456	24	2D	2	123.93	2023-09-30
457	25	3A	2	123.93	2023-09-30
458	26	3B	2	123.93	2023-09-30
459	27	3C	2	123.93	2023-09-30
460	28	3D	2	123.93	2023-09-30
461	29	4A	2	123.93	2023-09-30
462	30	4B	2	123.93	2023-09-30
463	31	4C	2	123.93	2023-09-30
464	32	4D	2	123.93	2023-09-30
465	33	5A	2	142.80	2023-09-30
466	34	5B	2	142.80	2023-09-30
467	35	5C	2	142.80	2023-09-30
468	36	5D	2	142.80	2023-09-30
469	37	6A	2	142.80	2023-09-30
470	38	6B	2	142.80	2023-09-30
471	39	6C	2	142.80	2023-09-30
472	40	6D	2	142.80	2023-09-30
473	17	1A	2	122.57	2023-10-31
474	18	1B	2	122.57	2023-10-31
475	19	1C	2	122.57	2023-10-31
476	20	1D	2	122.57	2023-10-31
477	21	2A	2	122.57	2023-10-31
478	22	2B	2	122.57	2023-10-31
479	23	2C	2	122.57	2023-10-31
480	24	2D	2	122.57	2023-10-31
481	25	3A	2	122.57	2023-10-31
482	26	3B	2	122.57	2023-10-31
483	27	3C	2	122.57	2023-10-31
484	28	3D	2	122.57	2023-10-31
485	29	4A	2	122.57	2023-10-31
486	30	4B	2	122.57	2023-10-31
487	31	4C	2	122.57	2023-10-31
488	32	4D	2	122.57	2023-10-31
489	33	5A	2	145.60	2023-10-31
490	34	5B	2	145.60	2023-10-31
491	35	5C	2	145.60	2023-10-31
492	36	5D	2	145.60	2023-10-31
493	37	6A	2	145.60	2023-10-31
494	38	6B	2	145.60	2023-10-31
495	39	6C	2	145.60	2023-10-31
496	40	6D	2	145.60	2023-10-31
497	17	1A	2	122.72	2023-11-30
498	18	1B	2	122.72	2023-11-30
499	19	1C	2	122.72	2023-11-30
500	20	1D	2	122.72	2023-11-30
501	21	2A	2	122.72	2023-11-30
502	22	2B	2	122.72	2023-11-30
503	23	2C	2	122.72	2023-11-30
504	24	2D	2	122.72	2023-11-30
505	25	3A	2	122.72	2023-11-30
506	26	3B	2	122.72	2023-11-30
507	27	3C	2	122.72	2023-11-30
508	28	3D	2	122.72	2023-11-30
509	29	4A	2	122.72	2023-11-30
510	30	4B	2	122.72	2023-11-30
511	31	4C	2	122.72	2023-11-30
512	32	4D	2	122.72	2023-11-30
513	33	5A	2	142.29	2023-11-30
514	34	5B	2	142.29	2023-11-30
515	35	5C	2	142.29	2023-11-30
516	36	5D	2	142.29	2023-11-30
517	37	6A	2	142.29	2023-11-30
518	38	6B	2	142.29	2023-11-30
519	39	6C	2	142.29	2023-11-30
520	40	6D	2	142.29	2023-11-30
521	17	1A	2	123.76	2023-12-31
522	18	1B	2	123.76	2023-12-31
523	19	1C	2	123.76	2023-12-31
524	20	1D	2	123.76	2023-12-31
525	21	2A	2	123.76	2023-12-31
526	22	2B	2	123.76	2023-12-31
527	23	2C	2	123.76	2023-12-31
528	24	2D	2	123.76	2023-12-31
529	25	3A	2	123.76	2023-12-31
530	26	3B	2	123.76	2023-12-31
531	27	3C	2	123.76	2023-12-31
532	28	3D	2	123.76	2023-12-31
533	29	4A	2	123.76	2023-12-31
534	30	4B	2	123.76	2023-12-31
535	31	4C	2	123.76	2023-12-31
536	32	4D	2	123.76	2023-12-31
537	33	5A	2	146.47	2023-12-31
538	34	5B	2	146.47	2023-12-31
539	35	5C	2	146.47	2023-12-31
540	36	5D	2	146.47	2023-12-31
541	37	6A	2	146.47	2023-12-31
542	38	6B	2	146.47	2023-12-31
543	39	6C	2	146.47	2023-12-31
544	40	6D	2	146.47	2023-12-31
545	17	1A	2	126.25	2024-01-31
546	18	1B	2	126.25	2024-01-31
547	19	1C	2	126.25	2024-01-31
548	20	1D	2	126.25	2024-01-31
549	21	2A	2	126.25	2024-01-31
550	22	2B	2	126.25	2024-01-31
551	23	2C	2	126.25	2024-01-31
552	24	2D	2	126.25	2024-01-31
553	25	3A	2	126.25	2024-01-31
554	26	3B	2	126.25	2024-01-31
555	27	3C	2	126.25	2024-01-31
556	28	3D	2	126.25	2024-01-31
557	29	4A	2	126.25	2024-01-31
558	30	4B	2	126.25	2024-01-31
559	31	4C	2	126.25	2024-01-31
560	32	4D	2	126.25	2024-01-31
561	33	5A	2	150.80	2024-01-31
562	34	5B	2	150.80	2024-01-31
563	35	5C	2	150.80	2024-01-31
564	36	5D	2	150.80	2024-01-31
565	37	6A	2	150.80	2024-01-31
566	38	6B	2	150.80	2024-01-31
567	39	6C	2	150.80	2024-01-31
568	40	6D	2	150.80	2024-01-31
569	17	1A	2	130.00	2024-02-29
570	18	1B	2	130.00	2024-02-29
571	19	1C	2	130.00	2024-02-29
572	20	1D	2	130.00	2024-02-29
573	21	2A	2	130.00	2024-02-29
574	22	2B	2	130.00	2024-02-29
575	23	2C	2	130.00	2024-02-29
576	24	2D	2	130.00	2024-02-29
577	25	3A	2	130.00	2024-02-29
578	26	3B	2	130.00	2024-02-29
579	27	3C	2	130.00	2024-02-29
580	28	3D	2	130.00	2024-02-29
581	29	4A	2	130.00	2024-02-29
582	30	4B	2	130.00	2024-02-29
583	31	4C	2	130.00	2024-02-29
584	32	4D	2	130.00	2024-02-29
585	33	5A	2	149.35	2024-02-29
586	34	5B	2	149.35	2024-02-29
587	35	5C	2	149.35	2024-02-29
588	36	5D	2	149.35	2024-02-29
589	37	6A	2	149.35	2024-02-29
590	38	6B	2	149.35	2024-02-29
591	39	6C	2	149.35	2024-02-29
592	40	6D	2	149.35	2024-02-29
593	17	1A	2	128.75	2024-03-31
594	18	1B	2	128.75	2024-03-31
595	19	1C	2	128.75	2024-03-31
596	20	1D	2	128.75	2024-03-31
597	21	2A	2	128.75	2024-03-31
598	22	2B	2	128.75	2024-03-31
599	23	2C	2	128.75	2024-03-31
600	24	2D	2	128.75	2024-03-31
601	25	3A	2	128.75	2024-03-31
602	26	3B	2	128.75	2024-03-31
603	27	3C	2	128.75	2024-03-31
604	28	3D	2	128.75	2024-03-31
605	29	4A	2	128.75	2024-03-31
606	30	4B	2	128.75	2024-03-31
607	31	4C	2	128.75	2024-03-31
608	32	4D	2	128.75	2024-03-31
609	33	5A	2	147.90	2024-03-31
610	34	5B	2	147.90	2024-03-31
611	35	5C	2	147.90	2024-03-31
612	36	5D	2	147.90	2024-03-31
613	37	6A	2	147.90	2024-03-31
614	38	6B	2	147.90	2024-03-31
615	39	6C	2	147.90	2024-03-31
616	40	6D	2	147.90	2024-03-31
617	17	1A	2	127.50	2024-04-30
618	18	1B	2	127.50	2024-04-30
619	19	1C	2	127.50	2024-04-30
620	20	1D	2	127.50	2024-04-30
621	21	2A	2	127.50	2024-04-30
622	22	2B	2	127.50	2024-04-30
623	23	2C	2	127.50	2024-04-30
624	24	2D	2	127.50	2024-04-30
625	25	3A	2	127.50	2024-04-30
626	26	3B	2	127.50	2024-04-30
627	27	3C	2	127.50	2024-04-30
628	28	3D	2	127.50	2024-04-30
629	29	4A	2	127.50	2024-04-30
630	30	4B	2	127.50	2024-04-30
631	31	4C	2	127.50	2024-04-30
632	32	4D	2	127.50	2024-04-30
633	33	5A	2	148.32	2024-04-30
634	34	5B	2	148.32	2024-04-30
635	35	5C	2	148.32	2024-04-30
636	36	5D	2	148.32	2024-04-30
637	37	6A	2	148.32	2024-04-30
638	38	6B	2	148.32	2024-04-30
639	39	6C	2	148.32	2024-04-30
640	40	6D	2	148.32	2024-04-30
\.


--
-- Name: community_fees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.community_fees_id_seq', 640, true);


--
-- Name: community_fees community_fees_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.community_fees
    ADD CONSTRAINT community_fees_pkey PRIMARY KEY (id);


--
-- Name: community_fees fk_building_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.community_fees
    ADD CONSTRAINT fk_building_id FOREIGN KEY (building_id) REFERENCES public.buildings(id);


--
-- Name: community_fees fk_property_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.community_fees
    ADD CONSTRAINT fk_property_id FOREIGN KEY (property_id) REFERENCES public.properties(id);


--
-- PostgreSQL database dump complete
--

