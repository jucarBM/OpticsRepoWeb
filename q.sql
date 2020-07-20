--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-07-20 13:30:23

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
-- TOC entry 209 (class 1259 OID 24999)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO jucar;

--
-- TOC entry 208 (class 1259 OID 24997)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO jucar;

--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 25009)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO jucar;

--
-- TOC entry 210 (class 1259 OID 25007)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO jucar;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 24991)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO jucar;

--
-- TOC entry 206 (class 1259 OID 24989)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO jucar;

--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 25017)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO jucar;

--
-- TOC entry 215 (class 1259 OID 25027)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO jucar;

--
-- TOC entry 214 (class 1259 OID 25025)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO jucar;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 25015)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO jucar;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 25035)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO jucar;

--
-- TOC entry 216 (class 1259 OID 25033)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO jucar;

--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 224 (class 1259 OID 33179)
-- Name: data_experiment; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_experiment (
    id integer NOT NULL,
    "experimentName" character varying(50) NOT NULL,
    "modeOp" character varying(50) NOT NULL,
    "instrumentID_id" integer NOT NULL
);


ALTER TABLE public.data_experiment OWNER TO jucar;

--
-- TOC entry 223 (class 1259 OID 33177)
-- Name: data_experiment_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_experiment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_experiment_id_seq OWNER TO jucar;

--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 223
-- Name: data_experiment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_experiment_id_seq OWNED BY public.data_experiment.id;


--
-- TOC entry 226 (class 1259 OID 33187)
-- Name: data_instrument; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_instrument (
    id integer NOT NULL,
    "instrumentName" character varying(50) NOT NULL,
    description text NOT NULL,
    "instrumentType" character varying(50) NOT NULL,
    "stationID_id" integer NOT NULL,
    "instrumentImage" character varying(100) NOT NULL,
    "modelID_id" integer NOT NULL
);


ALTER TABLE public.data_instrument OWNER TO jucar;

--
-- TOC entry 225 (class 1259 OID 33185)
-- Name: data_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_instrument_id_seq OWNER TO jucar;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 225
-- Name: data_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_instrument_id_seq OWNED BY public.data_instrument.id;


--
-- TOC entry 238 (class 1259 OID 41407)
-- Name: data_instrumentcharacteristicname; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_instrumentcharacteristicname (
    id integer NOT NULL,
    "characteristicName" character varying(50) NOT NULL
);


ALTER TABLE public.data_instrumentcharacteristicname OWNER TO jucar;

--
-- TOC entry 237 (class 1259 OID 41405)
-- Name: data_instrumentcharacteristicname_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_instrumentcharacteristicname_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_instrumentcharacteristicname_id_seq OWNER TO jucar;

--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 237
-- Name: data_instrumentcharacteristicname_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_instrumentcharacteristicname_id_seq OWNED BY public.data_instrumentcharacteristicname.id;


--
-- TOC entry 240 (class 1259 OID 41415)
-- Name: data_instrumentcharacteristicvalue; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_instrumentcharacteristicvalue (
    id integer NOT NULL,
    "characteristicsValue" character varying(50) NOT NULL,
    "characteristicNameID_id" integer NOT NULL,
    "instrumentID_id" integer NOT NULL
);


ALTER TABLE public.data_instrumentcharacteristicvalue OWNER TO jucar;

--
-- TOC entry 239 (class 1259 OID 41413)
-- Name: data_instrumentcharacteristicvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_instrumentcharacteristicvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_instrumentcharacteristicvalue_id_seq OWNER TO jucar;

--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 239
-- Name: data_instrumentcharacteristicvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_instrumentcharacteristicvalue_id_seq OWNED BY public.data_instrumentcharacteristicvalue.id;


--
-- TOC entry 228 (class 1259 OID 33206)
-- Name: data_instrumentmodel; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_instrumentmodel (
    id integer NOT NULL,
    "modelName" character varying(50) NOT NULL,
    description character varying(50) NOT NULL,
    "modelType" character varying(50) NOT NULL
);


ALTER TABLE public.data_instrumentmodel OWNER TO jucar;

--
-- TOC entry 227 (class 1259 OID 33204)
-- Name: data_instrumentmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_instrumentmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_instrumentmodel_id_seq OWNER TO jucar;

--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 227
-- Name: data_instrumentmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_instrumentmodel_id_seq OWNED BY public.data_instrumentmodel.id;


--
-- TOC entry 234 (class 1259 OID 33230)
-- Name: data_product; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_product (
    id integer NOT NULL,
    "productName" character varying(50) NOT NULL,
    "filePath" character varying(50) NOT NULL,
    "productType" character varying(50) NOT NULL,
    "experimentID_id" integer NOT NULL,
    "instrumentID_id" integer NOT NULL
);


ALTER TABLE public.data_product OWNER TO jucar;

--
-- TOC entry 233 (class 1259 OID 33228)
-- Name: data_product_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_product_id_seq OWNER TO jucar;

