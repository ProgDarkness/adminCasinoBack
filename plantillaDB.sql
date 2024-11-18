--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-16 18:40:10

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
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 19223)
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
-- TOC entry 216 (class 1259 OID 19229)
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
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 216
-- Name: d008t_usuarios_co_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.d008t_usuarios_co_usuario_seq OWNED BY public.d008t_usuarios.co_usuario;


--
-- TOC entry 217 (class 1259 OID 19230)
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
-- TOC entry 218 (class 1259 OID 19231)
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
-- TOC entry 219 (class 1259 OID 19232)
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
-- TOC entry 220 (class 1259 OID 19233)
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
-- TOC entry 221 (class 1259 OID 19239)
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
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 221
-- Name: d012t_fotoperfil_id_fotoperfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.d012t_fotoperfil_id_fotoperfil_seq OWNED BY public.d012t_fotoperfil.id_fotoperfil;


--
-- TOC entry 222 (class 1259 OID 19240)
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
-- TOC entry 223 (class 1259 OID 19241)
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
-- TOC entry 224 (class 1259 OID 19247)
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
-- TOC entry 225 (class 1259 OID 19248)
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
-- TOC entry 226 (class 1259 OID 19249)
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
-- TOC entry 227 (class 1259 OID 19253)
-- Name: i008t_parentescos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i008t_parentescos (
    co_parentesco smallint NOT NULL,
    nb_parentesco character varying(50) NOT NULL
);


ALTER TABLE public.i008t_parentescos OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19256)
-- Name: i009t_rutas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i009t_rutas (
    id_ruta integer NOT NULL,
    nb_ruta character varying NOT NULL,
    tx_tag_name character varying
);


ALTER TABLE public.i009t_rutas OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 19261)
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
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 229
-- Name: i009t_rutas_id_ruta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i009t_rutas_id_ruta_seq OWNED BY public.i009t_rutas.id_ruta;


--
-- TOC entry 230 (class 1259 OID 19262)
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
-- TOC entry 231 (class 1259 OID 19263)
-- Name: i010t_menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i010t_menus (
    id_menu integer DEFAULT nextval('public.i010t_menus_id_menu_seq'::regclass) NOT NULL,
    co_rol integer NOT NULL,
    tx_menu jsonb NOT NULL
);


ALTER TABLE public.i010t_menus OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19269)
-- Name: i011t_items_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i011t_items_menu (
    id_item integer NOT NULL,
    id_ruta integer NOT NULL,
    json_item jsonb NOT NULL
);


ALTER TABLE public.i011t_items_menu OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 19274)
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
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 233
-- Name: i011t_items_menu_id_item_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i011t_items_menu_id_item_seq OWNED BY public.i011t_items_menu.id_item;


--
-- TOC entry 237 (class 1259 OID 19326)
-- Name: rpa_applicants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_applicants (
    id integer NOT NULL,
    type_document character(1),
    document character varying,
    full_name character varying,
    email character varying,
    phone character varying
);


ALTER TABLE public.rpa_applicants OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 19325)
-- Name: rpa_applicants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_applicants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_applicants_id_seq OWNER TO postgres;

--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 236
-- Name: rpa_applicants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_applicants_id_seq OWNED BY public.rpa_applicants.id;


--
-- TOC entry 247 (class 1259 OID 19369)
-- Name: rpa_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_class (
    id integer NOT NULL,
    description character varying
);


ALTER TABLE public.rpa_class OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 19368)
-- Name: rpa_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_class_id_seq OWNER TO postgres;

--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 246
-- Name: rpa_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_class_id_seq OWNED BY public.rpa_class.id;


--
-- TOC entry 251 (class 1259 OID 19387)
-- Name: rpa_conditions_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_conditions_entry (
    id integer NOT NULL,
    description character varying
);


ALTER TABLE public.rpa_conditions_entry OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 19386)
-- Name: rpa_conditions_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_conditions_entry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_conditions_entry_id_seq OWNER TO postgres;

--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 250
-- Name: rpa_conditions_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_conditions_entry_id_seq OWNED BY public.rpa_conditions_entry.id;


--
-- TOC entry 245 (class 1259 OID 19360)
-- Name: rpa_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_files (
    id integer NOT NULL,
    content text
);


ALTER TABLE public.rpa_files OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 19359)
-- Name: rpa_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_files_id_seq OWNER TO postgres;

--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 244
-- Name: rpa_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_files_id_seq OWNED BY public.rpa_files.id;


--
-- TOC entry 239 (class 1259 OID 19335)
-- Name: rpa_proceedings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_proceedings (
    id integer NOT NULL,
    applicant_id integer,
    brand character varying,
    model character varying,
    serial character varying,
    class_id integer,
    use_id integer,
    condition_entry_id integer,
    type_person character varying,
    invoice_id character varying,
    pda_id integer,
    gazette_code character varying,
    status_proceedings_id integer
);


ALTER TABLE public.rpa_proceedings OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 19334)
-- Name: rpa_proceedings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_proceedings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_proceedings_id_seq OWNER TO postgres;

--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 238
-- Name: rpa_proceedings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_proceedings_id_seq OWNED BY public.rpa_proceedings.id;


--
-- TOC entry 241 (class 1259 OID 19344)
-- Name: rpa_propertys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_propertys (
    id integer NOT NULL,
    file_id integer,
    type_file_id integer,
    proceeding_id integer
);


ALTER TABLE public.rpa_propertys OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 19343)
-- Name: rpa_propertys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_propertys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_propertys_id_seq OWNER TO postgres;

--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 240
-- Name: rpa_propertys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_propertys_id_seq OWNED BY public.rpa_propertys.id;


--
-- TOC entry 253 (class 1259 OID 19396)
-- Name: rpa_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_status (
    id integer NOT NULL,
    description character varying
);


ALTER TABLE public.rpa_status OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 19395)
-- Name: rpa_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_status_id_seq OWNER TO postgres;

--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 252
-- Name: rpa_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_status_id_seq OWNED BY public.rpa_status.id;


--
-- TOC entry 243 (class 1259 OID 19351)
-- Name: rpa_type_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_type_files (
    id integer NOT NULL,
    description character varying
);


ALTER TABLE public.rpa_type_files OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 19350)
-- Name: rpa_type_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_type_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_type_files_id_seq OWNER TO postgres;

--
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 242
-- Name: rpa_type_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_type_files_id_seq OWNED BY public.rpa_type_files.id;


--
-- TOC entry 255 (class 1259 OID 19405)
-- Name: rpa_type_gazette_code; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_type_gazette_code (
    id integer NOT NULL,
    class_id integer,
    use_id integer,
    gazette_code character varying
);


