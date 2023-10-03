-- Table: public.categoria

-- DROP TABLE IF EXISTS public.categoria;

CREATE TABLE IF NOT EXISTS public.categoria
(
    id numeric NOT NULL,
    descricao character varying(200)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT categoria_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.categoria
    OWNER to postgres;


-- Table: public.produto

-- DROP TABLE IF EXISTS public.produto;

CREATE TABLE IF NOT EXISTS public.produto
(
    id numeric NOT NULL,
    descricao character varying(200)[] COLLATE pg_catalog."default" NOT NULL,
    preco double precision NOT NULL,
    foto character varying(300)[] COLLATE pg_catalog."default" NOT NULL,
    quantidade integer NOT NULL,
    categoria_id integer NOT NULL,
    CONSTRAINT produto_pkey PRIMARY KEY (id),
    CONSTRAINT produto FOREIGN KEY (categoria_id)
        REFERENCES public.categoria (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.produto
    OWNER to postgres;

-- Table: public.usuario

-- DROP TABLE IF EXISTS public.usuario;

CREATE TABLE IF NOT EXISTS public.usuario
(
    id numeric NOT NULL,
    nome character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    email character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    login character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    senha character varying(100)[] COLLATE pg_catalog."default" NOT NULL,
    endereco character varying(300)[] COLLATE pg_catalog."default" NOT NULL,
    administrador boolean NOT NULL,
    CONSTRAINT usuario_pkey PRIMARY KEY (id),
    CONSTRAINT login UNIQUE (login)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usuario
    OWNER to postgres;

-- Table: public.venda

-- DROP TABLE IF EXISTS public.venda;

CREATE TABLE IF NOT EXISTS public.venda
(
    id integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    id_usuario integer NOT NULL,
    CONSTRAINT venda_pkey PRIMARY KEY (id),
    CONSTRAINT venda_id_usuario_fkey FOREIGN KEY (id_usuario)
        REFERENCES public.usuario (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.venda
    OWNER to postgres;
    
-- Table: public.venda_produto

-- DROP TABLE IF EXISTS public.venda_produto;

CREATE TABLE IF NOT EXISTS public.venda_produto
(
    venda_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade integer NOT NULL,
    CONSTRAINT venda_produto_pkey PRIMARY KEY (venda_id, produto_id),
    CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id)
        REFERENCES public.produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT venda_produto_venda_id_fkey FOREIGN KEY (venda_id)
        REFERENCES public.venda (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.venda_produto
    OWNER to postgres;