--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 233
-- Name: data_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_product_id_seq OWNED BY public.data_product.id;


--
-- TOC entry 232 (class 1259 OID 33222)
-- Name: data_setting; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_setting (
    id integer NOT NULL,
    "settingsName" character varying(50) NOT NULL,
    "settingValue" character varying(50) NOT NULL,
    "experimentID_id" integer NOT NULL
);


ALTER TABLE public.data_setting OWNER TO jucar;

--
-- TOC entry 231 (class 1259 OID 33220)
-- Name: data_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_setting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_setting_id_seq OWNER TO jucar;

--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 231
-- Name: data_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_setting_id_seq OWNED BY public.data_setting.id;


--
-- TOC entry 230 (class 1259 OID 33214)
-- Name: data_station; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.data_station (
    id integer NOT NULL,
    "stationName" character varying(50) NOT NULL,
    long character varying(50) NOT NULL,
    lat character varying(50) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.data_station OWNER TO jucar;

--
-- TOC entry 229 (class 1259 OID 33212)
-- Name: data_station_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.data_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_station_id_seq OWNER TO jucar;

--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 229
-- Name: data_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.data_station_id_seq OWNED BY public.data_station.id;


--
-- TOC entry 219 (class 1259 OID 25095)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO jucar;

--
-- TOC entry 218 (class 1259 OID 25093)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO jucar;

--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 24981)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO jucar;

--
-- TOC entry 204 (class 1259 OID 24979)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO jucar;

--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 24970)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO jucar;

--
-- TOC entry 202 (class 1259 OID 24968)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO jucar;

--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 220 (class 1259 OID 25126)
-- Name: django_session; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO jucar;