ALTER TABLE public.rpa_type_gazette_code OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 19404)
-- Name: rpa_type_gazette_code_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_type_gazette_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_type_gazette_code_id_seq OWNER TO postgres;

--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 254
-- Name: rpa_type_gazette_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_type_gazette_code_id_seq OWNED BY public.rpa_type_gazette_code.id;


--
-- TOC entry 249 (class 1259 OID 19378)
-- Name: rpa_use; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rpa_use (
    id integer NOT NULL,
    description character varying
);


ALTER TABLE public.rpa_use OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 19377)
-- Name: rpa_use_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rpa_use_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rpa_use_id_seq OWNER TO postgres;

--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 248
-- Name: rpa_use_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rpa_use_id_seq OWNED BY public.rpa_use.id;


--
-- TOC entry 234 (class 1259 OID 19275)
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
-- TOC entry 235 (class 1259 OID 19280)
-- Name: visitantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.visitantes_id_seq OWNER TO postgres;

--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 235
-- Name: visitantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitantes_id_seq OWNED BY public.visitantes.id;


--
-- TOC entry 4727 (class 2604 OID 19281)
-- Name: d008t_usuarios co_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d008t_usuarios ALTER COLUMN co_usuario SET DEFAULT nextval('public.d008t_usuarios_co_usuario_seq'::regclass);


--
-- TOC entry 4729 (class 2604 OID 19282)
-- Name: d012t_fotoperfil id_fotoperfil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d012t_fotoperfil ALTER COLUMN id_fotoperfil SET DEFAULT nextval('public.d012t_fotoperfil_id_fotoperfil_seq'::regclass);


--
-- TOC entry 4733 (class 2604 OID 19283)
-- Name: i009t_rutas id_ruta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i009t_rutas ALTER COLUMN id_ruta SET DEFAULT nextval('public.i009t_rutas_id_ruta_seq'::regclass);


--
-- TOC entry 4735 (class 2604 OID 19284)
-- Name: i011t_items_menu id_item; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i011t_items_menu ALTER COLUMN id_item SET DEFAULT nextval('public.i011t_items_menu_id_item_seq'::regclass);


--
-- TOC entry 4737 (class 2604 OID 19329)
-- Name: rpa_applicants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_applicants ALTER COLUMN id SET DEFAULT nextval('public.rpa_applicants_id_seq'::regclass);


--
-- TOC entry 4742 (class 2604 OID 19372)
-- Name: rpa_class id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_class ALTER COLUMN id SET DEFAULT nextval('public.rpa_class_id_seq'::regclass);


--
-- TOC entry 4744 (class 2604 OID 19390)
-- Name: rpa_conditions_entry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_conditions_entry ALTER COLUMN id SET DEFAULT nextval('public.rpa_conditions_entry_id_seq'::regclass);


--
-- TOC entry 4741 (class 2604 OID 19363)
-- Name: rpa_files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_files ALTER COLUMN id SET DEFAULT nextval('public.rpa_files_id_seq'::regclass);


--
-- TOC entry 4738 (class 2604 OID 19338)
-- Name: rpa_proceedings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings ALTER COLUMN id SET DEFAULT nextval('public.rpa_proceedings_id_seq'::regclass);


