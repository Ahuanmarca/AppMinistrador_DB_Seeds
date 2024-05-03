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
-- Name: incidences; Type: TABLE; Schema: public; Owner: renzobelon
--

CREATE TABLE public.incidences (
    id integer NOT NULL,
    title text NOT NULL,
    description text,
    image_url text,
    user_dni character varying(255) NOT NULL,
    building_id integer NOT NULL,
    provider_id integer,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    status character varying(55) NOT NULL,
    category character varying(55) NOT NULL
);


ALTER TABLE public.incidences OWNER TO renzobelon;

--
-- Name: incidences_id_seq; Type: SEQUENCE; Schema: public; Owner: renzobelon
--

CREATE SEQUENCE public.incidences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.incidences_id_seq OWNER TO renzobelon;

--
-- Name: incidences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: renzobelon
--

ALTER SEQUENCE public.incidences_id_seq OWNED BY public.incidences.id;


--
-- Name: incidences id; Type: DEFAULT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.incidences ALTER COLUMN id SET DEFAULT nextval('public.incidences_id_seq'::regclass);


--
-- Data for Name: incidences; Type: TABLE DATA; Schema: public; Owner: renzobelon
--

COPY public.incidences (id, title, description, image_url, user_dni, building_id, provider_id, date, "time", status, category) FROM stdin;
1	Humedad en la escalera	Humedad en la escalera, planta baja y 1era planta. Manchas en la pared y pintura descascarada. Mal olor.	https://humedadcontrolada.com/wp-content/uploads/2017/07/Capilaridad-11.jpg	55921386C	1	1	2024-02-02	18:00:00	solucionado	Escalera
2	Barandilla astillada	Barandilla por lijar y barnizar en zona común del hall principal.	https://thumbs.dreamstime.com/z/vieja-entrada-lamentable-sucia-con-las-escaleras-96600704.jpg?ct=jpeg	26033775Y	2	2	2024-02-10	11:00:00	pendiente	Escalera
3	Suelo agrietado	Suelo con baldosines para cambiar por estar quebrados en el segundo piso	https://media.istockphoto.com/id/1198105278/es/foto/pasillo-con-pared-blanca-sucia-y-baldosas-de-suelo-hexagonal-roto.jpg?s=2048x2048&w=is&k=20&c=c3hiK-64TeRLYUYrT-TX3xei6xdK2IYnsD-1vdFQJNw=	84935712R	2	3	2024-02-15	19:00:00	pendiente	Mantenimiento
4	Fugas de agua	Tuberías rotas o con fugas que pueden provocar daños en la propiedad y desperdicio de agua en el primer piso.	https://supervecina.com/wp-content/uploads/2023/06/Tuberias.webp	93037013N	1	4	2024-02-19	16:35:00	solucionado	Agua
5	Averías eléctricas	Bombillas que no funcionan en el pasillo del descansillo del piso 2	https://static.simonelectric.com/sites/default/files/inline-images/como-iluminar-un-pasillo-con-leds-interiores.jpg	56570285Z	2	5	2024-02-20	18:00:00	solucionado	Electricidad
6	Ruidos molestos	Quejas de arrendatarios sobre ruidos excesivos o molestos provenientes de otros residentes de la tercera planta	\N	14482182W	1	6	2024-02-25	09:45:00	activo	Comunidad
7	Problemas de basura y reciclaje	Acumulación de basura y contenedores desbordados a la entrada de la finca	https://estaticos-cdn.prensaiberica.es/clip/43adbf92-5531-4717-aca3-7ffe79c3d118_16-9-discover-aspect-ratio_default_1193133.jpg	43860950L	2	7	2024-02-28	18:00:00	activo	Limpieza
8	Plagas y control de plagas	Presencia de insectos, concretamente cucarachas, en la planta baja y el primer piso.	https://eleconomico.es/media/k2/items/cache/e856b833cde910b2828b785768587319_XL.jpg?t=20190614_170948	56570285Z	2	8	2024-03-02	12:20:00	pendiente	Limpieza
9	Falta de limpieza	La zona común de la entrada de la finca está muy sucia.	https://suelodebarro.es/galerias/fotos/problemas/268.jpg	92074524G	1	9	2024-03-03	11:00:00	pendiente	Limpieza
10	Ascensor con mal funcionamiento	La puerta del ascensor se queda abierta si no la cierras manualmente	https://www.rescateascensores.es/Imagenes/Imagen7.jpg	12385025T	1	10	2024-03-10	13:00:00	pendiente	Ascensor
11	Extintor agotado	El extintor del piso 4 está vacío.	https://cdn.wallapop.com/images/10420/2k/7f/__/c10420p154871727/i3065547042.jpg?pictureSize=W800	95515925F	2	11	2024-03-15	11:00:00	activo	Insumos
12	Goteras en el techo	Goteras en el techo del último piso, causando filtraciones de agua en el pasillo principal.	https://th.bing.com/th/id/OIP.xOwqu-GNKLEiBqpG1hZbBQHaEf?rs=1&pid=ImgDetMain	25332987M	2	12	2024-03-19	19:00:00	pendiente	Reparaciones
13	Mal funcionamiento del sistema de calefacción	Radiadores que no calientan adecuadamente en varias habitaciones de la finca.	https://www.bing.com/images/search?view=detailV2&ccid=ZyCxHSKA&id=EB8FD2FFFDD8419529D47F9E637538FF6F612301&thid=OIP.ZyCxHSKADEvyQINVvaVsgQHaE8&mediaurl=https%3a%2f%2fwww.hogardelgas.com%2fwp-content%2fuploads%2f2021%2f07%2fcalefaccion_central-1-768x512.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.6720b11d22800c4bf2408355bda56c81%3frik%3dASNhb%252f84dWOefw%26pid%3dImgRaw%26r%3d0&exph=512&expw=768&q=imagenes+de+Mal+funcionamiento+del+sistema+de+calefacci%c3%b3n+&simid=607998697852713264&FORM=IRPRST&ck=8CB94C46D41BF5A711D943F5514AE3B0&selectedIndex=117&itb=0	87626347G	2	13	2024-03-20	11:25:00	pendiente	Calefacción
14	Ventanas rotas	Ventanas rotas en la fachada frontal del edificio, comprometiendo la seguridad y la eficiencia energética	https://www.bing.com/images/search?view=detailV2&ccid=ks0Io8s2&id=6E01A7A9A158C71950D43E2F3B8E90077CBCB35B&thid=OIP.ks0Io8s29GMF34FrdmeMTwHaE7&mediaurl=https%3a%2f%2fimg.freepik.com%2ffotos-premium%2fcristal-ventanas-rotas-refleja-cielo-casa-ventanas-rotas-cerca_402255-35.jpg%3fw%3d2000&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.92cd08a3cb36f46305df816b76678c4f%3frik%3dW7O8fAeQjjsvPg%26pid%3dImgRaw%26r%3d0&exph=1332&expw=2000&q=Ventanas+rotas&simid=608049786531545910&FORM=IRPRST&ck=F7A027454EBA191865F7F81633C4889A&selectedIndex=2&itb=0	73017594G	2	14	2024-03-25	19:40:00	solucionado	Reparaciones
15	Inundación en el sótano	Inundación en el sótano debido a una tubería rota, causando daños a los bienes almacenados.	https://www.bing.com/images/search?view=detailV2&ccid=K2FWE9ts&id=E2DB9E7EBE3E7B7AEC182211A6EC05D166091AE0&thid=OIP.K2FWE9tspERdVYp8ePcIaQHaFj&mediaurl=https%3a%2f%2fsfo2.digitaloceanspaces.com%2festaticos%2fvar%2fwww%2fhtml%2fwp-content%2fuploads%2f2021%2f06%2finundacion-parque-central-junio-2021-1.jpeg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.2b615613db6ca4445d558a7c78f70869%3frik%3d4BoJZtEF7KYRIg%26pid%3dImgRaw%26r%3d0&exph=750&expw=1000&q=Inundaci%c3%b3n+en+el+s%c3%b3tano&simid=608039813584460122&FORM=IRPRST&ck=D60F871FAA9CE89B366C7CF22BA04730&selectedIndex=14&itb=0	56570285Z	2	15	2024-03-28	11:00:00	solucionado	Gasfitería
16	Detector de humo estropeado	El detector de humos del piso 2 no funciona.	https://www.bing.com/images/search?view=detailV2&ccid=Hro9CSPR&id=273B85F6C28006C74DBF295B7D8B06179620BB37&thid=OIP.Hro9CSPRJmQzREZ3rB-TZAHaHa&mediaurl=https%3a%2f%2fimages-na.ssl-images-amazon.com%2fimages%2fI%2f71qzrcxP1qL._SL1500_.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.1eba3d0923d1266433444677ac1f9364%3frik%3dN7sglhcGi31bKQ%26pid%3dImgRaw%26r%3d0&exph=1500&expw=1500&q=Detector+de+humo+estropeado&simid=608008056603038250&FORM=IRPRST&ck=BF414DF543408DE5FF886EC58BFD1D5B&selectedIndex=126&itb=0	90158168P	2	16	2024-04-02	10:15:00	pendiente	Mantenimiento
17	Puerta de entrada averiada	La puerta de entrada principal no cierra correctamente, dejando la entrada de la finca vulnerable a intrusos.	https://lh6.googleusercontent.com/proxy/Rtt0hyZjXV_lewNGfRylylbxk-4Zde20CeIJ_tl4sUV2Ma3DNf5h4TYxL7yZs3g-Q2TXG4Pg0_Z7AZxLDW4huBuASURqqD7F8-aiM8gH6zGLPTaw8W_OQNRdIAKdNqAG_HlklYZLQny5kLjLbVqEQg	43860950L	2	17	2024-04-02	17:45:00	activo	Mantenimiento
18	Pared con grietas estructurales	Grietas visibles en una pared portante del edificio que pueden indicar problemas estructurales graves.	https://lh4.googleusercontent.com/proxy/M8I9twM2c_wr1_qvaEa7wZcb5ov-AoTjRD1_9AZ7qkGMtBXScuX-R0fmuzSH-bu69kWqji2EWzMal9fUcI98tFvHPA3o5YuvOEVBeXfjlO2n3N32csdLK8lWGbYiW58	90763073J	2	18	2024-04-10	09:45:00	pendiente	Mantenimiento
19	Falta de iluminación exterior	Áreas exteriores de la finca con poca iluminación, aumentando el riesgo de accidentes y robos durante la noche.	https://fachadasbarcelonarehabilitacion.es/wp-content/uploads/2018/04/diferentes-tipos-de-fachada-300x234.jpg	26033775Y	2	19	2024-04-15	18:20:00	solucionado	Iluminación
20	Plantas de la entrada muertas	Las plantas de la zona de entrada se han secado por falta de riego y están muertas	https://media-cdn.tripadvisor.com/media/photo-i/25/d0/1b/b4/esto-es-lo-que-encontramos.jpg	84935712R	2	20	2024-04-16	12:20:00	pendiente	Jardinería
\.


--
-- Name: incidences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: renzobelon
--

SELECT pg_catalog.setval('public.incidences_id_seq', 21, true);


--
-- Name: incidences incidences_pkey; Type: CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.incidences
    ADD CONSTRAINT incidences_pkey PRIMARY KEY (id);


--
-- Name: incidences fk_building_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.incidences
    ADD CONSTRAINT fk_building_id FOREIGN KEY (building_id) REFERENCES public.buildings(id);


--
-- Name: incidences fk_provider_id; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.incidences
    ADD CONSTRAINT fk_provider_id FOREIGN KEY (provider_id) REFERENCES public.providers(id);


--
-- Name: incidences fk_user_dni; Type: FK CONSTRAINT; Schema: public; Owner: renzobelon
--

ALTER TABLE ONLY public.incidences
    ADD CONSTRAINT fk_user_dni FOREIGN KEY (user_dni) REFERENCES public.users(person_dni);


--
-- PostgreSQL database dump complete
--