--
-- TOC entry 222 (class 1259 OID 33161)
-- Name: users_profile; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.users_profile (
    id integer NOT NULL,
    institution character varying(50) NOT NULL,
    motivation text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_profile OWNER TO jucar;

--
-- TOC entry 221 (class 1259 OID 33159)
-- Name: users_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.users_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_profile_id_seq OWNER TO jucar;

--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;


--
-- TOC entry 236 (class 1259 OID 33269)
-- Name: users_userrequest; Type: TABLE; Schema: public; Owner: jucar
--

CREATE TABLE public.users_userrequest (
    id integer NOT NULL,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    institution text NOT NULL,
    "reasonToAccess" text NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.users_userrequest OWNER TO jucar;

--
-- TOC entry 235 (class 1259 OID 33267)
-- Name: users_userrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: jucar
--

CREATE SEQUENCE public.users_userrequest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_userrequest_id_seq OWNER TO jucar;

--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_userrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jucar
--

ALTER SEQUENCE public.users_userrequest_id_seq OWNED BY public.users_userrequest.id;


--
-- TOC entry 2809 (class 2604 OID 25002)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 25012)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 24994)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 25020)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 25030)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2813 (class 2604 OID 25038)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 33182)
-- Name: data_experiment id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_experiment ALTER COLUMN id SET DEFAULT nextval('public.data_experiment_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 33190)
-- Name: data_instrument id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrument ALTER COLUMN id SET DEFAULT nextval('public.data_instrument_id_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 41410)
-- Name: data_instrumentcharacteristicname id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentcharacteristicname ALTER COLUMN id SET DEFAULT nextval('public.data_instrumentcharacteristicname_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 41418)
-- Name: data_instrumentcharacteristicvalue id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentcharacteristicvalue ALTER COLUMN id SET DEFAULT nextval('public.data_instrumentcharacteristicvalue_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 33209)
-- Name: data_instrumentmodel id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentmodel ALTER COLUMN id SET DEFAULT nextval('public.data_instrumentmodel_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 33233)
-- Name: data_product id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_product ALTER COLUMN id SET DEFAULT nextval('public.data_product_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 33225)
-- Name: data_setting id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_setting ALTER COLUMN id SET DEFAULT nextval('public.data_setting_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 33217)
-- Name: data_station id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_station ALTER COLUMN id SET DEFAULT nextval('public.data_station_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 25098)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 24984)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 24973)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 33164)
-- Name: users_profile id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 33272)
-- Name: users_userrequest id; Type: DEFAULT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.users_userrequest ALTER COLUMN id SET DEFAULT nextval('public.users_userrequest_id_seq'::regclass);


--
-- TOC entry 3054 (class 0 OID 24999)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3056 (class 0 OID 25009)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3052 (class 0 OID 24991)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add profile	7	add_profile
26	Can change profile	7	change_profile
27	Can delete profile	7	delete_profile
28	Can view profile	7	view_profile
29	Can add instrument characteristic	8	add_instrumentcharacteristic
30	Can change instrument characteristic	8	change_instrumentcharacteristic
31	Can delete instrument characteristic	8	delete_instrumentcharacteristic
32	Can view instrument characteristic	8	view_instrumentcharacteristic
33	Can add instrument model	9	add_instrumentmodel
34	Can change instrument model	9	change_instrumentmodel
35	Can delete instrument model	9	delete_instrumentmodel
36	Can view instrument model	9	view_instrumentmodel
37	Can add instrument	10	add_instrument
38	Can change instrument	10	change_instrument
39	Can delete instrument	10	delete_instrument
40	Can view instrument	10	view_instrument
41	Can add station	11	add_station
42	Can change station	11	change_station
43	Can delete station	11	delete_station
44	Can view station	11	view_station
45	Can add experiment	12	add_experiment
46	Can change experiment	12	change_experiment
47	Can delete experiment	12	delete_experiment
48	Can view experiment	12	view_experiment
49	Can add setting	13	add_setting
50	Can change setting	13	change_setting
51	Can delete setting	13	delete_setting
52	Can view setting	13	view_setting
53	Can add product	14	add_product
54	Can change product	14	change_product
55	Can delete product	14	delete_product
56	Can view product	14	view_product
57	Can add user request	15	add_userrequest
58	Can change user request	15	change_userrequest
59	Can delete user request	15	delete_userrequest
60	Can view user request	15	view_userrequest
61	Can add instrument characteristic name	16	add_instrumentcharacteristicname
62	Can change instrument characteristic name	16	change_instrumentcharacteristicname
63	Can delete instrument characteristic name	16	delete_instrumentcharacteristicname
64	Can view instrument characteristic name	16	view_instrumentcharacteristicname
65	Can add instrument characteristic value	17	add_instrumentcharacteristicvalue
66	Can change instrument characteristic value	17	change_instrumentcharacteristicvalue
67	Can delete instrument characteristic value	17	delete_instrumentcharacteristicvalue
68	Can view instrument characteristic value	17	view_instrumentcharacteristicvalue
\.


--
-- TOC entry 3058 (class 0 OID 25017)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
5	pbkdf2_sha256$180000$Tn9SCnRxyyHb$2UwTg1WkaKmO3zyo+imbVV/ZPei7WIJviiDCsAm3VME=	\N	t	adminOptica			adminOptica@gmail.com	t	t	2020-06-29 15:15:27.016607-05
4	pbkdf2_sha256$180000$6ULX3884Epnv$vZhV/wStQrtsIWlCiLfZaXRNagGDGP1a4oI+ciK1aJU=	2020-07-20 09:29:55.310723-05	t	admin			admin@gmail.com	t	t	2020-06-28 21:50:52.601106-05
2	pbkdf2_sha256$180000$qDqmtxDCaFF8$HCiDZ//Y7Um1YTvDV0tWFLiMBWe4DPawJUHRt5rSc7I=	\N	t	jucar2			jucar@gmail.com	t	t	2020-06-18 18:57:52.335246-05
3	pbkdf2_sha256$180000$hdzGjFBSX1Od$NRqJRPMaskTdrDdi4qZxqQLFHZBkS84EhY/xdrul6Lc=	\N	t	jucar3			jucar@gmail.com	t	t	2020-06-18 18:59:52.213793-05
1	pbkdf2_sha256$180000$TTqE7oby4yPC$sgt4IlrtdDJtmYxQPR7NjoM5CdKjqxUVnBY9+y7bXcI=	2020-06-28 21:55:47.110186-05	t	jucar			jucar251096@gmail.com	t	t	2020-05-11 10:45:06.565197-05
\.


--
-- TOC entry 3060 (class 0 OID 25027)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3062 (class 0 OID 25035)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3069 (class 0 OID 33179)
-- Dependencies: 224
-- Data for Name: data_experiment; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_experiment (id, "experimentName", "modeOp", "instrumentID_id") FROM stdin;
\.


--
-- TOC entry 3071 (class 0 OID 33187)
-- Dependencies: 226
-- Data for Name: data_instrument; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_instrument (id, "instrumentName", description, "instrumentType", "stationID_id", "instrumentImage", "modelID_id") FROM stdin;
4	ASI - Jicamarca	It has a fixed lens to measure the OH bands from the mesosphere and is used to detect gravity wave activity.	ASI	1	data/instruments/instrumentJicamarca.jpg	3
3	FPI - Arequipa	First FPI installed in Peru. Located in Arequipa, it is one of the most important instrument of the region.	FPI	3	data/instruments/instrumentArequipa.jpg	1
1	FPI - Jicamarca	Located in Merihill, Lima. It is the nearest instrument to Jicamarca Radio Observatory.	FPI	1	data/instruments/instrumentNazca.jpg	1
2	FPI - Nazca	Located in Nazca, Ica. It is the central instrument of the three installed in Perú.	FPI	2	data/instruments/instrumentArequipa_thjECh0.jpg	2
\.


--
-- TOC entry 3083 (class 0 OID 41407)
-- Dependencies: 238
-- Data for Name: data_instrumentcharacteristicname; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_instrumentcharacteristicname (id, "characteristicName") FROM stdin;
1	Spacer Gap
2	Sky Scanner type
3	Etalon type
4	Field of view
5	Number of filters
\.


--
-- TOC entry 3085 (class 0 OID 41415)
-- Dependencies: 240
-- Data for Name: data_instrumentcharacteristicvalue; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_instrumentcharacteristicvalue (id, "characteristicsValue", "characteristicNameID_id", "instrumentID_id") FROM stdin;
1	1cm	1	3
2	DC motors	2	3
3	Sealed chamber with Argon.	3	3
4	1.5 cm	1	1
5	Smart Motors.	2	1
6	Solid.	3	1
7	1.5 cm	1	2
8	Smart Motors.	2	2
9	Solid.	3	2
10	160 grados.	4	4
11	1	5	4
\.


--
-- TOC entry 3073 (class 0 OID 33206)
-- Dependencies: 228
-- Data for Name: data_instrumentmodel; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_instrumentmodel (id, "modelName", description, "modelType") FROM stdin;
3	ASI	Allsky Imager	ASI
2	MiniME	Portable FPI for aeronomy applications	FPI
1	Biondi	Old FPI model for aeronomy applications	FPI
\.


--
-- TOC entry 3079 (class 0 OID 33230)
-- Dependencies: 234
-- Data for Name: data_product; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_product (id, "productName", "filePath", "productType", "experimentID_id", "instrumentID_id") FROM stdin;
\.


--
-- TOC entry 3077 (class 0 OID 33222)
-- Dependencies: 232
-- Data for Name: data_setting; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_setting (id, "settingsName", "settingValue", "experimentID_id") FROM stdin;
\.


--
-- TOC entry 3075 (class 0 OID 33214)
-- Dependencies: 230
-- Data for Name: data_station; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.data_station (id, "stationName", long, lat, description) FROM stdin;
1	Estación Merihill	-76.8589	-11.95845	Estación ubicada en el ROJ.
2	Estación movil de Nazca	-74.9144	-14.8271	Estación movil ubicada en Nazca, Ica.
3	Estación de Arequipa	-71.4932	-16.4657	Estación ubicada en Arequipa.
\.


--
-- TOC entry 3064 (class 0 OID 25095)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-06-11 14:24:19.709502-05	1	Profile object (1)	1	[{"added": {}}]	7	1
2	2020-06-14 18:34:42.852716-05	1	Merihill - Jicarmarca	1	[{"added": {}}]	11	1
3	2020-06-14 18:40:06.439993-05	2	Estación movil de Nazca	1	[{"added": {}}]	11	1
4	2020-06-14 18:40:36.649123-05	3	Estación de Arequipa	1	[{"added": {}}]	11	1
5	2020-06-17 19:13:21.455876-05	1	FPI - Jicamarca	1	[{"added": {}}]	10	1
6	2020-06-17 19:14:08.652462-05	1	FPI - Jicamarca	2	[]	10	1
7	2020-06-17 19:15:53.88378-05	2	FPI - Nazca	1	[{"added": {}}]	10	1
8	2020-06-17 19:17:19.317885-05	3	FPI - Arequipa	1	[{"added": {}}]	10	1
9	2020-07-05 15:40:52.140665-05	3	Juan Carlos	3		15	4
10	2020-07-05 15:40:55.43496-05	2	Juan Carlos	3		15	4
11	2020-07-05 15:40:58.884876-05	1	Juan Carlos	3		15	4
12	2020-07-12 13:48:57.089566-05	3	FPI - Arequipa	2	[{"changed": {"fields": ["Description of the instrument"]}}]	10	4
13	2020-07-12 13:49:50.90379-05	3	FPI - Arequipa	2	[{"changed": {"fields": ["Description of the instrument", "Instrument Image"]}}]	10	4
14	2020-07-12 13:51:44.823778-05	2	FPI - Nazca	2	[{"changed": {"fields": ["Description of the instrument", "Instrument Image"]}}]	10	4
15	2020-07-12 13:52:18.53559-05	1	FPI - Jicamarca	2	[{"changed": {"fields": ["Description of the instrument", "Instrument Image"]}}]	10	4
16	2020-07-12 13:59:47.20297-05	1	Estación Merihill	2	[{"changed": {"fields": ["Station Name", "Longitude", "Latitude", "Description of the station"]}}]	11	4
17	2020-07-12 14:00:30.782815-05	2	Estación movil de Nazca	2	[{"changed": {"fields": ["Longitude", "Latitude", "Description of the station"]}}]	11	4
18	2020-07-12 14:01:05.936882-05	3	Estación de Arequipa	2	[{"changed": {"fields": ["Longitude", "Latitude", "Description of the station"]}}]	11	4
19	2020-07-12 14:01:17.753584-05	3	FPI - Arequipa	2	[]	10	4
20	2020-07-12 14:02:32.665883-05	1	Biondi	1	[{"added": {}}]	9	4
21	2020-07-12 14:04:29.064341-05	2	MiniME	1	[{"added": {}}]	9	4
22	2020-07-12 14:04:47.277033-05	3	ASI	1	[{"added": {}}]	9	4
23	2020-07-12 14:13:21.372762-05	4	ASI - Jicamarca	1	[{"added": {}}]	10	4
24	2020-07-12 14:13:36.717932-05	3	ASI	2	[{"changed": {"fields": ["instrumentID"]}}]	9	4
25	2020-07-12 14:15:04.697301-05	2	MiniME	2	[{"changed": {"fields": ["instrumentID"]}}]	9	4
26	2020-07-12 14:19:27.08273-05	3	ASI	2	[{"changed": {"fields": ["instrumentID"]}}]	9	4
27	2020-07-12 14:19:34.237391-05	2	MiniME	2	[{"changed": {"fields": ["instrumentID"]}}]	9	4
28	2020-07-12 14:19:40.81622-05	1	Biondi	2	[{"changed": {"fields": ["instrumentID"]}}]	9	4
29	2020-07-12 14:20:55.070816-05	1	Spacer Gap	1	[{"added": {}}]	8	4
30	2020-07-12 14:31:12.457566-05	1	Spacer Gap	1	[{"added": {}}]	16	4
31	2020-07-12 14:31:21.637433-05	2	Sky Scanner type	1	[{"added": {}}]	16	4
32	2020-07-12 14:31:28.802947-05	3	Etalon type	1	[{"added": {}}]	16	4
33	2020-07-12 14:31:37.438112-05	4	Field of view	1	[{"added": {}}]	16	4
34	2020-07-12 14:31:44.220735-05	5	Number of filters	1	[{"added": {}}]	16	4
35	2020-07-12 14:33:08.622033-05	1	Spacer Gap	1	[{"added": {}}]	17	4
36	2020-07-12 14:33:38.316582-05	2	Sky Scanner type	1	[{"added": {}}]	17	4
37	2020-07-12 14:34:12.68405-05	3	Etalon type	1	[{"added": {}}]	17	4
38	2020-07-12 14:34:31.746506-05	4	Spacer Gap	1	[{"added": {}}]	17	4
39	2020-07-12 14:34:51.12929-05	5	Sky Scanner type	1	[{"added": {}}]	17	4
40	2020-07-12 14:35:10.156574-05	6	Etalon type	1	[{"added": {}}]	17	4
41	2020-07-12 14:35:57.526778-05	7	Spacer Gap	1	[{"added": {}}]	17	4
42	2020-07-12 14:36:12.843793-05	8	Sky Scanner type	1	[{"added": {}}]	17	4
43	2020-07-12 14:36:27.211826-05	9	Etalon type	1	[{"added": {}}]	17	4
44	2020-07-12 14:37:00.957326-05	10	Field of view	1	[{"added": {}}]	17	4
45	2020-07-12 14:37:23.392726-05	11	Number of filters	1	[{"added": {}}]	17	4
46	2020-07-12 14:40:13.661212-05	4	ASI - Jicamarca	2	[{"changed": {"fields": ["Station Name"]}}]	10	4
47	2020-07-12 14:40:24.282133-05	3	FPI - Arequipa	2	[{"changed": {"fields": ["Station Name"]}}]	10	4
48	2020-07-12 14:40:41.725016-05	3	FPI - Arequipa	2	[{"changed": {"fields": ["Station Name"]}}]	10	4
49	2020-07-12 14:40:48.351451-05	3	FPI - Arequipa	2	[]	10	4
50	2020-07-12 14:40:58.913428-05	2	FPI - Nazca	2	[{"changed": {"fields": ["Station Name"]}}]	10	4
51	2020-07-12 14:41:15.413985-05	1	FPI - Jicamarca	2	[]	10	4
52	2020-07-12 14:41:19.544681-05	2	FPI - Nazca	2	[]	10	4
\.


--
-- TOC entry 3050 (class 0 OID 24981)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	users	profile
8	data	instrumentcharacteristic
9	data	instrumentmodel
10	data	instrument
11	data	station
12	data	experiment
13	data	setting
14	data	product
15	users	userrequest
16	data	instrumentcharacteristicname
17	data	instrumentcharacteristicvalue
\.


--
-- TOC entry 3048 (class 0 OID 24970)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-11 10:13:19.042436-05
2	auth	0001_initial	2020-05-11 10:13:19.085323-05
3	admin	0001_initial	2020-05-11 10:13:19.144979-05
4	admin	0002_logentry_remove_auto_add	2020-05-11 10:13:19.161933-05
5	admin	0003_logentry_add_action_flag_choices	2020-05-11 10:13:19.178888-05
6	contenttypes	0002_remove_content_type_name	2020-05-11 10:13:19.196838-05
7	auth	0002_alter_permission_name_max_length	2020-05-11 10:13:19.202821-05
8	auth	0003_alter_user_email_max_length	2020-05-11 10:13:19.210811-05
9	auth	0004_alter_user_username_opts	2020-05-11 10:13:19.21878-05
10	auth	0005_alter_user_last_login_null	2020-05-11 10:13:19.230747-05
11	auth	0006_require_contenttypes_0002	2020-05-11 10:13:19.232742-05
12	auth	0007_alter_validators_add_error_messages	2020-05-11 10:13:19.240723-05
13	auth	0008_alter_user_username_max_length	2020-05-11 10:13:19.265655-05
14	auth	0009_alter_user_last_name_max_length	2020-05-11 10:13:19.276625-05
15	auth	0010_alter_group_name_max_length	2020-05-11 10:13:19.285139-05
16	auth	0011_update_proxy_permissions	2020-05-11 10:13:19.291119-05
17	sessions	0001_initial	2020-05-11 10:13:19.301091-05
18	users	0001_initial	2020-06-11 14:23:22.560186-05
19	data	0001_initial	2020-06-14 18:33:51.492006-05
20	data	0002_instrument_instrumentimage	2020-06-17 19:11:40.696712-05
21	users	0002_userrequest	2020-06-29 13:54:10.8758-05
22	data	0002_auto_20200712_1910	2020-07-12 14:10:57.572166-05
23	data	0003_auto_20200712_1918	2020-07-12 14:18:46.08451-05
24	data	0004_auto_20200712_1930	2020-07-12 14:30:47.025926-05
25	data	0005_auto_20200712_1932	2020-07-12 14:32:40.932019-05
26	data	0006_auto_20200712_1939	2020-07-12 14:39:39.606028-05
\.


--
-- TOC entry 3065 (class 0 OID 25126)
-- Dependencies: 220
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
g3veh81xl1digm7q7x0chg0k5csy1qt7	ZjMzOWJlNzI2NzlkNzEzZGMzMjNlMzEyNTJlMzJjZDg4MTQzMDY1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjlhYTY2ZGM5ZTNkY2NkZTUyZmUxMTViMTE2MjZmYTI0YzY4YTdiIn0=	2020-05-25 10:46:18.766763-05
hx0op8rn8ty3uf0c9admprzjwmynquqb	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:28:58.688541-05
yx7l6vywsgdm1evuf6qw9rjeiewyoehx	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:32:51.482007-05
cw80ubwy0div8gnpzlklynqf5bmbv3ok	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:33:11.894096-05
g4s2dhk0c2l1re5ponaq8ajmsfu3auu1	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:45:11.100946-05
4j50dk19i0aw59jivm4q2n9ay5na8xsh	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:45:55.118604-05
zl408xdiw8vmf3c58nwddk7rk1ey2p0n	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:49:55.347887-05
szjrhgs8e9m53s74hg3u7u8sksz15jpy	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:51:06.761331-05
0aoon3b7hdyv0ebj5x9wnoxp8w88s06a	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:52:17.077693-05
n34g1pn97yxpb80q8eyurwckmibn92y6	MTIzNzU4Y2IxMjIzZDExYzgxY2M0NDIzMmEzMzIzNTI4ZmQ3ZTFiMTp7fQ==	2020-07-02 18:53:21.567125-05
3y4225ghgwwid681scheh1hdtdgg9i0l	ZjMzOWJlNzI2NzlkNzEzZGMzMjNlMzEyNTJlMzJjZDg4MTQzMDY1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjlhYTY2ZGM5ZTNkY2NkZTUyZmUxMTViMTE2MjZmYTI0YzY4YTdiIn0=	2020-07-02 19:00:16.61692-05
xzd2ajwdo0fjsd4cugqowsmcu98jdfcb	OWUyY2Q5MzMzY2Q3YmIyMGMxNzVkZTgxOTJhZmUwNjE5YmU4ZWYzMzp7fQ==	2020-07-04 14:52:30.068724-05
5m77hns40wo4edsli97d4q49x5dsolhq	OWUyY2Q5MzMzY2Q3YmIyMGMxNzVkZTgxOTJhZmUwNjE5YmU4ZWYzMzp7fQ==	2020-07-13 15:08:14.406199-05
re0xzknug1xyy6oc1ndxoxaoiu682l4y	OWUyY2Q5MzMzY2Q3YmIyMGMxNzVkZTgxOTJhZmUwNjE5YmU4ZWYzMzp7fQ==	2020-07-13 15:08:41.446599-05
5fgv5ryf72j8o8hjqiftfaro3xq2xo6j	OWUyY2Q5MzMzY2Q3YmIyMGMxNzVkZTgxOTJhZmUwNjE5YmU4ZWYzMzp7fQ==	2020-07-13 15:09:05.559561-05
xrxnk5z12otbhoiqfzxgw9w1sb6jqel2	YjdkMThkMWNjMTRiMjAwNmRlNGNmMzU0OWZlYjM2YzgxYTI2ZjZjZDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWM2NDMxYWRiODRiMGMyNjMxM2M3ZjM3MDRiZmYyMmRhOWZjN2YzIn0=	2020-07-17 19:50:31.177277-05
mgq8lomhixzv5qeu3qbjw32gdw0trb8g	YjdkMThkMWNjMTRiMjAwNmRlNGNmMzU0OWZlYjM2YzgxYTI2ZjZjZDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWM2NDMxYWRiODRiMGMyNjMxM2M3ZjM3MDRiZmYyMmRhOWZjN2YzIn0=	2020-07-17 20:24:17.414525-05
y39sux35po70y0fgb2qlt85u9yes73em	YjdkMThkMWNjMTRiMjAwNmRlNGNmMzU0OWZlYjM2YzgxYTI2ZjZjZDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWM2NDMxYWRiODRiMGMyNjMxM2M3ZjM3MDRiZmYyMmRhOWZjN2YzIn0=	2020-08-03 09:29:55.317966-05
\.


--
-- TOC entry 3067 (class 0 OID 33161)
-- Dependencies: 222
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.users_profile (id, institution, motivation, user_id) FROM stdin;
1	ROJ	Administrador general de la web.	1
\.


--
-- TOC entry 3081 (class 0 OID 33269)
-- Dependencies: 236
-- Data for Name: users_userrequest; Type: TABLE DATA; Schema: public; Owner: jucar
--

COPY public.users_userrequest (id, "firstName", "lastName", institution, "reasonToAccess", email) FROM stdin;
4	JUAN	BARBARAN	ROJ	3E	jucar251096@gmail.com
\.


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 223
-- Name: data_experiment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_experiment_id_seq', 1, false);


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 225
-- Name: data_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_instrument_id_seq', 4, true);


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 237
-- Name: data_instrumentcharacteristicname_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_instrumentcharacteristicname_id_seq', 5, true);


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 239
-- Name: data_instrumentcharacteristicvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_instrumentcharacteristicvalue_id_seq', 11, true);


--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 227
-- Name: data_instrumentmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_instrumentmodel_id_seq', 3, true);


--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 233
-- Name: data_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_product_id_seq', 1, false);


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 231
-- Name: data_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_setting_id_seq', 1, false);


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 229
-- Name: data_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.data_station_id_seq', 3, true);


--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 52, true);


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 1, true);


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_userrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jucar
--

SELECT pg_catalog.setval('public.users_userrequest_id_seq', 4, true);


--
-- TOC entry 2839 (class 2606 OID 25124)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2844 (class 2606 OID 25051)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2847 (class 2606 OID 25014)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 25004)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2834 (class 2606 OID 25042)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2836 (class 2606 OID 24996)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 25032)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 25066)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2849 (class 2606 OID 25022)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 25040)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 25080)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2852 (class 2606 OID 25118)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2879 (class 2606 OID 33184)
-- Name: data_experiment data_experiment_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_experiment
    ADD CONSTRAINT data_experiment_pkey PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 33195)
