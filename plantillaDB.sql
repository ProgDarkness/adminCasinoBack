--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-18 19:17:59

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

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 19465)
-- Name: d008t_usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d008t_usuarios (
    co_usuario integer NOT NULL,
    usuario character varying(60) NOT NULL,
    nu_clave character varying(100) NOT NULL,
    nb_usuario character varying(160) NOT NULL,
    nb2_usuario character varying(160),
    ap_usuario character varying(160) NOT NULL,
    ap2_usuario character varying(160),
    cedula_usr character varying(15) NOT NULL,
    gerencia character varying(60) NOT NULL,
    co_rol integer,
    tx_correo character varying(50) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.d008t_usuarios OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 19471)
-- Name: d008t_usuarios_co_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.d008t_usuarios_co_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.d008t_usuarios_co_usuario_seq OWNER TO postgres;

--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 216
-- Name: d008t_usuarios_co_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.d008t_usuarios_co_usuario_seq OWNED BY public.d008t_usuarios.co_usuario;


--
-- TOC entry 217 (class 1259 OID 19472)
-- Name: d009t_personal_co_personal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.d009t_personal_co_personal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.d009t_personal_co_personal_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 19473)
-- Name: d010t_especialidad_personal_co_especialidad_personal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.d010t_especialidad_personal_co_especialidad_personal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.d010t_especialidad_personal_co_especialidad_personal_seq OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 19474)
-- Name: d011t_horarios_personal_co_horario_personal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.d011t_horarios_personal_co_horario_personal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.d011t_horarios_personal_co_horario_personal_seq OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 19475)
-- Name: d012t_fotoperfil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d012t_fotoperfil (
    id_fotoperfil integer NOT NULL,
    tx_archivo character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone,
    id_usuario integer NOT NULL
);


ALTER TABLE public.d012t_fotoperfil OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 19481)
-- Name: d012t_fotoperfil_id_fotoperfil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.d012t_fotoperfil_id_fotoperfil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.d012t_fotoperfil_id_fotoperfil_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 221
-- Name: d012t_fotoperfil_id_fotoperfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.d012t_fotoperfil_id_fotoperfil_seq OWNED BY public.d012t_fotoperfil.id_fotoperfil;


--
-- TOC entry 222 (class 1259 OID 19482)
-- Name: d013t_permisos_id_permiso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.d013t_permisos_id_permiso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.d013t_permisos_id_permiso_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19483)
-- Name: d013t_permisos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.d013t_permisos (
    id_permiso bigint DEFAULT nextval('public.d013t_permisos_id_permiso_seq'::regclass) NOT NULL,
    co_rol integer NOT NULL,
    id_ruta integer NOT NULL,
    tx_permisos boolean[] NOT NULL
);


ALTER TABLE public.d013t_permisos OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 19489)
-- Name: e001m_especialidades_co_especialidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.e001m_especialidades_co_especialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.e001m_especialidades_co_especialidad_seq OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 19490)
-- Name: r004m_roles_co_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.r004m_roles_co_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.r004m_roles_co_rol_seq OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 19491)
-- Name: i005t_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i005t_roles (
    co_rol integer DEFAULT nextval('public.r004m_roles_co_rol_seq'::regclass) NOT NULL,
    nb_rol character varying(50) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.i005t_roles OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 19498)
-- Name: i009t_rutas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i009t_rutas (
    id_ruta integer NOT NULL,
    nb_ruta character varying NOT NULL,
    tx_tag_name character varying
);


ALTER TABLE public.i009t_rutas OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19503)
-- Name: i009t_rutas_id_ruta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i009t_rutas_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i009t_rutas_id_ruta_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 228
-- Name: i009t_rutas_id_ruta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i009t_rutas_id_ruta_seq OWNED BY public.i009t_rutas.id_ruta;


--
-- TOC entry 229 (class 1259 OID 19504)
-- Name: i010t_menus_id_menu_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i010t_menus_id_menu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i010t_menus_id_menu_seq OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 19505)
-- Name: i010t_menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i010t_menus (
    id_menu integer DEFAULT nextval('public.i010t_menus_id_menu_seq'::regclass) NOT NULL,
    co_rol integer NOT NULL,
    tx_menu jsonb NOT NULL
);


ALTER TABLE public.i010t_menus OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 19511)
-- Name: i011t_items_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i011t_items_menu (
    id_item integer NOT NULL,
    id_ruta integer NOT NULL,
    json_item jsonb NOT NULL
);