--
-- TOC entry 4739 (class 2604 OID 19347)
-- Name: rpa_propertys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_propertys ALTER COLUMN id SET DEFAULT nextval('public.rpa_propertys_id_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 19399)
-- Name: rpa_status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_status ALTER COLUMN id SET DEFAULT nextval('public.rpa_status_id_seq'::regclass);


--
-- TOC entry 4740 (class 2604 OID 19354)
-- Name: rpa_type_files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_type_files ALTER COLUMN id SET DEFAULT nextval('public.rpa_type_files_id_seq'::regclass);


--
-- TOC entry 4746 (class 2604 OID 19408)
-- Name: rpa_type_gazette_code id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_type_gazette_code ALTER COLUMN id SET DEFAULT nextval('public.rpa_type_gazette_code_id_seq'::regclass);


--
-- TOC entry 4743 (class 2604 OID 19381)
-- Name: rpa_use id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_use ALTER COLUMN id SET DEFAULT nextval('public.rpa_use_id_seq'::regclass);


--
-- TOC entry 4736 (class 2604 OID 19285)
-- Name: visitantes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitantes ALTER COLUMN id SET DEFAULT nextval('public.visitantes_id_seq'::regclass);


--
-- TOC entry 4939 (class 0 OID 19223)
-- Dependencies: 215
-- Data for Name: d008t_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.d008t_usuarios (co_usuario, usuario, nu_clave, nb_usuario, nb2_usuario, ap_usuario, ap2_usuario, cedula_usr, gerencia, co_rol, tx_correo, created_at, updated_at) FROM stdin;
2	gmarcano	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	GABRIEL	FABIAN	MARCANO	REQUENA	28415452	SISTEMAS	1	gabrielmarcano141@gmail.com	2024-07-28 02:41:18.671961	\N
\.


--
-- TOC entry 4944 (class 0 OID 19233)
-- Dependencies: 220
-- Data for Name: d012t_fotoperfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.d012t_fotoperfil (id_fotoperfil, tx_archivo, created_at, updated_at, id_usuario) FROM stdin;
\.


--
-- TOC entry 4947 (class 0 OID 19241)
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
-- TOC entry 4950 (class 0 OID 19249)
-- Dependencies: 226
-- Data for Name: i005t_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i005t_roles (co_rol, nb_rol, created_at, updated_at) FROM stdin;
1	SUPERUSER	\N	\N
7	PRUEBA	\N	\N
\.


--
-- TOC entry 4951 (class 0 OID 19253)
-- Dependencies: 227
-- Data for Name: i008t_parentescos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i008t_parentescos (co_parentesco, nb_parentesco) FROM stdin;
0	TITULAR
1	HIJO
2	CÓNYUGE
3	MADRE
4	PADRE
5	CARGA ESPECIAL
\.


--
-- TOC entry 4952 (class 0 OID 19256)
-- Dependencies: 228
-- Data for Name: i009t_rutas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i009t_rutas (id_ruta, nb_ruta, tx_tag_name) FROM stdin;
4	/gestion-usuarios	Gestión Usuarios
9	/perfil	Perfil
10	/perfil/acceso	Cambio de Contraseña
11	/cita	Cita
\.


--
-- TOC entry 4955 (class 0 OID 19263)
-- Dependencies: 231
-- Data for Name: i010t_menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i010t_menus (id_menu, co_rol, tx_menu) FROM stdin;
7	7	[{"icon": "pi pi-fw pi-id-card", "label": "Gestion de Usuarios", "command": "() => { router.push('/gestion-usuarios')}"}]
1	1	[{"icon": "pi pi-fw pi-id-card", "label": "Gestion de Usuarios", "command": "() => { router.push('/gestion-usuarios')}"}, {"icon": "pi pi-fw pi-ticket", "label": "Cita", "command": "() => { router.push('/cita')}"}]
\.


--
-- TOC entry 4956 (class 0 OID 19269)
-- Dependencies: 232
-- Data for Name: i011t_items_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i011t_items_menu (id_item, id_ruta, json_item) FROM stdin;
4	4	{"icon": "pi pi-fw pi-id-card", "label": "Gestion de Usuarios", "command": "() => { router.push('/gestion-usuarios')}"}
11	11	{"icon": "pi pi-fw pi-ticket", "label": "Cita", "command": "() => { router.push('/cita')}"}
\.


--
-- TOC entry 4961 (class 0 OID 19326)
-- Dependencies: 237
-- Data for Name: rpa_applicants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_applicants (id, type_document, document, full_name, email, phone) FROM stdin;
\.


--
-- TOC entry 4971 (class 0 OID 19369)
-- Dependencies: 247
-- Data for Name: rpa_class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_class (id, description) FROM stdin;
1	Clase 1
2	Clase 2
3	Clase 3
4	Clase 4
\.


--
-- TOC entry 4975 (class 0 OID 19387)
-- Dependencies: 251
-- Data for Name: rpa_conditions_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_conditions_entry (id, description) FROM stdin;
1	Equipaje
2	Encomienda
3	Compra
\.


--
-- TOC entry 4969 (class 0 OID 19360)
-- Dependencies: 245
-- Data for Name: rpa_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_files (id, content) FROM stdin;
\.


--
-- TOC entry 4963 (class 0 OID 19335)
-- Dependencies: 239
-- Data for Name: rpa_proceedings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_proceedings (id, applicant_id, brand, model, serial, class_id, use_id, condition_entry_id, type_person, invoice_id, pda_id, gazette_code, status_proceedings_id) FROM stdin;
\.


--
-- TOC entry 4965 (class 0 OID 19344)
-- Dependencies: 241
-- Data for Name: rpa_propertys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_propertys (id, file_id, type_file_id, proceeding_id) FROM stdin;
\.


--
-- TOC entry 4977 (class 0 OID 19396)
-- Dependencies: 253
-- Data for Name: rpa_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_status (id, description) FROM stdin;
\.


--
-- TOC entry 4967 (class 0 OID 19351)
-- Dependencies: 243
-- Data for Name: rpa_type_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_type_files (id, description) FROM stdin;
\.


--
-- TOC entry 4979 (class 0 OID 19405)
-- Dependencies: 255
-- Data for Name: rpa_type_gazette_code; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_type_gazette_code (id, class_id, use_id, gazette_code) FROM stdin;
\.


--
-- TOC entry 4973 (class 0 OID 19378)
-- Dependencies: 249
-- Data for Name: rpa_use; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpa_use (id, description) FROM stdin;
1	Recreativo
2	Comercial
\.


--
-- TOC entry 4958 (class 0 OID 19275)
-- Dependencies: 234
-- Data for Name: visitantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visitantes (id, user_id, cedula, nombres, apellidos, trabajador, piso, departamento, fecha_registro, fecha_salida, ip, foto1, foto2, quien, motivo, telefono, carnet) FROM stdin;
39	47	V-15423996	ANA  ROJAS			PISO 3	GTA	2024-09-30 09:58:14	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINAR  ESTUIDIO  ECONOMICO	(0414)-399.16.90	75
40	47	V-16937227	MARYURI SIERRA			PISO 8	OGA	2024-09-30 10:10:24	\N	10.11.81.225	\N	\N	NAZARES	REUNION DE  TRABAJOS  DE  CONSULTORIA	(0426)-474.52.08	06
41	47	V-10331335	CLAUDIO  PECCHIO			PISO 3	RAN	2024-09-30 10:12:24	\N	10.11.81.225	\N	\N	TAQUILLA	FIRMA OTORGAMIENTPOS	(0414)-321.03.52	06
42	47	V-21282123	ANDREINA  LARA			PISO 2	SALA R	2024-09-30 10:14:00	\N	10.11.81.225	\N	\N	ESPALLONE	REUNION	(0414)-267.02.02	35
43	47	V-12391064	PABLO  URBANO			PISO 2	SALA R	2024-09-30 10:15:44	\N	10.11.81.225	\N	\N	GERENTE  ESPALONE	REUNION	(0414)-274.75.20	02
12	26	V-6745674	56745674			MZ1	CJ	2024-09-27 18:24:33	\N	10.11.66.59	\N	\N	\N	\N	\N	\N
13	26	V-653456	354634563			MZ1	CJ	2024-09-27 18:24:57	\N	10.11.66.59	\N	\N	\N	\N	\N	\N
14	26	E-65345634	PERSONA			MZ1	CORRES	2024-09-27 18:27:18	\N	10.11.66.59	\N	\N	a quien	motivo	(0234)-523.45.23	66331
15	47	V-15207120	LENIS  PINEDA			PISO 4	OGA	2024-09-30 08:39:40	\N	10.11.81.225	\N	\N	MARIAM NUJICA	AUDITORIA DE TRABAJOS	(0424)-141.94.71	15
16	47	V-15831351	OSWALDO  GOMEZ			PISO 6	OGA	2024-09-30 08:41:48	\N	10.11.81.225	\N	\N	CORONEL DAGOVERTO	ENTREVISTA  DE TRABAJO	(0412)-980.27.74	17
17	47	V-9999181	KARLA  GIL			PISO 3	GTA	2024-09-30 08:43:35	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINAR  FIANZA  LABORAL UNIVERSAL	(0424)-242.76.68	10
18	47	V-15062365	FRANCISCO  LAYA			PISO 4	OGA	2024-09-30 08:59:24	\N	10.11.81.225	\N	\N	MARIAM NUJICA	AUDITORIA  TRABAJOS	(0426)-516.99.88	08
19	47	V-25048180	BRAYAN  CHACIN			PISO 3	RAN	2024-09-30 09:04:48	\N	10.11.81.225	\N	\N	TAQUILLA	SOLICITUD  DE  INCRIPCION  DE  DOCUMENTOS  ANTE EL  REGISTRO  CHACIN AIR SERVICI	(0424)-957.47.06	10
20	47	V-174960	JUAN  LOPEZ			PISO 6	CJ	2024-09-30 09:11:08	\N	10.11.81.225	\N	\N	DONCTOR RAMON	REUNION PERSONAL	(0412)-811.20.66	17
21	47	V-10821898	ROGER AGUIRRE			PISO 5	OTIC	2024-09-30 09:15:39	\N	10.11.81.225	\N	\N	PISO 5	REUNION CON LA OTI	(0412)-701.07.36	114
22	47	V-9960636	VICTOR ZAPATA			PISO 5	OTIC	2024-09-30 09:16:52	\N	10.11.81.225	\N	\N	PISO 5	REUNION CON LA OTI	(0414)-133.95.22	111
23	47	V-11226615	EDIMIR PLANAS			PISO 4	OGA	2024-09-30 09:18:54	\N	10.11.81.225	\N	\N	PISO 4	PAGO DERECHOS  AERONAUTIGO	(0416)-981.75.02	02
24	47	V-28370645	YERALDIN  SANCHEZ			PISO 4	OGA	2024-09-30 09:22:22	\N	10.11.81.225	\N	\N	CAJA	PAGO CERTIFICANDO  MENDICO	(0416)-402.22.01	20
25	47	V-11440448	MARIA SALAZAR			PISO 2	OTIC	2024-09-30 09:24:21	\N	10.11.81.225	\N	\N	GERENTES  OTI	REUNION PITCCE	(0414)-489.25.89	30
26	47	V-21099345	DARWIN SALINAS			PISO 4	OTIC	2024-09-30 09:26:26	\N	10.11.81.225	\N	\N	GERENTE  OTI	REUNION PITCCE	(0412)-886.96.56	10
27	47	V-21097607	KEVIN  MOTA			PISO 4	OGA	2024-09-30 09:27:46	\N	10.11.81.225	\N	\N	GERENTE OTI	REUNION  PITCCE	(0424)-365.55.32	38
28	47	V-31786483	WLADIMIR  REYES			PISO 4	OGA	2024-09-30 09:30:37	\N	10.11.81.225	\N	\N	CAJA	PAGODE  MEDICINA	(0412)-581.03.98	03
29	47	V-16538877	BEXY  MACHADO			PISO 2	SALA R	2024-09-30 09:40:51	\N	10.11.81.225	\N	\N	GERENTE  ESPALLONE	REUNION	(0416)-643.83.98	04
30	47	V-32486291	EVELYN  GONZALEZ			PISO 4	OGA	2024-09-30 09:42:41	\N	10.11.81.225	\N	\N	CAJA	PAGO  CERTIFICANDO  MEDICO	(0426)-983.15.96	12
31	47	V-4548435	JOSE JORDAN			PISO 2	SALA R	2024-09-30 09:44:39	\N	10.11.81.225	\N	\N	GERENTES  ESPALLONES	REUNION	(0414)-132.13.65	40
32	47	V-12923680	ALDI  BORJAS			PISO 2	SALA R	2024-09-30 09:44:46	\N	10.11.81.225	\N	\N	GERENTE ESPALLONE	REUNION	(0414)-418.30.17	13
33	47	V-4387483	RUBEN  ALVARADO			PISO 2	SALA R	2024-09-30 09:44:50	\N	10.11.81.225	\N	\N	GERENTE ESPALLONE	REUNION	(0414)-458.91.25	02
34	47	V-15206979	EDIXION  ESCALONA			PISO 8	GTA	2024-09-30 09:49:53	\N	10.11.81.225	\N	\N	ANIRA  PADRO	REUNION SUDEASEG	(0424)-231.35.60	17
35	47	V-10794916	CARLOS DOMINGUEZ			PISO 8	GTA	2024-09-30 09:51:48	\N	10.11.81.225	\N	\N	ANIRA  PADRO	REUNION SEDEASEG	(0424)-178.05.14	18
36	47	V-13265289	RONAL  MORALES			PISO 2	GTA	2024-09-30 09:53:24	\N	10.11.81.225	\N	\N	PULIDO	CURSO  DE DRO	(0414)-528.62.54	52
37	47	V-14471008	LUIS  OLIVER			PISO 3	RAN	2024-09-30 09:54:56	\N	10.11.81.225	\N	\N	TAQUILLA	FIRMA  OTORGAMIENTOS	(0414)-372.34.90	06
38	47	V-9994114	CLAUDIA  TORRES			PISO 8	GTA	2024-09-30 09:55:55	\N	10.11.81.225	\N	\N	ANIRA  PADRO	REUNION SUDEASEG	(0424)-288.33.80	17
44	47	V-13556716	ALEJANDRO BERMUDEZ			PISO 2	RAN	2024-09-30 10:17:13	\N	10.11.81.225	\N	\N	TAQUILLA	FIRMA	(0412)-264.50.02	03
45	47	V-13385453	FREDDY HERNANDEZ			PISO 2	SALA R	2024-09-30 10:19:28	\N	10.11.81.225	\N	\N	GERENTE  ESPALLONE	REUNION IDEA	(0414)-269.55.43	23
46	47	V-20280650	HECTOR LUCENA			PISO 4	OGA	2024-09-30 10:26:56	\N	10.11.81.225	\N	\N	GERENCIAS MARCIAL	REUNION ACTUTUD	(0424)-179.19.65	03
47	47	V-12055184	ROGER  VALERA			PISO 6	CORRES	2024-09-30 10:31:23	\N	10.11.81.225	\N	\N	TAQUILLA COROLINA	CORRESPONDECIA	(0412)-990.40.27	S/N
48	47	V-13582684	JUAN  LIRA			PISO 4	OGA	2024-09-30 10:36:13	\N	10.11.81.225	\N	\N	LILA	REUNION	(0414)-944.28.86	05
49	47	V-17414227	RONY  PACHECO			PISO 3	GTA	2024-09-30 10:40:29	\N	10.11.81.225	\N	\N	TAQUILLA	SOLICITUD  DE  VUELOS  NO  REGULARES SERVICION SUCRE C.A	(0414)-110.67.80	05
50	47	V-21471342	YEFERSON  SOSA			PISO 3	GTA	2024-09-30 11:05:37	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINAR  POLIZA  DE  SEGURO	(0424)-121.55.97	03
51	26	E-99999999	PRUEBA			MZ1	CJ	2024-09-30 11:36:28	\N	10.11.66.60	\N	\N	PRUEBA	PRUEBA	(0999)-999.99.99	PRUEBA
52	47	V-6976333	CELINA OLLARVES			PISO 4	OGA	2024-09-30 12:04:56	\N	10.11.81.225	\N	\N	CAJA	RETIROS  DE  SOLVECIA	(0414)-241.49.35	03
53	47	V-27446943	EVETH  SANCHEZ			PISO 3	GTA	2024-09-30 12:07:08	\N	10.11.81.225	\N	\N	TAQUILLA RUTACA	CONCINACION  DE  VUELOS	(0424)-197.06.30	13
54	47	V-30435640	SORHAM GONZALEZ			PISO 4	OGA	2024-09-30 12:13:33	\N	10.11.81.225	\N	\N	CAJA	PÁGO LICENCIAS EMICION	(0412)-721.81.19	02
55	47	V-14471008	LUIS OLIVER			PISO 3	RAN	2024-09-30 12:16:22	\N	10.11.81.225	\N	\N	TAQUILLA	FIRMA	(0414)-372.34.90	10
56	47	V-27599456	GABRIEL ARAY			PISO 6	OGA	2024-09-30 12:18:58	\N	10.11.81.225	\N	\N	CORONEL  DAGOVERTO	INCRESOS DE  TRABAJOS	(0414)-369.93.31	6001
57	47	V-19557810	OSCAR  ERRUTIAS			PISO 4	OGA	2024-09-30 12:24:19	\N	10.11.81.225	\N	\N	MARIAM NUJICA	AUDITORIA DE TRABAJOS	(0424)-415.77.92	04
58	47	V-19132406	KERVIN RADAMES  MARTINEZ  HERNADEZ			PISO 6	CORRES	2024-10-01 08:57:00	\N	10.11.81.225	\N	\N	TAQUILLA CAROLINA	CORRESPONDENCIA MG.CMDTE  DE  DEFENSA  AEROESPACIAL  INTEGGRAL	(0412)-854.50.47	S/N
101	47	V-30919705	CARLOS  MAYORCA			PISO 4	OGA	2024-10-02 09:16:11	\N	10.11.81.225	\N	\N	CAJA	PAGO SANTIFICANDO  MENDICO	(0412)-980.72.03	02
59	47	V-16030318	DESIREE LISBETH VELASQUEZ  LEON SU ESPOSA			PISO 8	R.R.H.H	2024-10-01 09:10:02	\N	10.11.81.225	\N	\N	YORGELIS  EMISO  JAVIER  CI 18601631	CONCINA CERTIFICADO ELECTONICO  DECLARACION JURADA  DE  PATRIMONIO	(0412)-992.20.90	14
60	47	V-6481766	JULIO CESAR  MERIDA			PISO 3	RAN	2024-10-01 09:22:51	\N	10.11.81.225	\N	\N	ABOGANDO  MANRRERO	REUNION TRAMAS	(0412)-720.39.51	75
61	47	V-17077015	LAURA GRANADO			PISO 6	CORRES	2024-10-01 09:38:13	\N	10.11.81.225	\N	\N	DINORA	CARTA  DE APROVACION DE  EQUIPOS MEL	(0414)-120.01.23	S/N
62	47	V-17682496	MARCOS  JESUS  RIVERO ORTUNEZ			PISO 3	GTA	2024-10-01 09:50:25	\N	10.11.81.225	\N	\N	TRASNPORTE AERIO	DE PLEAPLICANCION DE ENPRESA PRIMERA FACE MS PRUDUCIONES	(0424)-177.59.27	06
63	47	V-27446943	EVETH  MANUEL  SANCHEZ  YAMARTE			PISO 3	GTA	2024-10-01 09:52:48	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINAR  SOLICITUD  DE VUELOS  RUTACA	(0424)-197.06.30	13
64	47	V-11668505	DANNYSHKY  YUCOSA			PISO 3	GTA	2024-10-01 09:55:26	\N	10.11.81.225	\N	\N	TAQUILLA	RETIROS  DE  POLIZA  DE  SEGURO L LASER AIRILINES	(0424)-238.90.90	03
65	47	V-13585652	BRICENO SANCHEZ MAUEL RAFAEL			PISO 3	GTA	2024-10-01 10:14:24	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINACION SOLICITUD  DE  PERMISO  DE VUELOS SIGLS	(0412)-722.98.98	13
66	47	V-26050350	MARIA  ALVAREZ			PISO 3	GTA	2024-10-01 10:24:54	\N	10.11.81.225	\N	\N	TAQUILLA	RETIROS DE  DONCUMENTOS	(0414)-551.35.30	02
67	47	V-7998190	EVER CONTRERAS			PISO 3	GTA	2024-10-01 10:31:19	\N	10.11.81.225	\N	\N	TAQUILLA	RETIROS  DE  POLIZA  DE  SEGURO IINVERSION KINGDON DE  VENEZUELA , C.A  AERONAVE	(0412)-705.25.62	03
68	47	V-25674712	JESUS  FRANCO			PISO 1	OGA	2024-10-01 11:00:06	\N	10.11.81.225	\N	\N	ENTREGAS DE  CARNE  DE LA  SENORA  MARIANA  SALAZA CI 21064677	ENTREGA  DE  SU CARNE DE AEROPUERTO CARACAS	(0424)-222.95.27	S/N
69	47	V-6558674	ANA LUJAN			PISO 6	O9GT	2024-10-01 11:07:54	\N	10.11.81.225	\N	\N	YENNY  MURO	CAE	(0416)-622.56.30	S/N
70	47	V-18542920	CLEISY  MENDEZ			PISO 2	OTIC	2024-10-01 11:11:16	\N	10.11.81.225	\N	\N	NELSO	REUNION TERNOLOGIA	(0424)-152.05.03	13
71	47	V-16309504	PEDRO  OLLARVES			PISO 2	OTIC	2024-10-01 11:13:43	\N	10.11.81.225	\N	\N	NELTO	REUNION TERCNOLOGIA	(0414)-314.59.88	40
72	47	V-24165120	ROBERTO ALFREDO			PISO 3	GTA	2024-10-01 11:21:33	\N	10.11.81.225	\N	\N	TAQUILLA	RETIRO  DE  DONCUMENTOS	(0424)-510.10.37	3005
73	47	V-7901094	MARIA  DE  FATMA  LOPEZ MORENO			PISO 3	RAN	2024-10-01 11:33:18	\N	10.11.81.225	\N	\N	TAQUILLA	RETIROS  DE  DRON	(0414)-731.18.81	06
74	47	V-14269986	HECTOR  SANCHEZ			MZ1	O9GT	2024-10-01 11:38:16	\N	10.11.81.225	\N	\N	GGSS. CORPORATION CITATION SERVICER	RETIROS  DE  CERTIFICADO  DE  AERONAVEGABILIDAD  MATRICULA  YV2110	(0424)-508.92.10	S/N
75	47	V-14260145	LUDY  VELASCO			PISO 3	RAN	2024-10-01 11:41:12	\N	10.11.81.225	\N	\N	INFORMANCION DE  REGISTROS  DE  DRON	TAQUILLA	(0412)-911.15.77	75
76	47	V-29617944	CARLOS  CARO			PISO 6	CORRES	2024-10-01 11:52:18	\N	10.11.81.225	\N	\N	TAQUILLA  CAROLINA	CORRESPODENCIA  MINISTERIO  PUBLICO	(0424)-171.49.22	S/N
77	47	V-20173644	LUIS  MORENO			PISO 3	GTA	2024-10-01 12:15:51	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINACION DE DONCUMENTOS  DE TOS DE4 RPA	(0412)-306.67.68	13
78	47	V-27223524	SNTIAGO  BAEZ			PISO 3	GTA	2024-10-01 12:19:12	\N	10.11.81.225	\N	\N	ELIZANA PARADEZ	INFORMACION DE  UNA AEROLIÑIA	(0412)-990.84.97	75
79	47	V-22904670	ARIANA DELFIN			PISO 3	GTA	2024-10-01 12:22:51	\N	10.11.81.225	\N	\N	ELIZANA  PAREDEZ	INFORMACION DE UNA AEROLIÑIA  ARORREGIONAL	(0412)-617.82.91	3005
80	47	V-8535033	RUBEN COLIMENARES			PISO 3	GTA	2024-10-01 12:35:30	\N	10.11.81.225	\N	\N	TAQUILLA	DENUCIA DE  AEROLIÑA RUTACA	(0414)-867.38.12	02
81	47	V-17965097	VICTOR  JIMENEZ			PISO 3	GTA	2024-10-01 12:43:32	\N	10.11.81.225	\N	\N	TRANSPORTE AEREO	SOLICITAD PRESENTACION  DE  DEL ORIGINAL DE FIANZA  LABORAL	(0412)-210.80.79	06
82	47	V-14471008	OLIVIER LUIS EDUARDO			PISO 3	GTA	2024-10-01 13:32:13	\N	10.11.81.225	\N	\N	TAQUILLA	OTORGAMIENTO	(0414)-372.34.90	13
83	47	V-28443179	ROJAS SAMUEL DAVID			PISO 4	OGA	2024-10-01 13:34:16	\N	10.11.81.225	\N	\N	HECTOR FIGUEROA	PROVEEDOR	(0412)-040.65.08	05
84	47	V-16027071	MEREMILY  CAMPOS			PISO 3	GTA	2024-10-01 13:43:25	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINAR  VUELOS NO REGULARES	(0414)-251.37.26	03
85	47	V-24804860	DIEGO  BERRIZBEITIA			PISO 3	SALA R	2024-10-01 13:48:27	\N	10.11.81.225	\N	\N	TAQUILLA	INFORMACION DE  UN  REGISTROS MARIS	(0414)-250.27.10	30005
86	47	V-20364383	MOYA  JULIO PULGARITO			PISO 6	CJ	2024-10-01 13:58:55	\N	10.11.81.225	\N	\N	WILLIAM	RETIROS DE REVICION  DE  CONTRATOS	(0414)-923.21.72	07
124	47	V-5966976	SERGIO MARIANI			PISO 6	CJ	2024-10-02 11:19:43	\N	10.11.81.225	\N	\N	YAMARAY	INFORMACION DE AERONAVES	(0414)-031.25.37	17
87	47	V-17077015	LAURA  GRANADO			PISO 3	RAN	2024-10-01 14:04:16	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINACION  UNA  CERTIFICACION  DE  UNA  ARONAVES	(0414)-120.01.23	03
88	47	V-14135606	DIXON MENDEZ			PISO 6	CJ	2024-10-01 15:14:29	\N	10.11.81.225	\N	\N	YAMARAI	CONSULT A	(0414)-672.97.71	08
89	47	V-11565127	DARIAS MONTILLA JUAN ANTONIO			PISO 6	CJ	2024-10-01 15:14:49	\N	10.11.81.225	\N	\N	YAMARAI	CONSULT A	(0412)-583.68.06	07
90	47	V-5148233	ROSAL MARCANO PEDRO JOSE			PISO 3	GTA	2024-10-01 15:22:58	\N	10.11.81.225	\N	\N	TAQUILLA	CONSIGNACION DE SOLICITUD DE VUELOS	(0424)-281.75.16	3005
91	47	V-10529208	JOSE GREGORIO			MZ1	CORRES	2024-10-01 15:29:55	\N	10.11.81.225	\N	\N	NOEMI	ENTREGA DE DONCUMENTOS	(0424)-287.46.82	S/N
92	47	V-1456239	HARRY  WOOD			PISO 3	GTA	2024-10-01 15:45:42	\N	10.11.81.225	\N	\N	TAQUILLA	RETIROS  DE SEGUROS DE AVIO	(0424)-115.63.48	03
93	47	V-26700646	CHISTOPHER MONTILLA			PISO 3	GTA	2024-10-01 16:15:39	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINAR  DONCUMENTO DE PARA   UN CELLO DEL DGC	(0424)-502.49.02	3005
94	47	V-15062365	FRANCISCO  LAYA			PISO 4	OGA	2024-10-02 08:36:57	\N	10.11.81.225	\N	\N	MARIAM NUJICA	AUDITORIA  DE  TRABAJOS	(0424)-516.99.88	15
95	47	V-11565127	JUAN DARIAS			PISO 6	CJ	2024-10-02 08:46:40	\N	10.11.81.225	\N	\N	YAMARAY	AUDIECIA	(0412)-583.68.06	08
96	47	V-3108014	MARIAJOSE  ALMAO			PISO 4	OGA	2024-10-02 08:48:51	\N	10.11.81.225	\N	\N	CAJA	PADO DE  MENDICIONA	(0412)-912.33.05	05
97	47	V-14135606	DIXON  MENDEZ			PISO 6	CJ	2024-10-02 08:50:39	\N	10.11.81.225	\N	\N	YAMARAY	AUDIECIA	(0414)-672.97.71	07
98	47	V-14312154	VICTOR  PEREZ			PISO 3	RAN	2024-10-02 09:04:50	\N	10.11.81.225	\N	\N	TAQUILLA	FIRMA DE  OTORGAMIENTOS	(0414)-240.26.26	3005
99	47	V-15947070	MICHEL BERLETT			PISO 4	OGA	2024-10-02 09:11:24	\N	10.11.81.225	\N	\N	WILLIAM DIAZ	SOLVECIAS DE  RRADIOAYUDAD ESTELAR  LATINOAMERICA  C.A	(0424)-107.39.27	12
100	47	V-20423152	YEIMER VELAZCO			PISO 4	OGA	2024-10-02 09:13:38	\N	10.11.81.225	\N	\N	CAJA	PADO  DE  RENOVACION  DE  LA  LICENCIAS	(0412)-786.10.40	05
102	47	V-15207120	LENIS  PINEDA			PISO 4	OGA	2024-10-02 09:17:45	\N	10.11.81.225	\N	\N	MARIAM NUJICA	AUDITORIA DE  TRABAJOS	(0424)-141.94.71	09
103	47	V-9372684	RAFAEL  DIAZ			PISO 3	GTA	2024-10-02 09:20:15	\N	10.11.81.225	\N	\N	SOLICITUD  OTORGAMIENTOS AIRLINES  TURKISH	TAQUILLA	(0414)-270.83.37	03
104	47	V-26819536	JAVIER  DE  SOUSA			PISO 4	OGA	2024-10-02 09:41:35	\N	10.11.81.225	\N	\N	CAJA	PAGO  RENOVACION  DE  LICENCIAS	(0424)-186.14.20	08
105	47	V-20829172	JEISON  MORALES			PISO 6	CORRES	2024-10-02 09:48:53	\N	10.11.81.225	\N	\N	TAQUILLA CAROLINA	CORRESPONDECIA MINISTERIO  PUBLICO	(0424)-229.59.75	S/N
106	47	V-5148233	PEDRO ROSAL			PISO 6	CJ	2024-10-02 09:52:37	\N	10.11.81.225	\N	\N	IMPONER  A  CUBANA DE  AVIACION SANCION DE  MULTA	YAMARAY	(0424)-281.75.16	601
107	47	V-1564844	TOMAS  PUERTA			PISO 3	GTA	2024-10-02 09:56:14	\N	10.11.81.225	\N	\N	TRANSPORTE AEREO	RETIRO  DE  RENOVACION DE  ESTADOS  FINANCIEROS PARA EMPRESAS DEL SECTOR  AERONA	(0416)-525.14.43	03
108	47	V-12764262	REYSER GONZALEZ			PISO 3	GTA	2024-10-02 10:19:42	\N	10.11.81.225	\N	\N	TAQUILLA	CONCINACION DE DONCUMENTOS  ACLARATORIA  FORMAL	(0414)-224.88.73	03
109	47	V-6122279	JOVITO  CAMPOS			PISO 3	GTA	2024-10-02 10:21:13	\N	10.11.81.225	\N	\N	TAQUILLA	RETIROS  DE  POLIZA  DE  SEGURO	(0412)-259.41.07	06
110	47	V-13844691	CARMEN MARQUES			PISO 6	CJ	2024-10-02 10:22:49	\N	10.11.81.225	\N	\N	CJ	REUNION MINISTERIO PUBLICO	(0412)-805.58.76	07
\.


--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 216
-- Name: d008t_usuarios_co_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d008t_usuarios_co_usuario_seq', 5, true);


--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 217
-- Name: d009t_personal_co_personal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d009t_personal_co_personal_seq', 3, true);


--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 218
-- Name: d010t_especialidad_personal_co_especialidad_personal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d010t_especialidad_personal_co_especialidad_personal_seq', 3, true);


--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 219
-- Name: d011t_horarios_personal_co_horario_personal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d011t_horarios_personal_co_horario_personal_seq', 5, true);


--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 221
-- Name: d012t_fotoperfil_id_fotoperfil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d012t_fotoperfil_id_fotoperfil_seq', 9, true);


--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 222
-- Name: d013t_permisos_id_permiso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.d013t_permisos_id_permiso_seq', 19, true);


--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 224
-- Name: e001m_especialidades_co_especialidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.e001m_especialidades_co_especialidad_seq', 3, true);


--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 229
-- Name: i009t_rutas_id_ruta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i009t_rutas_id_ruta_seq', 11, true);


--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 230
-- Name: i010t_menus_id_menu_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i010t_menus_id_menu_seq', 7, true);


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 233
-- Name: i011t_items_menu_id_item_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i011t_items_menu_id_item_seq', 11, true);


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 225
-- Name: r004m_roles_co_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.r004m_roles_co_rol_seq', 7, true);


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 236
-- Name: rpa_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_applicants_id_seq', 1, false);


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 246
-- Name: rpa_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_class_id_seq', 4, true);


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 250
-- Name: rpa_conditions_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_conditions_entry_id_seq', 3, true);


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 244
-- Name: rpa_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_files_id_seq', 1, false);


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 238
-- Name: rpa_proceedings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_proceedings_id_seq', 1, false);


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 240
-- Name: rpa_propertys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_propertys_id_seq', 1, false);


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 252
-- Name: rpa_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_status_id_seq', 1, false);


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 242
-- Name: rpa_type_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_type_files_id_seq', 1, false);


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 254
-- Name: rpa_type_gazette_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_type_gazette_code_id_seq', 1, false);


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 248
-- Name: rpa_use_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpa_use_id_seq', 2, true);


--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 235
-- Name: visitantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitantes_id_seq', 1, false);


--
-- TOC entry 4748 (class 2606 OID 19287)
-- Name: d008t_usuarios d008t_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d008t_usuarios
    ADD CONSTRAINT d008t_usuarios_pkey PRIMARY KEY (co_usuario);


--
-- TOC entry 4750 (class 2606 OID 19289)
-- Name: d013t_permisos d013t_permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d013t_permisos
    ADD CONSTRAINT d013t_permisos_pkey PRIMARY KEY (id_permiso);


--
-- TOC entry 4754 (class 2606 OID 19291)
-- Name: i009t_rutas i009t_rutas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i009t_rutas
    ADD CONSTRAINT i009t_rutas_pkey PRIMARY KEY (id_ruta);


--
-- TOC entry 4756 (class 2606 OID 19293)
-- Name: i010t_menus i010t_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i010t_menus
    ADD CONSTRAINT i010t_menus_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 4758 (class 2606 OID 19295)
-- Name: i011t_items_menu i011t_items_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i011t_items_menu
    ADD CONSTRAINT i011t_items_menu_pkey PRIMARY KEY (id_item);


--
-- TOC entry 4752 (class 2606 OID 19297)
-- Name: i005t_roles r004m_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i005t_roles
    ADD CONSTRAINT r004m_roles_pkey PRIMARY KEY (co_rol);


--
-- TOC entry 4762 (class 2606 OID 19333)
-- Name: rpa_applicants rpa_applicants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_applicants
    ADD CONSTRAINT rpa_applicants_pkey PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 19376)
