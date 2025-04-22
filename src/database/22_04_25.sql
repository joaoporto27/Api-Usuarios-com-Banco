--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 10:57:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16431)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    image text NOT NULL,
    user_id integer
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16430)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 218 (class 1259 OID 16420)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    photo text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16419)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4701 (class 2604 OID 16434)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16423)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4857 (class 0 OID 16431)
-- Dependencies: 220
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, image, user_id) FROM stdin;
1	Post 1	https:/imagem.com	1
2	Post 2	https:/imagem.com	2
3	Post 3	https:/imagem.com	3
\.


--
-- TOC entry 4855 (class 0 OID 16420)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, photo) FROM stdin;
1	Thiago Ferreira	thiago.ferreira@email.com	\N
2	Marcelo Carboni	marcelo@email.com	\N
3	Eduardo Correia	eduardo@email.com	\N
4	Felipe Santos	felipe@email	\N
5	Carlos Eduardo	duduedu@email.com	\N
6	Carlos Eduardo	carloseduardo@email.com	\N
7	Luiz Carvalho	luizcarvalho@email.com	\N
8	Gustavo Porto	guporto@email.com	\N
9	Luciano Porto	luporto@email.com	\N
10	Rachel Porto 	raporto@email.com	\N
11	Lionel Messi	lionel.messi@email.com	\N
12	Cristiano Ronaldo	cristiano.ronaldo@email.com	\N
13	Neymar Jr	neymar.jr@email.com	\N
14	Kylian Mbapp‚	kylian.mbappe@email.com	\N
15	Robert Lewandowski	robert.lewandowski@email.com	\N
16	Kevin De Bruyne	kevin.debruyne@email.com	\N
17	Mohamed Salah	mohamed.salah@email.com	\N
18	Virgil van Dijk	virgil.vandijk@email.com	\N
19	Karim Benzema	karim.benzema@email.com	\N
20	Erling Haaland	erling.haaland@email.com	\N
21	Luka Modric	luka.modric@email.com	\N
22	Sergio Ramos	sergio.ramos@email.com	\N
23	Harry Kane	harry.kane@email.com	\N
24	Paulo Dybala	paulo.dybala@email.com	\N
25	Eden Hazard	eden.hazard@email.com	\N
26	Zlatan Ibrahimovic	zlatan.ibrahimovic@email.com	\N
27	Gareth Bale	gareth.bale@email.com	\N
28	Luis Su rez	luis.suarez@email.com	\N
29	Manuel Neuer	manuel.neuer@email.com	\N
30	Toni Kroos	toni.kroos@email.com	\N
31	Gerard Piqu‚	gerard.pique@email.com	\N
32	Li Wei	li.wei@email.com	\N
33	Wang Fang	wang.fang@email.com	\N
34	Zhang Wei	zhang.wei@email.com	\N
35	Liu Yang	liu.yang@email.com	\N
36	TeoKung Myadora	teokung.myadora@email.com	\N
37	Chen Jie	chen.jie@email.com	\N
38	Zhao Min	zhao.min@email.com	\N
39	Sun Hao	sun.hao@email.com	\N
40	Zhou Lei	zhou.lei@email.com	\N
41	Wu Jing	wu.jing@email.com	\N
42	Xu Yan	xu.yan@email.com	\N
43	Hu Xia	hu.xia@email.com	\N
44	Guo Lin	guo.lin@email.com	\N
45	Ma Qiang	ma.qiang@email.com	\N
46	He Ping	he.ping@email.com	\N
47	Gao Feng	gao.feng@email.com	\N
48	Lin Shu	lin.shu@email.com	\N
49	Deng Hui	deng.hui@email.com	\N
50	Cai Ning	cai.ning@email.com	\N
51	Feng Yu	feng.yu@email.com	\N
52	Tang Bo	tang.bo@email.com	\N
53	Volin Raba	volin.raba@email.com	\N
54	Zheng Li	zheng.li@email.com	\N
55	Qin Hua	qin.hua@email.com	\N
56	Bao Ling	bao.ling@email.com	\N
\.


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 3, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 56, true);


--
-- TOC entry 4707 (class 2606 OID 16438)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16429)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16427)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16439)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2025-04-22 10:57:28

--
-- PostgreSQL database dump complete
--