ALTER TABLE public.i011t_items_menu OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19516)
-- Name: i011t_items_menu_id_item_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i011t_items_menu_id_item_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i011t_items_menu_id_item_seq OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 232
-- Name: i011t_items_menu_id_item_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i011t_items_menu_id_item_seq OWNED BY public.i011t_items_menu.id_item;


--
-- TOC entry 4668 (class 2604 OID 19581)
-- Name: d008t_usuarios co_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d008t_usuarios ALTER COLUMN co_usuario SET DEFAULT nextval('public.d008t_usuarios_co_usuario_seq'::regclass);


--
-- TOC entry 4670 (class 2604 OID 19582)
-- Name: d012t_fotoperfil id_fotoperfil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d012t_fotoperfil ALTER COLUMN id_fotoperfil SET DEFAULT nextval('public.d012t_fotoperfil_id_fotoperfil_seq'::regclass);


--
-- TOC entry 4674 (class 2604 OID 19583)
-- Name: i009t_rutas id_ruta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i009t_rutas ALTER COLUMN id_ruta SET DEFAULT nextval('public.i009t_rutas_id_ruta_seq'::regclass);


--
-- TOC entry 4676 (class 2604 OID 19584)
-- Name: i011t_items_menu id_item; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i011t_items_menu ALTER COLUMN id_item SET DEFAULT nextval('public.i011t_items_menu_id_item_seq'::regclass);


--
-- TOC entry 4837 (class 0 OID 19465)
-- Dependencies: 215
-- Data for Name: d008t_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.d008t_usuarios (co_usuario, usuario, nu_clave, nb_usuario, nb2_usuario, ap_usuario, ap2_usuario, cedula_usr, gerencia, co_rol, tx_correo, created_at, updated_at) FROM stdin;
2	gmarcano	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	GABRIEL	FABIAN	MARCANO	REQUENA	28415452	SISTEMAS	1	gabrielmarcano141@gmail.com	2024-07-28 02:41:18.671961	\N
\.


--
-- TOC entry 4842 (class 0 OID 19475)
-- Dependencies: 220
-- Data for Name: d012t_fotoperfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.d012t_fotoperfil (id_fotoperfil, tx_archivo, created_at, updated_at, id_usuario) FROM stdin;
\.


--
-- TOC entry 4845 (class 0 OID 19483)
-- Dependencies: 223
-- Data for Name: d013t_permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.d013t_permisos (id_permiso, co_rol, id_ruta, tx_permisos) FROM stdin;
4	1	4	{t,t,t,t}
14	1	9	{t,t,t,t}
18	1	10	{t,t,t,t}
19	1	11	{t,t,t,t}
17	7	4	{t,t,t,t}
\.


--
-- TOC entry 4848 (class 0 OID 19491)
-- Dependencies: 226
-- Data for Name: i005t_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i005t_roles (co_rol, nb_rol, created_at, updated_at) FROM stdin;
1	SUPERUSER	\N	\N
7	PRUEBA	\N	\N
\.


--
-- TOC entry 4849 (class 0 OID 19498)
-- Dependencies: 227
-- Data for Name: i009t_rutas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i009t_rutas (id_ruta, nb_ruta, tx_tag_name) FROM stdin;
4	/gestion-usuarios	Gestión Usuarios
9	/perfil	Perfil
10	/perfil/acceso	Cambio de Contraseña
11	/cita	Cita
\.


--
-- TOC entry 4852 (class 0 OID 19505)
-- Dependencies: 230
-- Data for Name: i010t_menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i010t_menus (id_menu, co_rol, tx_menu) FROM stdin;
7	7	[{"icon": "pi pi-fw pi-id-card", "label": "Gestion de Usuarios", "command": "() => { router.push('/gestion-usuarios')}"}]
1	1	[{"icon": "pi pi-fw pi-id-card", "label": "Gestion de Usuarios", "command": "() => { router.push('/gestion-usuarios')}"}, {"icon": "pi pi-fw pi-ticket", "label": "Cita", "command": "() => { router.push('/cita')}"}]
\.