-- Name: data_instrument data_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrument
    ADD CONSTRAINT data_instrument_pkey PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 41412)
-- Name: data_instrumentcharacteristicname data_instrumentcharacteristicname_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentcharacteristicname
    ADD CONSTRAINT data_instrumentcharacteristicname_pkey PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 41420)
-- Name: data_instrumentcharacteristicvalue data_instrumentcharacteristicvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentcharacteristicvalue
    ADD CONSTRAINT data_instrumentcharacteristicvalue_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 33211)
-- Name: data_instrumentmodel data_instrumentmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentmodel
    ADD CONSTRAINT data_instrumentmodel_pkey PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 33235)
-- Name: data_product data_product_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_product
    ADD CONSTRAINT data_product_pkey PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 33227)
-- Name: data_setting data_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_setting
    ADD CONSTRAINT data_setting_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 33219)
-- Name: data_station data_station_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_station
    ADD CONSTRAINT data_station_pkey PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 25104)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 24988)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2831 (class 2606 OID 24986)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 24978)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2871 (class 2606 OID 25133)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2874 (class 2606 OID 33169)
-- Name: users_profile users_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 33171)
-- Name: users_profile users_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2896 (class 2606 OID 33277)
-- Name: users_userrequest users_userrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.users_userrequest
    ADD CONSTRAINT users_userrequest_pkey PRIMARY KEY (id);


