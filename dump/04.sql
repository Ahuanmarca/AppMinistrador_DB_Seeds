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
    hash character varying(255),
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
1	55921386C	carmenespinosa	$2y$10$WKIGqDjnNQtRswUFQCX1QeuW3Mk2gg7M0RGFdD2MtQWUSbIlAzWle	t	f	https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
2	51802544N	mikhailkorolov	$2y$10$2lbl4eot3zI7ImEhq.Wj9eI8lYetpQ4tDuFyA5TzH6yNA6Gd5i5iy	t	f	https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
3	02296421D	carloscastilla	$2y$10$i9z4vo/qwAMcIBpG4vXxsOI8bqNwuM2DLA3JBbY9PEny2Kag2joBW	t	f	https://images.unsplash.com/photo-1620225700549-0ebf995a3d9a?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
4	92347502X	dmbonilla	$2y$10$pQrJvdQD5I8UUeBVxzdq4eET7wuwgoIBtkuTwHHWMn4PNKbtAoIba	t	f	https://images.unsplash.com/photo-1506863530036-1efeddceb993?q=80&w=1944&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
5	93037013N	antoniobarajas	$2y$10$JgQYvri4A.EvnRg8zWxHUu17Xehx12OnhLEWDMqLe4SjMzU1IBXSq	t	f	https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
6	04265798B	cristiangarcia	$2y$10$wXZ3HDJJQgixkUIIGlJ6KeMqy3XyZFCkISjn1jk3tnj6mHmHWozfa	t	f	https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?q=80&w=2076&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
7	14482182W	mariacosta	$2y$10$FvAcVEPtUQsbyMppU.Z6aebCUo4CRId4WoacpVIDfl1cji6eqs9Am	t	f	https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
8	76641167S	hansmueller	$2y$10$06Pe0s5R65GMvy3YL.lliOSx1Qjz42hBJ11GDDbKHby7StUmNH9y6	t	f	https://images.unsplash.com/photo-1576110598658-096ae24cdb97?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
9	01436730N	mateoruiz	$2y$10$ZW4f4JAdfda/64Z8zkOPBOrTt9GFS4t06.oc8JuUpocSS7cklHKu.	t	f	https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
10	92074524G	ricardorossi	$2y$10$bzzB4StjCaAa/USsKClMfeGMZwodPmdowWS9P6vtotm6cP9Rge1dy	t	f	https://images.unsplash.com/photo-1592827095305-68f21edefb82?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
11	12385025T	johndoe	$2y$10$uy9MshFE2.WmfG1fxuyNTeS4s74kIZJMJ/.ANbSEgLCceudWJaLYK	t	f	https://images.unsplash.com/photo-1527082395-e939b847da0d?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
12	43209548V	gtejada	$2y$10$IVoJwFwnvcARgBzN4eQLv.jjvRtt1YXbaE4Jvc63NHCffx7ZDhSQa	t	f	https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?q=80&w=2134&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
13	98842669P	mariogonzaga	$2y$10$1d.7pV4YMRA8C2MsFuwv5ugR7q7c7yhMo.bbjfWFYEmloUvieZN4G	t	f	https://images.unsplash.com/photo-1463453091185-61582044d556?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
14	31816363A	arnoldswchartz	$2y$10$5I5JB/7fb2V4O73xs2L4y.iTpHRj1tFBEaD3zt4WxrzXze5V/kEZW	t	f	https://images.unsplash.com/photo-1556474835-b0f3ac40d4d1?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
15	11166260J	inmaculadagranell	$2y$10$M1lbuxtnbcvSlXAFeY3mX.YkbZqvco/DTap5FWRt.LQtmFp/8gEqS	t	f	https://images.unsplash.com/photo-1487573884658-a5d3c667584e?q=80&w=2003&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
16	36735743M	carolinaramirez	$2y$10$QaFqAJqaWxduaEmNFfV9cuOyyoGlhb0e5Amh0aOR4rq9xk6uqERpy	t	f	https://images.unsplash.com/photo-1522938974444-f12497b69347?q=80&w=2009&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
17	56565155J	joanroig	$2y$10$eFZiiB5hYZIg3lMxPl5AdOCgxMuqDNGdIWHz.kfKZZpzx953y6Rym	t	f	https://images.unsplash.com/photo-1529977421774-808dda19c3f9?q=80&w=2669&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
18	62000855P	ravisingh	$2y$10$8Sxw1bMIj2aRnTopAIjkZOPxg2BASaE0xlBktkUzCns8VVoFsF6x.	t	f	https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?q=80&w=2648&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
19	95515925F	belenvillegas	$2y$10$LVd1cMZifU0rLsvh0mXDKOKkMXbSIn1JKenr203mE8WNs8oEPYc4K	t	f	https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
20	25332987M	suzannewoods	$2y$10$9jXD/eckex7mdi4UvzK.G.sEL6xQdgoe6sJb/azgqlJ3pL/poHkZa	t	f	https://images.unsplash.com/photo-1506863530036-1efeddceb993?q=80&w=1944&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
21	87626347G	eusebiomanrique	$2y$10$Ord2I33QFFGqntMIMkprGOTYAh8e87QBzEjn87FSGUkR1Kj9PCvr6	t	f	https://images.unsplash.com/photo-1521817760127-e15c26f67fd2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
22	73017594G	gabrielacamacho	$2y$10$BJfJsRe0NxWkPdPh8.QUB.sUERFtgj.OuhARE13hJezRUWlaX9w/2	t	f	https://images.unsplash.com/photo-1488508872907-592763824245?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
23	56570285Z	aaronwhite	$2y$10$VKuKEHSmCDhqZ4u0t.MbqukEQbUhTbVpg8r2dKIfjtWGEWDlnauUu	t	f	https://images.unsplash.com/photo-1512484776495-a09d92e87c3b?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
24	90158168P	brianadams	$2y$10$aZTlaWapALUUTEt5EDI0f.px3Q4pSZgpxaXNUrQf0ErrI12x0FYiC	t	f	https://images.unsplash.com/photo-1468218457742-ee484fe2fe4c?q=80&w=2673&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
25	43860950L	kevindurant	$2y$10$0/GOEBc3Yd/tJUs9JmdKpOG3AQqSLV3OYJl5BpbTCCVzzo7c90OW6	t	f	https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
26	90763073J	laraherrera	$2y$10$DQ5Y5lCWlOSsZNgTOj3Gfu4yiEY.ozI6.XbXn6R1zzzI23p1L8XMG	t	f	https://images.unsplash.com/photo-1542131596-91a634bfc5e7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
27	26033775Y	isaacwells	$2y$10$djP.ZD79ZhvWe23ABp3nXeP.Q2R3gRx/DCup4XCSnSm7DbsjQlYle	t	f	https://images.unsplash.com/photo-1504199367641-aba8151af406?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
28	84935712R	naperalta	$2y$10$qlgYG1pIfhRpSdfvjZD2v./TLKVAvvyF.7sSkVP3s1GAhl8sQCU0i	t	f	https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
29	72922555C	adelaperalta	$2y$10$8RIz6FJ0O7YYO9ITI8CRKeiKNYImZ6VOYYkFxOQGpCuMJK69mgHyG	t	f	https://images.unsplash.com/photo-1516913840875-366de3e463bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
30	04739439J	johankarel	$2y$10$aS/QuP/9Q7zXvBvypT7pyuQm3V8eLP35u94F0f2vpHRUNvnRtoDi2	t	f	https://images.unsplash.com/photo-1541112324160-e8a425b58dac?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
31	24950067N	zhangwei	$2y$10$MxtAIbiLJ/a1KMCfEQXRBOUL9n4CojMn02AjpbYiPr4kkk2KjsMZy	t	f	https://images.unsplash.com/photo-1532170579297-281918c8ae72?q=80&w=2084&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
32	03325587V	diegosalazar	$2y$10$vH.0igHN77ndYZnXr5IMze1ZRcPnR0rjINH.uk5sYAF2zjHT6ij6m	t	f	https://images.unsplash.com/photo-1594849017806-9f5795c6758d?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
33	48985645S	patriciavargas	$2y$10$8PvnfwqgWUmZgImqeGndE.E3utGQZwU/4X4sridFXScobaVy6BhlW	t	f	https://images.unsplash.com/photo-1603988089669-c041ac2fe196?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
34	46288180J	olgakovalenko	$2y$10$vdlITK0jixUqvfZcw7Wq1eeoTnBUiABcl5La9Bghtcgp9KY.k3Ajy	t	f	https://images.unsplash.com/photo-1495914510314-ba3164b1321f?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
35	39315828L	ainhoaotxoa	$2y$10$j3XnfQzAl6WN6xuPJmwzTuRQkTv833FYifG.MFQb8OQuXaBOGzoB.	t	f	https://images.unsplash.com/photo-1499229694635-fc626e0d9c01?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
36	01720623Q	joaquinramirez	$2y$10$gv36r2coSmHOH/QuScvvG.xgHGkkhxOTMxwkeso.CAsdZfnG1qiH.	t	f	https://images.unsplash.com/photo-1624395213232-ea2bcd36b865?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
37	10500290P	soniacastillo	$2y$10$g/EfbON0sjiQBTRcjWTwvec3OfSYPwetsG9tHRPlQAFDkJoVTHQoe	t	f	https://images.unsplash.com/photo-1507101105822-7472b28e22ac?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
38	54307628M	consueloherrera	$2y$10$Pu6U1Rxt3K58gH2nbr1oZubK7FmN6Ej7UKKRa4.tTotVCmixE0qGq	t	f	https://images.unsplash.com/photo-1524550158212-33f2ff985344?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
39	93204137H	oscarperalta	$2y$10$x1.GPQsqUjw2Siv1to1oU.OtCqdcewpb6/HuDjL9CAyywH7liSIW6	t	f	https://images.unsplash.com/photo-1645830166230-187caf791b90?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
40	41363919Y	paulamartinez	$2y$10$.Kmq6/lP/SpW1sETS4w6f.3lQQ/e20wIvtHOENOxhoCKkebPoL5pi	t	f	https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
41	61744063B	victorlopez	$2y$10$jAhYdwSNvLCew5j0zQh14OLUEI5/WgMYXh6cLMQP9d0qOuDJv0.Sm	t	f	https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
42	78128952E	silviamorales	$2y$10$eIPLLAdP0r5WLjsmQ4hDb.x2DcBf6t628U6YM2/prZyG71Xxg2a4S	t	f	https://images.unsplash.com/photo-1485960994840-902a67e187c8?q=80&w=2076&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
43	04563677V	palmiravilla	$2y$10$VLeRQs1FGMD3eedB3zigtOAYWa6b3vsetkcBO7qVNEAYMI1/Ijx7u	t	f	https://images.unsplash.com/photo-1507152832244-10d45c7eda57?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
44	75920194T	joseluissalas	$2y$10$Y.VlGYSy6RJZc.3ir78y..wtDXgl8W6/Jeccuawh6br3FmvsndZlm	t	f	https://images.unsplash.com/photo-1697634203747-5282f52a8585?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
45	39496103C	pablogil	$2y$10$cmUIhc2Kws5AhPPLkUQzIufr29S1.8uROF9iaNglZnrl07PrP1sIK	t	f	https://plus.unsplash.com/premium_photo-1682432787940-198c4f9fa7fb?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
46	54266227G	margaretkeller	$2y$10$1q1ha09PBkaJmj6E6Y2jcu6VDBqp7ObaN6oE46GRgNz6ZiTaUYMqS	t	f	https://images.unsplash.com/photo-1579295560051-3df968edb036?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
47	72534248E	gustavomadera	$2y$10$AqPoCEMm8yBEw8kkI4S6IOhaLIT7CI9dIV3bEPWRp9zvTAd/GMdnK	t	f	https://images.unsplash.com/photo-1520560868530-7877729f8942?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
48	97585098P	arturoquevedo	$2y$10$LFgZ.vJOOrQZT8i.d23ed.9K8BJvx2Gr8bqHrdh2YrSNp2GaTwdvW	t	f	https://plus.unsplash.com/premium_photo-1682144187125-b55e638cf286?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
49	22137770V	antoniogonzaga	$2y$10$eFhIGq8bkrB2HWFYSX4rnOI2IVVk78zLzRjz.T6SkYxWEDG4h7./S	t	f	https://images.unsplash.com/photo-1456327102063-fb5054efe647?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
50	80073680P	erikatapia	$2y$10$MN4.5RNOXgww/G73kDaNpeQCNGS.TzCSKbBdgJ/S.70pLK4nZkzRi	t	f	https://images.unsplash.com/photo-1641311280728-bec9ba3f221f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
51	97545284F	andreamolina	$2y$10$61PZmJcxWiDQPfmWMsY4gOTzF1MGesjBf9FaOcVypM3QneLedEu..	t	f	https://images.unsplash.com/photo-1512288094938-363287817259?q=80&w=2572&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
52	30974704Y	bhsoler	$2y$10$j7X/vbfDEzUdQivHjsBWbO/bT9QQuaHRX.U7eVRIsSp/1x5EynwLq	t	f	https://images.unsplash.com/photo-1566753323558-f4e0952af115?q=80&w=1921&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
53	40786311C	miriamespinosa	$2y$10$eXcLtZmEpIHBIVqn2/9M0eif6Ft8CmBJ9c5ormbPjVviQRkihvrUC	t	f	https://images.unsplash.com/photo-1508002366005-75a695ee2d17?q=80&w=2768&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
54	06200942G	françoismoreau	$2y$10$2Mz0/f6CQEnoTCMe5/rhb.zIKH.aHndM8XE1ReUQMylFUbQOqfk1e	t	f	https://images.unsplash.com/photo-1513925407702-735e1f07e988?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
55	01017494C	hwei	$2y$10$34PWzK8Dq92W9j/w1d2yLewibY3DQiGqLuBk/g2jXNuV0n8anyFae	t	f	https://images.unsplash.com/photo-1622626426572-c268eb006092?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
56	41794147L	elenamontoya	$2y$10$GWY3HTEM98i2.Nc1m/m4sOf3Nb5tTdwbjjaUi8pFytZWG4/DF2RIa	t	f	https://images.unsplash.com/photo-1526080652727-5b77f74eacd2?q=80&w=2076&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
57	31136436W	germanvargas	$2y$10$OGUkFASK5iqB9oOJhiXh2eQyu5wJ6Hu.DLU98ipNllc35VKb0nvUK	t	f	https://images.unsplash.com/photo-1529111290557-82f6d5c6cf85?q=80&w=2586&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
58	49751664L	estebanlozano	$2y$10$23EZW8nei6hSXAdMqstad.cCWz/LPxMi7LkECqB6PgNTf/PpZ.uYm	t	f	https://plus.unsplash.com/premium_photo-1667511020337-b399fe63b7fb?q=80&w=2672&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
59	05009487H	chengmin	$2y$10$ppvRpChfp8eSMk1ysVuzTOKnXY7ijyEUkAoM77AWGTmGsI5.C5JuK	t	f	https://images.unsplash.com/photo-1699435743279-c939e8eb8f80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
60	41318419T	adriananavarro	$2y$10$WHLeqMVUSldW5dgcdWJ6CeqW3rMQEwezP3vgKAmu7aaxXCsaklZPi	t	f	https://images.unsplash.com/photo-1627744078152-c106f8d738d6?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
61	11928436U	franciscolombardi	$2y$10$vTY7ZE13cJZjxnGIwlKK8eRYsGcSIKSGzp0MMT.Vb/rC9777L0XWK	t	f	https://images.unsplash.com/photo-1572631382901-cf1a0a6087cb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBvcnRyYWl0c3xlbnwwfHwwfHx8MA%3D%3D
62	11155577Y	hclinares	$2y$10$qUecEQVgV8JpNmhkEw4LPOuFt8eP1q6pduVHQJSvnHAzBWmiej6Jq	t	f	https://images.unsplash.com/photo-1510821984-41a9197835e6?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
63	73291043U	dmtellotrtello	$2y$10$vJHT4BS9UEXGJaXHLaaXweoBCq4LpzOKp24CDcRYAgCaAmT.DUeHq	t	f	https://images.unsplash.com/photo-1620231145627-fd3a3b321d57?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
64	11222712B	mcvizcarra	$2y$10$yvhAAijkojuC6k8VMeGiDeRFVLDIe.0tKQR1nk3HrpR7SuTZPvhsa	t	f	https://images.unsplash.com/photo-1588976612067-d015cbbdb38b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
65	11109874H	mcromero	$2y$10$tNi10VR0VNRdBnqcqeTdI.7xFuaLzpenpOQiG24ApNfP0eOG2kxD.	t	f	https://images.unsplash.com/photo-1511684344724-cda927f1ba0e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
66	16852244F	amapola.mm	$2y$10$8iBzkf0UUiMvXG/OgZ/Zq.ZDLtWWDOYrB2K1JYHqGQVsygh1rTfAa	t	f	https://images.unsplash.com/photo-1618297817149-d703265028b8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
67	61999991V	dqalegria	$2y$10$HlzB2MeeHQGtLH9bZ7oi6ucSTph6TrzyX6H42R2mzSNIP.gzj/5m2	t	f	https://images.unsplash.com/photo-1526510747491-58f928ec870f?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
68	11000222Y	emlopez	$2y$10$tdTUhU5LWYdBrqHLaPDwPe9vY0A9KycaUB1Eo3DYHD2f15hWg.W22	t	f	https://images.unsplash.com/photo-1590031905406-f18a426d772d?q=80&w=2144&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
69	72934798Q	adjimenez	$2y$10$VyKcQ38wWm.vZpIscGhPJOeUlWj4ut2UUCwC4vUV8/J1bM8Fi4cU6	t	f	https://plus.unsplash.com/premium_photo-1664889357880-64042b14b803?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
70	59128374D	brunoPB	$2y$10$x4/NZbl5fAH6roC.NnGfROXlxzw9DZjTXWCVIUGfLt6LJU.uooGQS	t	f	https://images.unsplash.com/photo-1620225700456-a5006ce38d66?q=80&w=2013&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
71	93094857W	omarQM	$2y$10$VuJtNKfLDE5Ikd7UxlNC3.Upc2.OwrBONv90nwXdD.SThcsQFYJpW	t	f	https://images.unsplash.com/photo-1611413194619-43d598287739?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
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