-- Name: rpa_class rpa_class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_class
    ADD CONSTRAINT rpa_class_pkey PRIMARY KEY (id);


--
-- TOC entry 4776 (class 2606 OID 19394)
-- Name: rpa_conditions_entry rpa_conditions_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_conditions_entry
    ADD CONSTRAINT rpa_conditions_entry_pkey PRIMARY KEY (id);


--
-- TOC entry 4770 (class 2606 OID 19367)
-- Name: rpa_files rpa_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_files
    ADD CONSTRAINT rpa_files_pkey PRIMARY KEY (id);


--
-- TOC entry 4764 (class 2606 OID 19342)
-- Name: rpa_proceedings rpa_proceedings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings
    ADD CONSTRAINT rpa_proceedings_pkey PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 19349)
-- Name: rpa_propertys rpa_propertys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_propertys
    ADD CONSTRAINT rpa_propertys_pkey PRIMARY KEY (id);


--
-- TOC entry 4778 (class 2606 OID 19403)
-- Name: rpa_status rpa_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_status
    ADD CONSTRAINT rpa_status_pkey PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 19358)
-- Name: rpa_type_files rpa_type_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_type_files
    ADD CONSTRAINT rpa_type_files_pkey PRIMARY KEY (id);


--
-- TOC entry 4780 (class 2606 OID 19412)
-- Name: rpa_type_gazette_code rpa_type_gazette_code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_type_gazette_code
    ADD CONSTRAINT rpa_type_gazette_code_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 19385)
