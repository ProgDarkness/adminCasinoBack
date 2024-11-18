--
-- Name: visitantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visitantes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    cedula character varying(20) NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) NOT NULL,
    trabajador character varying(100) NOT NULL,
    piso character varying(100) NOT NULL,
    departamento character varying(100) NOT NULL,
    fecha_registro timestamp(0) without time zone NOT NULL,
    fecha_salida timestamp(0) without time zone,
    ip character varying(20) NOT NULL,
    foto1 text,
    foto2 text,
    quien character varying(200),
    motivo character varying(200),
    telefono character varying(200),
    carnet character varying(200)
);


ALTER TABLE public.visitantes OWNER TO postgres;

--
-- Name: visitantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitantes_id_seq OWNER TO postgres;

--
-- Name: visitantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitantes_id_seq OWNED BY public.visitantes.id;


--
-- Name: visitantes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitantes ALTER COLUMN id SET DEFAULT nextval('public.visitantes_id_seq'::regclass);


--
-- Name: visitantes visitantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitantes
    ADD CONSTRAINT visitantes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--