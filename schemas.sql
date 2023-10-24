--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-10-23 22:49:59

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
-- TOC entry 215 (class 1259 OID 16413)
-- Name: categoria; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 16477)
-- Name: produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    descricao character varying NOT NULL,
    preco double precision NOT NULL,
    foto character varying,
    quantidade integer NOT NULL,
    categoria_id integer NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 16406)
-- Name: usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    name character varying NOT NULL,
    user_name character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    tel character varying NOT NULL,
    cpf_cnpj character varying NOT NULL,
    dt_birth character varying NOT NULL,
    street character varying NOT NULL,
    house_number character varying NOT NULL,
    district character varying NOT NULL,
    city character varying NOT NULL,
    state character varying NOT NULL,
    cep character varying NOT NULL,
    administrador boolean NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16490)
-- Name: venda; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    data_hora time with time zone NOT NULL,
    " usuario_id" integer NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 16500)
-- Name: venda_produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.venda_produto (
    venda_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade integer NOT NULL
);


--
-- TOC entry 3345 (class 0 OID 16413)
-- Dependencies: 215
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categoria (id, descricao) FROM stdin;
\.


--
-- TOC entry 3346 (class 0 OID 16477)
-- Dependencies: 216
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.produto (id, descricao, preco, foto, quantidade, categoria_id) FROM stdin;
\.


--
-- TOC entry 3344 (class 0 OID 16406)
-- Dependencies: 214
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.usuario (id, name, user_name, email, password, tel, cpf_cnpj, dt_birth, street, house_number, district, city, state, cep, administrador) FROM stdin;
1	JoÃ£o	joao	joao@smd.com	123	(00) 00000-0000	000.000.000-00	2000-02-05	ferreira	000	jÃ£o	Tal	crist	00.000-000	f
\.


--
-- TOC entry 3347 (class 0 OID 16490)
-- Dependencies: 217
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.venda (id, data_hora, " usuario_id") FROM stdin;
\.


--
-- TOC entry 3348 (class 0 OID 16500)
-- Dependencies: 218
-- Data for Name: venda_produto; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.venda_produto (venda_id, produto_id, quantidade) FROM stdin;
\.


--
-- TOC entry 3191 (class 2606 OID 16465)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 16483)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 16412)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 16494)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3197 (class 2606 OID 16504)
-- Name: venda_produto venda_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_pkey PRIMARY KEY (venda_id, produto_id);


--
-- TOC entry 3198 (class 2606 OID 16484)
-- Name: produto produto_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);


--
-- TOC entry 3199 (class 2606 OID 16495)
-- Name: venda venda_ usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT "venda_ usuario_id_fkey" FOREIGN KEY (" usuario_id") REFERENCES public.usuario(id);


--
-- TOC entry 3200 (class 2606 OID 16505)
-- Name: venda_produto venda_produto_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id);


--
-- TOC entry 3201 (class 2606 OID 16510)
-- Name: venda_produto venda_produto_venda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_venda_id_fkey FOREIGN KEY (venda_id) REFERENCES public.venda(id) NOT VALID;


-- Completed on 2023-10-23 22:49:59

--
-- PostgreSQL database dump complete
--