-- Name: rpa_use rpa_use_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_use
    ADD CONSTRAINT rpa_use_pkey PRIMARY KEY (id);


--
-- TOC entry 4760 (class 2606 OID 19299)
-- Name: visitantes visitantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitantes
    ADD CONSTRAINT visitantes_pkey PRIMARY KEY (id);


--
-- TOC entry 4781 (class 2606 OID 19300)
-- Name: d008t_usuarios fk_co_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d008t_usuarios
    ADD CONSTRAINT fk_co_rol FOREIGN KEY (co_rol) REFERENCES public.i005t_roles(co_rol);


--
-- TOC entry 4785 (class 2606 OID 19305)
-- Name: i011t_items_menu fk_item_ruta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i011t_items_menu
    ADD CONSTRAINT fk_item_ruta FOREIGN KEY (id_ruta) REFERENCES public.i009t_rutas(id_ruta) NOT VALID;


--
-- TOC entry 4784 (class 2606 OID 19310)
-- Name: i010t_menus fk_menu_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i010t_menus
    ADD CONSTRAINT fk_menu_rol FOREIGN KEY (co_rol) REFERENCES public.i005t_roles(co_rol) NOT VALID;


--
-- TOC entry 4782 (class 2606 OID 19315)
-- Name: d013t_permisos fk_permisos_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d013t_permisos
    ADD CONSTRAINT fk_permisos_rol FOREIGN KEY (co_rol) REFERENCES public.i005t_roles(co_rol) NOT VALID;