--
-- TOC entry 4853 (class 0 OID 19511)
-- Dependencies: 231
-- Data for Name: i011t_items_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i011t_items_menu (id_item, id_ruta, json_item) FROM stdin;
4	4	{"icon": "pi pi-fw pi-id-card", "label": "Gestion de Usuarios", "command": "() => { router.push('/gestion-usuarios')}"}
11	11	{"icon": "pi pi-fw pi-ticket", "label": "Cita", "command": "() => { router.push('/cita')}"}
\.


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 216
-- Name: d008t_usuarios_co_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d008t_usuarios_co_usuario_seq', 5, true);


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 217
-- Name: d009t_personal_co_personal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d009t_personal_co_personal_seq', 3, true);


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 218
-- Name: d010t_especialidad_personal_co_especialidad_personal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d010t_especialidad_personal_co_especialidad_personal_seq', 3, true);


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 219
-- Name: d011t_horarios_personal_co_horario_personal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d011t_horarios_personal_co_horario_personal_seq', 5, true);


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 221
-- Name: d012t_fotoperfil_id_fotoperfil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d012t_fotoperfil_id_fotoperfil_seq', 9, true);


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 222
-- Name: d013t_permisos_id_permiso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d013t_permisos_id_permiso_seq', 19, true);


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 224
-- Name: e001m_especialidades_co_especialidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.e001m_especialidades_co_especialidad_seq', 3, true);


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 228
-- Name: i009t_rutas_id_ruta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i009t_rutas_id_ruta_seq', 11, true);


--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 229
-- Name: i010t_menus_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i010t_menus_id_menu_seq', 7, true);


--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 232
-- Name: i011t_items_menu_id_item_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i011t_items_menu_id_item_seq', 11, true);


--
-- TOC entry 4876 (class 0 OID 0)
-- Dependencies: 225
-- Name: r004m_roles_co_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.r004m_roles_co_rol_seq', 7, true);


--
-- TOC entry 4678 (class 2606 OID 19597)
-- Name: d008t_usuarios d008t_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d008t_usuarios
    ADD CONSTRAINT d008t_usuarios_pkey PRIMARY KEY (co_usuario);


--
-- TOC entry 4680 (class 2606 OID 19599)
-- Name: d013t_permisos d013t_permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d013t_permisos
    ADD CONSTRAINT d013t_permisos_pkey PRIMARY KEY (id_permiso);


--
-- TOC entry 4684 (class 2606 OID 19601)
-- Name: i009t_rutas i009t_rutas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i009t_rutas
    ADD CONSTRAINT i009t_rutas_pkey PRIMARY KEY (id_ruta);


--
-- TOC entry 4686 (class 2606 OID 19603)
-- Name: i010t_menus i010t_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i010t_menus
    ADD CONSTRAINT i010t_menus_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 4688 (class 2606 OID 19605)
-- Name: i011t_items_menu i011t_items_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i011t_items_menu
    ADD CONSTRAINT i011t_items_menu_pkey PRIMARY KEY (id_item);


--
-- TOC entry 4682 (class 2606 OID 19607)
-- Name: i005t_roles r004m_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i005t_roles
    ADD CONSTRAINT r004m_roles_pkey PRIMARY KEY (co_rol);


--
-- TOC entry 4689 (class 2606 OID 19630)
-- Name: d008t_usuarios fk_co_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d008t_usuarios
    ADD CONSTRAINT fk_co_rol FOREIGN KEY (co_rol) REFERENCES public.i005t_roles(co_rol);


--
-- TOC entry 4693 (class 2606 OID 19635)
-- Name: i011t_items_menu fk_item_ruta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i011t_items_menu
    ADD CONSTRAINT fk_item_ruta FOREIGN KEY (id_ruta) REFERENCES public.i009t_rutas(id_ruta) NOT VALID;


--
-- TOC entry 4692 (class 2606 OID 19640)
-- Name: i010t_menus fk_menu_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i010t_menus
    ADD CONSTRAINT fk_menu_rol FOREIGN KEY (co_rol) REFERENCES public.i005t_roles(co_rol) NOT VALID;


--
-- TOC entry 4690 (class 2606 OID 19645)
-- Name: d013t_permisos fk_permisos_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d013t_permisos
    ADD CONSTRAINT fk_permisos_rol FOREIGN KEY (co_rol) REFERENCES public.i005t_roles(co_rol) NOT VALID;


--
-- TOC entry 4691 (class 2606 OID 19650)
-- Name: d013t_permisos fk_permisos_rutas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d013t_permisos
    ADD CONSTRAINT fk_permisos_rutas FOREIGN KEY (id_ruta) REFERENCES public.i009t_rutas(id_ruta) NOT VALID;


--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-11-18 19:17:59

--
-- PostgreSQL database dump complete
--