--
-- TOC entry 2837 (class 1259 OID 25125)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2842 (class 1259 OID 25062)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2845 (class 1259 OID 25063)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2832 (class 1259 OID 25048)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2853 (class 1259 OID 25078)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2856 (class 1259 OID 25077)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2859 (class 1259 OID 25092)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2862 (class 1259 OID 25091)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2850 (class 1259 OID 25119)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2877 (class 1259 OID 33265)
-- Name: data_experiment_instrumentID_id_eedff8dc; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_experiment_instrumentID_id_eedff8dc" ON public.data_experiment USING btree ("instrumentID_id");


--
-- TOC entry 2880 (class 1259 OID 41449)
-- Name: data_instrument_modelID_id_ce76a4d2; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_instrument_modelID_id_ce76a4d2" ON public.data_instrument USING btree ("modelID_id");


--
-- TOC entry 2883 (class 1259 OID 33264)
-- Name: data_instrument_stationID_id_3cbab997; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_instrument_stationID_id_3cbab997" ON public.data_instrument USING btree ("stationID_id");


--
-- TOC entry 2899 (class 1259 OID 41431)
-- Name: data_instrumentcharacteris_characteristicNameID_id_6ea2c7ec; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_instrumentcharacteris_characteristicNameID_id_6ea2c7ec" ON public.data_instrumentcharacteristicvalue USING btree ("characteristicNameID_id");