--
-- TOC entry 4783 (class 2606 OID 19320)
-- Name: d013t_permisos fk_permisos_rutas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.d013t_permisos
    ADD CONSTRAINT fk_permisos_rutas FOREIGN KEY (id_ruta) REFERENCES public.i009t_rutas(id_ruta) NOT VALID;


--
-- TOC entry 4786 (class 2606 OID 19413)
-- Name: rpa_proceedings rpa_proceedings_applicant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings
    ADD CONSTRAINT rpa_proceedings_applicant_id_fkey FOREIGN KEY (applicant_id) REFERENCES public.rpa_applicants(id);


--
-- TOC entry 4787 (class 2606 OID 19423)
-- Name: rpa_proceedings rpa_proceedings_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings
    ADD CONSTRAINT rpa_proceedings_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.rpa_class(id);


--
-- TOC entry 4788 (class 2606 OID 19433)
-- Name: rpa_proceedings rpa_proceedings_condition_entry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings
    ADD CONSTRAINT rpa_proceedings_condition_entry_id_fkey FOREIGN KEY (condition_entry_id) REFERENCES public.rpa_conditions_entry(id);


--
-- TOC entry 4789 (class 2606 OID 19438)
-- Name: rpa_proceedings rpa_proceedings_status_proceedings_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings
    ADD CONSTRAINT rpa_proceedings_status_proceedings_id_fkey FOREIGN KEY (status_proceedings_id) REFERENCES public.rpa_status(id);


