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
-- Name: bank_accounts; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.bank_accounts (
    id integer NOT NULL,
    iban character varying(255),
    holder character varying(255),
    bank character varying(255),
    currency character varying(55),
    description text
);


ALTER TABLE public.bank_accounts OWNER TO renzobelon;

--
-- Name: bank_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.bank_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bank_accounts_id_seq OWNER TO renzobelon;

--
-- Name: bank_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.bank_accounts_id_seq OWNED BY public.bank_accounts.id;


--
-- Name: bank_accounts id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.bank_accounts ALTER COLUMN id SET DEFAULT nextval('public.bank_accounts_id_seq'::regclass);


--
-- Data for Name: bank_accounts; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.bank_accounts (id, iban, holder, bank, currency, description) FROM stdin;
1	ES12345678901234567890	AppMinistrador S.A.	Banco Bilbao Vizcaya Argentaria, S.A.	Euro	Cobros y pagos de comunidad de fincas administradas
2	ES98765432109876543210	AppMinistrador S.A.	Banco Bilbao Vizcaya Argentaria, S.A.	Euro	Compra y venta de inmuebles
3	ES24681012141618202224	AppMinistrador S.A.	Banco Santander S.A.	Euro	Cuenta secundaria 1
4	ES13579111315171921232	AppMinistrador S.A.	Banco Santander S.A.	Euro	Cuenta secundaria 2
\.


--
-- Name: bank_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.bank_accounts_id_seq', 1, false);


--
-- Name: bank_accounts bank_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