--
-- TOC entry 2900 (class 1259 OID 41432)
-- Name: data_instrumentcharacteristicvalue_instrumentID_id_a7f5bebe; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_instrumentcharacteristicvalue_instrumentID_id_a7f5bebe" ON public.data_instrumentcharacteristicvalue USING btree ("instrumentID_id");


--
-- TOC entry 2891 (class 1259 OID 33262)
-- Name: data_product_experimentID_id_5fe3c6de; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_product_experimentID_id_5fe3c6de" ON public.data_product USING btree ("experimentID_id");


--
-- TOC entry 2892 (class 1259 OID 33263)
-- Name: data_product_instrumentID_id_024ba3f3; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_product_instrumentID_id_024ba3f3" ON public.data_product USING btree ("instrumentID_id");


--
-- TOC entry 2888 (class 1259 OID 33251)
-- Name: data_setting_experimentID_id_8d2e7428; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX "data_setting_experimentID_id_8d2e7428" ON public.data_setting USING btree ("experimentID_id");


--
-- TOC entry 2865 (class 1259 OID 25115)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2868 (class 1259 OID 25116)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2869 (class 1259 OID 25135)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2872 (class 1259 OID 25134)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: jucar
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2905 (class 2606 OID 25057)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2904 (class 2606 OID 25052)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2903 (class 2606 OID 25043)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2907 (class 2606 OID 25072)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2906 (class 2606 OID 25067)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2909 (class 2606 OID 25086)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2908 (class 2606 OID 25081)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2913 (class 2606 OID 33241)
-- Name: data_experiment data_experiment_instrumentID_id_eedff8dc_fk_data_instrument_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_experiment
    ADD CONSTRAINT "data_experiment_instrumentID_id_eedff8dc_fk_data_instrument_id" FOREIGN KEY ("instrumentID_id") REFERENCES public.data_instrument(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2915 (class 2606 OID 41444)
-- Name: data_instrument data_instrument_modelID_id_ce76a4d2_fk_data_instrumentmodel_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrument
    ADD CONSTRAINT "data_instrument_modelID_id_ce76a4d2_fk_data_instrumentmodel_id" FOREIGN KEY ("modelID_id") REFERENCES public.data_instrumentmodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2914 (class 2606 OID 33236)
-- Name: data_instrument data_instrument_stationID_id_3cbab997_fk_data_station_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrument
    ADD CONSTRAINT "data_instrument_stationID_id_3cbab997_fk_data_station_id" FOREIGN KEY ("stationID_id") REFERENCES public.data_station(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2919 (class 2606 OID 41433)
-- Name: data_instrumentcharacteristicvalue data_instrumentchara_characteristicNameID_6ea2c7ec_fk_data_inst; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentcharacteristicvalue
    ADD CONSTRAINT "data_instrumentchara_characteristicNameID_6ea2c7ec_fk_data_inst" FOREIGN KEY ("characteristicNameID_id") REFERENCES public.data_instrumentcharacteristicname(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2920 (class 2606 OID 41438)
-- Name: data_instrumentcharacteristicvalue data_instrumentchara_instrumentID_id_a7f5bebe_fk_data_inst; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_instrumentcharacteristicvalue
    ADD CONSTRAINT "data_instrumentchara_instrumentID_id_a7f5bebe_fk_data_inst" FOREIGN KEY ("instrumentID_id") REFERENCES public.data_instrument(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2917 (class 2606 OID 33252)
-- Name: data_product data_product_experimentID_id_5fe3c6de_fk_data_experiment_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_product
    ADD CONSTRAINT "data_product_experimentID_id_5fe3c6de_fk_data_experiment_id" FOREIGN KEY ("experimentID_id") REFERENCES public.data_experiment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2918 (class 2606 OID 33257)
-- Name: data_product data_product_instrumentID_id_024ba3f3_fk_data_instrument_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_product
    ADD CONSTRAINT "data_product_instrumentID_id_024ba3f3_fk_data_instrument_id" FOREIGN KEY ("instrumentID_id") REFERENCES public.data_instrument(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2916 (class 2606 OID 33246)
-- Name: data_setting data_setting_experimentID_id_8d2e7428_fk_data_experiment_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.data_setting
    ADD CONSTRAINT "data_setting_experimentID_id_8d2e7428_fk_data_experiment_id" FOREIGN KEY ("experimentID_id") REFERENCES public.data_experiment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2910 (class 2606 OID 25105)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2911 (class 2606 OID 25110)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2912 (class 2606 OID 33172)
-- Name: users_profile users_profile_user_id_2112e78d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jucar
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-07-20 13:30:23

--
-- PostgreSQL database dump complete
--