--
-- TOC entry 4790 (class 2606 OID 19428)
-- Name: rpa_proceedings rpa_proceedings_use_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_proceedings
    ADD CONSTRAINT rpa_proceedings_use_id_fkey FOREIGN KEY (use_id) REFERENCES public.rpa_use(id);


--
-- TOC entry 4791 (class 2606 OID 19443)
-- Name: rpa_propertys rpa_propertys_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_propertys
    ADD CONSTRAINT rpa_propertys_file_id_fkey FOREIGN KEY (file_id) REFERENCES public.rpa_files(id);


--
-- TOC entry 4792 (class 2606 OID 19418)
-- Name: rpa_propertys rpa_propertys_proceeding_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_propertys
    ADD CONSTRAINT rpa_propertys_proceeding_id_fkey FOREIGN KEY (proceeding_id) REFERENCES public.rpa_proceedings(id);


--
-- TOC entry 4793 (class 2606 OID 19448)
-- Name: rpa_propertys rpa_propertys_type_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_propertys
    ADD CONSTRAINT rpa_propertys_type_file_id_fkey FOREIGN KEY (type_file_id) REFERENCES public.rpa_type_files(id);


--
-- TOC entry 4794 (class 2606 OID 19453)
-- Name: rpa_type_gazette_code rpa_type_gazette_code_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_type_gazette_code
    ADD CONSTRAINT rpa_type_gazette_code_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.rpa_class(id);


--
-- TOC entry 4795 (class 2606 OID 19458)
-- Name: rpa_type_gazette_code rpa_type_gazette_code_use_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rpa_type_gazette_code
    ADD CONSTRAINT rpa_type_gazette_code_use_id_fkey FOREIGN KEY (use_id) REFERENCES public.rpa_use(id);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-11-16 18:40:10

--
-- PostgreSQL database dump complete
--

