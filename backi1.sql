--
-- PostgreSQL database cluster dump
--

-- Started on 2024-12-18 22:49:03

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "NEw_user";
ALTER ROLE "NEw_user" WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:03

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

-- Completed on 2024-12-18 22:49:03

--
-- PostgreSQL database dump complete
--

--
-- Database "Alemasov" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:03

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

--
-- TOC entry 4796 (class 1262 OID 16388)
-- Name: Alemasov; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Alemasov" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Alemasov" OWNER TO postgres;

\connect "Alemasov"

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
-- TOC entry 218 (class 1259 OID 16394)
-- Name: group_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_table (
    id integer NOT NULL,
    id_user integer NOT NULL,
    description character varying
);


ALTER TABLE public.group_table OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16389)
-- Name: user_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_table (
    id integer NOT NULL,
    name character varying,
    age integer
);


ALTER TABLE public.user_table OWNER TO postgres;

--
-- TOC entry 4790 (class 0 OID 16394)
-- Dependencies: 218
-- Data for Name: group_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_table (id, id_user, description) FROM stdin;
1	1	Студент
2	2	Выпускник
1	1	Студент
2	2	Выпускник
1	1	Студент
2	2	Выпускник
\.


--
-- TOC entry 4789 (class 0 OID 16389)
-- Dependencies: 217
-- Data for Name: user_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_table (id, name, age) FROM stdin;
1	Иван	18
2	Пётр	20
1	Иван	18
2	Пётр	20
1	Иван	18
2	Пётр	20
\.


-- Completed on 2024-12-18 22:49:03

--
-- PostgreSQL database dump complete
--

--
-- Database "Alemasov2" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:03

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

--
-- TOC entry 4796 (class 1262 OID 16426)
-- Name: Alemasov2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Alemasov2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Alemasov2" OWNER TO postgres;

\connect "Alemasov2"

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
-- TOC entry 218 (class 1259 OID 16432)
-- Name: group_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_table (
    id integer NOT NULL,
    id_user integer NOT NULL,
    description character varying
);


ALTER TABLE public.group_table OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16427)
-- Name: user_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_table (
    id integer NOT NULL,
    name character varying,
    age integer
);


ALTER TABLE public.user_table OWNER TO postgres;

--
-- TOC entry 4790 (class 0 OID 16432)
-- Dependencies: 218
-- Data for Name: group_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_table (id, id_user, description) FROM stdin;
1	1	Студент
2	2	Выпускник
1	1	Студент
2	2	Выпускник
1	1	Студент
2	2	Выпускник
\.


--
-- TOC entry 4789 (class 0 OID 16427)
-- Dependencies: 217
-- Data for Name: user_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_table (id, name, age) FROM stdin;
1	Иван	18
2	Пётр	20
1	Иван	18
2	Пётр	20
1	Иван	18
2	Пётр	20
\.


-- Completed on 2024-12-18 22:49:03

--
-- PostgreSQL database dump complete
--

--
-- Database "Alemasov_227" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:04

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

--
-- TOC entry 4791 (class 1262 OID 16464)
-- Name: Alemasov_227; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Alemasov_227" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Alemasov_227" OWNER TO postgres;

\connect "Alemasov_227"

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
-- TOC entry 217 (class 1259 OID 16465)
-- Name: student_227_petrov; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_227_petrov (
    name character varying,
    age smallint
);


ALTER TABLE public.student_227_petrov OWNER TO postgres;

--
-- TOC entry 4785 (class 0 OID 16465)
-- Dependencies: 217
-- Data for Name: student_227_petrov; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_227_petrov (name, age) FROM stdin;
Петр Петров	20
Сергей Сидоров	19
da	18
Петр Петров	20
Сергей Сидоров	19
da	18
Петр Петров	20
Сергей Сидоров	19
da	18
\.


-- Completed on 2024-12-18 22:49:04

--
-- PostgreSQL database dump complete
--

--
-- Database "Alemassov_227" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:04

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

--
-- TOC entry 4791 (class 1262 OID 16473)
-- Name: Alemassov_227; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Alemassov_227" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Alemassov_227" OWNER TO postgres;

\connect "Alemassov_227"

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
-- TOC entry 217 (class 1259 OID 16475)
-- Name: student_227_nazarov; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_227_nazarov (
    name character varying,
    age integer
);


ALTER TABLE public.student_227_nazarov OWNER TO postgres;

--
-- TOC entry 4785 (class 0 OID 16475)
-- Dependencies: 217
-- Data for Name: student_227_nazarov; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_227_nazarov (name, age) FROM stdin;
Сергей Сидоров	19
Петров	18
Алина	19
Сергей Сидоров	19
Петров	18
Алина	19
Сергей Сидоров	19
Петров	18
Алина	19
\.


-- Completed on 2024-12-18 22:49:04

--
-- PostgreSQL database dump complete
--

--
-- Database "Hospital" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:04

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

--
-- TOC entry 4818 (class 1262 OID 24654)
-- Name: Hospital; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Hospital" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Hospital" OWNER TO postgres;

\connect "Hospital"

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
-- TOC entry 218 (class 1259 OID 24665)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id_doctor integer NOT NULL,
    fio_doctor character varying NOT NULL,
    id_specialization integer NOT NULL
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24664)
-- Name: doctor_id_doctor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_doctor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_doctor_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctor_id_doctor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_doctor_seq OWNED BY public.doctor.id_doctor;


--
-- TOC entry 220 (class 1259 OID 24679)
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id_patient integer NOT NULL,
    surname character varying NOT NULL,
    name character varying NOT NULL,
    middle_name character varying,
    birthday date NOT NULL,
    address character varying
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24678)
-- Name: patients_id_patient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_patient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patients_id_patient_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 219
-- Name: patients_id_patient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_patient_seq OWNED BY public.patients.id_patient;


--
-- TOC entry 222 (class 1259 OID 24688)
-- Name: reception; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reception (
    id_reception bigint NOT NULL,
    id_patient integer NOT NULL,
    id_doctor integer NOT NULL,
    price money,
    date_reception date NOT NULL
);


ALTER TABLE public.reception OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24687)
-- Name: reception_id_reception_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reception_id_reception_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reception_id_reception_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 221
-- Name: reception_id_reception_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reception_id_reception_seq OWNED BY public.reception.id_reception;


--
-- TOC entry 4651 (class 2604 OID 25074)
-- Name: doctor id_doctor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id_doctor SET DEFAULT nextval('public.doctor_id_doctor_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 25075)
-- Name: patients id_patient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id_patient SET DEFAULT nextval('public.patients_id_patient_seq'::regclass);


--
-- TOC entry 4653 (class 2604 OID 25076)
-- Name: reception id_reception; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception ALTER COLUMN id_reception SET DEFAULT nextval('public.reception_id_reception_seq'::regclass);


--
-- TOC entry 4808 (class 0 OID 24665)
-- Dependencies: 218
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctor (id_doctor, fio_doctor, id_specialization) FROM stdin;
\.


--
-- TOC entry 4810 (class 0 OID 24679)
-- Dependencies: 220
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id_patient, surname, name, middle_name, birthday, address) FROM stdin;
1	Иванов	Иван	Иванович	1990-03-15	Ленина
2	Петрова	Анна	Сергеевна	1985-07-22	пр. Невский, д. 5
3	Сидоров	Алексей	Валентинович	1993-11-30	ул. Татарстан, д. 12
4	Кузнецова	Мария	Дмитриевна	1992-01-05	ул. Красный проспект, д. 20
5	Смирнов	Сергей	Олегович	1988-09-18	ул. Малахита, д. 3
6	Федорова	Ольга	Владимировна	1980-04-27	пр. Победы, д. 14
7	Егорова	Виктория	Андреевна	1995-12-10	ул. Свободы, д. 6
8	Дмитриев	Игорь	Павлович	1978-02-23	ул. Строителей, д. 7
9	Соловьева	Антонина	Николаевна	1991-06-11	ул. Гагарина, д. 11
10	Ковалев	Артем	Юрьевич	1987-08-29	ул. Кирова, д. 4
\.


--
-- TOC entry 4812 (class 0 OID 24688)
-- Dependencies: 222
-- Data for Name: reception; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reception (id_reception, id_patient, id_doctor, price, date_reception) FROM stdin;
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctor_id_doctor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_doctor_seq', 10, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: patients_id_patient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_patient_seq', 10, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: reception_id_reception_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reception_id_reception_seq', 10, true);


--
-- TOC entry 4655 (class 2606 OID 24672)
-- Name: doctor doctor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pk PRIMARY KEY (id_doctor);


--
-- TOC entry 4657 (class 2606 OID 24686)
-- Name: patients patients_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pk PRIMARY KEY (id_patient);


--
-- TOC entry 4659 (class 2606 OID 24693)
-- Name: reception reception_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception
    ADD CONSTRAINT reception_pk PRIMARY KEY (id_reception);


--
-- TOC entry 4660 (class 2606 OID 24694)
-- Name: reception reception_doctor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception
    ADD CONSTRAINT reception_doctor_fk FOREIGN KEY (id_doctor) REFERENCES public.doctor(id_doctor) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 24699)
-- Name: reception reception_patients_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception
    ADD CONSTRAINT reception_patients_fk FOREIGN KEY (id_patient) REFERENCES public.patients(id_patient) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-12-18 22:49:04

--
-- PostgreSQL database dump complete
--

--
-- Database "MIHADAUN" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:04

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

--
-- TOC entry 4824 (class 1262 OID 24974)
-- Name: MIHADAUN; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "MIHADAUN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "MIHADAUN" OWNER TO postgres;

\connect "MIHADAUN"

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
-- TOC entry 220 (class 1259 OID 25016)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id_doctor integer NOT NULL,
    fio_doctor character varying NOT NULL,
    id_specialization integer NOT NULL
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24975)
-- Name: doctor_id_doctor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_doctor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.doctor_id_doctor_seq OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25021)
-- Name: doctor_id_doctor_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_doctor_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_doctor_seq1 OWNER TO postgres;

--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 221
-- Name: doctor_id_doctor_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_doctor_seq1 OWNED BY public.doctor.id_doctor;


--
-- TOC entry 222 (class 1259 OID 25022)
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id_patient integer NOT NULL,
    surname character varying NOT NULL,
    name character varying NOT NULL,
    middle_name character varying,
    birthday date NOT NULL,
    address character varying
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24976)
-- Name: patients_id_patient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_patient_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.patients_id_patient_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25027)
-- Name: patients_id_patient_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_patient_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patients_id_patient_seq1 OWNER TO postgres;

--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 223
-- Name: patients_id_patient_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_patient_seq1 OWNED BY public.patients.id_patient;


--
-- TOC entry 224 (class 1259 OID 25028)
-- Name: reception; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reception (
    id_reception bigint NOT NULL,
    id_patient integer NOT NULL,
    id_doctor integer NOT NULL,
    price money,
    date_reception date NOT NULL
);


ALTER TABLE public.reception OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24977)
-- Name: reception_id_reception_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reception_id_reception_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reception_id_reception_seq OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25031)
-- Name: reception_id_reception_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reception_id_reception_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reception_id_reception_seq1 OWNER TO postgres;

--
-- TOC entry 4827 (class 0 OID 0)
-- Dependencies: 225
-- Name: reception_id_reception_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reception_id_reception_seq1 OWNED BY public.reception.id_reception;


--
-- TOC entry 4654 (class 2604 OID 25077)
-- Name: doctor id_doctor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id_doctor SET DEFAULT nextval('public.doctor_id_doctor_seq1'::regclass);


--
-- TOC entry 4655 (class 2604 OID 25078)
-- Name: patients id_patient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id_patient SET DEFAULT nextval('public.patients_id_patient_seq1'::regclass);


--
-- TOC entry 4656 (class 2604 OID 25079)
-- Name: reception id_reception; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception ALTER COLUMN id_reception SET DEFAULT nextval('public.reception_id_reception_seq1'::regclass);


--
-- TOC entry 4813 (class 0 OID 25016)
-- Dependencies: 220
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctor (id_doctor, fio_doctor, id_specialization) FROM stdin;
\.


--
-- TOC entry 4815 (class 0 OID 25022)
-- Dependencies: 222
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id_patient, surname, name, middle_name, birthday, address) FROM stdin;
\.


--
-- TOC entry 4817 (class 0 OID 25028)
-- Dependencies: 224
-- Data for Name: reception; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reception (id_reception, id_patient, id_doctor, price, date_reception) FROM stdin;
\.


--
-- TOC entry 4828 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctor_id_doctor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_doctor_seq', 1, false);


--
-- TOC entry 4829 (class 0 OID 0)
-- Dependencies: 221
-- Name: doctor_id_doctor_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_doctor_seq1', 1, false);


--
-- TOC entry 4830 (class 0 OID 0)
-- Dependencies: 218
-- Name: patients_id_patient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_patient_seq', 1, false);


--
-- TOC entry 4831 (class 0 OID 0)
-- Dependencies: 223
-- Name: patients_id_patient_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_patient_seq1', 1, false);


--
-- TOC entry 4832 (class 0 OID 0)
-- Dependencies: 219
-- Name: reception_id_reception_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reception_id_reception_seq', 1, false);


--
-- TOC entry 4833 (class 0 OID 0)
-- Dependencies: 225
-- Name: reception_id_reception_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reception_id_reception_seq1', 1, false);


--
-- TOC entry 4658 (class 2606 OID 25036)
-- Name: doctor doctor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pk PRIMARY KEY (id_doctor);


--
-- TOC entry 4660 (class 2606 OID 25038)
-- Name: patients patients_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pk PRIMARY KEY (id_patient);


--
-- TOC entry 4662 (class 2606 OID 25040)
-- Name: reception reception_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception
    ADD CONSTRAINT reception_pk PRIMARY KEY (id_reception);


--
-- TOC entry 4663 (class 2606 OID 25041)
-- Name: reception reception_doctor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception
    ADD CONSTRAINT reception_doctor_fk FOREIGN KEY (id_doctor) REFERENCES public.doctor(id_doctor) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4664 (class 2606 OID 25046)
-- Name: reception reception_patients_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reception
    ADD CONSTRAINT reception_patients_fk FOREIGN KEY (id_patient) REFERENCES public.patients(id_patient) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-12-18 22:49:04

--
-- PostgreSQL database dump complete
--

--
-- Database "Novikova" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:05

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

--
-- TOC entry 4796 (class 1262 OID 24704)
-- Name: Novikova; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Novikova" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Novikova" OWNER TO postgres;

\connect "Novikova"

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
-- TOC entry 218 (class 1259 OID 24710)
-- Name: group_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_table (
    id integer NOT NULL,
    id_user integer NOT NULL,
    description character varying
);


ALTER TABLE public.group_table OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24705)
-- Name: user_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_table (
    id integer NOT NULL,
    name character varying,
    age integer
);


ALTER TABLE public.user_table OWNER TO postgres;

--
-- TOC entry 4790 (class 0 OID 24710)
-- Dependencies: 218
-- Data for Name: group_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_table (id, id_user, description) FROM stdin;
1	1	Студент
2	2	Выпускник
1	1	Студент
2	2	Выпускник
1	1	Студент
2	2	Выпускник
\.


--
-- TOC entry 4789 (class 0 OID 24705)
-- Dependencies: 217
-- Data for Name: user_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_table (id, name, age) FROM stdin;
1	Иван	18
2	Пётр	20
1	Иван	18
2	Пётр	20
1	Иван	18
2	Пётр	20
\.


-- Completed on 2024-12-18 22:49:05

--
-- PostgreSQL database dump complete
--

--
-- Database "Novikova_227" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:05

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

--
-- TOC entry 4791 (class 1262 OID 24731)
-- Name: Novikova_227; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Novikova_227" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Novikova_227" OWNER TO postgres;

\connect "Novikova_227"

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
-- TOC entry 217 (class 1259 OID 24732)
-- Name: student_227_novikova; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_227_novikova (
    name character varying,
    age integer
);


ALTER TABLE public.student_227_novikova OWNER TO postgres;

--
-- TOC entry 4785 (class 0 OID 24732)
-- Dependencies: 217
-- Data for Name: student_227_novikova; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_227_novikova (name, age) FROM stdin;
Закирова Алина 	52
Егорова Ксюша	72
Полина	30
Закирова Алина 	52
Егорова Ксюша	72
Полина	30
Закирова Алина 	52
Егорова Ксюша	72
Полина	30
\.


-- Completed on 2024-12-18 22:49:05

--
-- PostgreSQL database dump complete
--

--
-- Database "Novikova_PR4" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:05

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

--
-- TOC entry 4818 (class 1262 OID 24830)
-- Name: Novikova_PR4; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Novikova_PR4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Novikova_PR4" OWNER TO postgres;

\connect "Novikova_PR4"

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
-- TOC entry 218 (class 1259 OID 24832)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id_doc integer NOT NULL,
    fio_doc character varying NOT NULL,
    spec character varying,
    procent integer
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24831)
-- Name: doctor_id_doc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_doc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_doc_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctor_id_doc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_doc_seq OWNED BY public.doctor.id_doc;


--
-- TOC entry 220 (class 1259 OID 24841)
-- Name: pacient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pacient (
    id_pac integer NOT NULL,
    familiya character varying NOT NULL,
    name character varying NOT NULL,
    otchestvp character varying,
    birthday date NOT NULL,
    address character varying
);


ALTER TABLE public.pacient OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24840)
-- Name: pacient_id_pac_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pacient_id_pac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pacient_id_pac_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 219
-- Name: pacient_id_pac_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pacient_id_pac_seq OWNED BY public.pacient.id_pac;


--
-- TOC entry 222 (class 1259 OID 24850)
-- Name: priem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priem (
    id_pri integer NOT NULL,
    date_pri date,
    id_pac integer,
    id_doctor integer NOT NULL
);


ALTER TABLE public.priem OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24849)
-- Name: priem_id_pri_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.priem_id_pri_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.priem_id_pri_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 221
-- Name: priem_id_pri_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.priem_id_pri_seq OWNED BY public.priem.id_pri;


--
-- TOC entry 4651 (class 2604 OID 25080)
-- Name: doctor id_doc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id_doc SET DEFAULT nextval('public.doctor_id_doc_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 25081)
-- Name: pacient id_pac; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacient ALTER COLUMN id_pac SET DEFAULT nextval('public.pacient_id_pac_seq'::regclass);


--
-- TOC entry 4653 (class 2604 OID 25082)
-- Name: priem id_pri; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priem ALTER COLUMN id_pri SET DEFAULT nextval('public.priem_id_pri_seq'::regclass);


--
-- TOC entry 4808 (class 0 OID 24832)
-- Dependencies: 218
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctor (id_doc, fio_doc, spec, procent) FROM stdin;
1	Ивана Ивановича Петров	Терапевт        	13
2	Мария Сергеевна Смирнова	Кардиолог	23
3	Алексей Владимирович Соколов 	Хирург	21
4	Ольга Николаевна Васильева	Педиатр    	15
5	Дмитрий Андреевич Михайлов 	Терапевт        	23
6	Екатерина Алексеевна Кузнецова 	Невролог   	16
7	Сергей Васильевич Лебедев	Хирург	15
8	Наталья Ивановна Григорьева	Дерматолог	16
9	Константин Игоревич Федоров	Гинеколог 	11
10	Анна Борисовна Соловьева  	Терапевт        	16
\.


--
-- TOC entry 4810 (class 0 OID 24841)
-- Dependencies: 220
-- Data for Name: pacient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pacient (id_pac, familiya, name, otchestvp, birthday, address) FROM stdin;
1	Смирнова	Мария	Сергеевна	1990-07-25	ул. Пушкина, д. 25, 
2	Соколов	Алексей	Владимирович	1982-11-15	проспект Мира, д. 3, кв. 22  
3	Васильева	Ольга	Николаевна	1988-09-30	ул. Советская, д. 40, кв. 7 
4	Михайлов	Дмитрий	Андреевич	1980-02-05	ул. Крылатая, д. 15, кв. 9 
5	Петров	Иван 	Иванович 	1985-03-12	ул. Ленина, д. 10, кв. 5
6	Кузнецова	Екатерина	Алексеевна	1995-06-09	 ул. Академика, д. 18, кв. 11
7	Лебедев	Сергей	Васильевич	1987-04-14	ул. Зелёная, д. 5, кв. 4     
8	Григорьева	Наталья	Ивановна	1992-12-22	ул. Солнечная, д. 12, кв. 3
9	Федоров	Константин	Игоревич	1981-08-19	проспект Октября, д. 7, кв. 6 
10	Соловьева	Анна	Борисовна	1989-01-03	 ул. Красная, д. 21, кв. 8
\.


--
-- TOC entry 4812 (class 0 OID 24850)
-- Dependencies: 222
-- Data for Name: priem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priem (id_pri, date_pri, id_pac, id_doctor) FROM stdin;
1	2000-02-15	2	1
2	2005-06-22	5	3
3	2010-09-09	1	2
4	2015-01-03	3	5
5	2018-05-27	6	4
6	2020-11-18	10	8
7	2021-03-04	7	6
8	2022-07-30	8	7
9	2023-12-12	9	9
10	2024-01-01	4	10
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctor_id_doc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_doc_seq', 10, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: pacient_id_pac_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pacient_id_pac_seq', 10, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: priem_id_pri_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.priem_id_pri_seq', 10, true);


--
-- TOC entry 4655 (class 2606 OID 24839)
-- Name: doctor doctor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pk PRIMARY KEY (id_doc);


--
-- TOC entry 4657 (class 2606 OID 24848)
-- Name: pacient pacient_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacient
    ADD CONSTRAINT pacient_pk PRIMARY KEY (id_pac);


--
-- TOC entry 4659 (class 2606 OID 24855)
-- Name: priem priem_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priem
    ADD CONSTRAINT priem_pk PRIMARY KEY (id_pri);


--
-- TOC entry 4660 (class 2606 OID 24856)
-- Name: priem priem_doctor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priem
    ADD CONSTRAINT priem_doctor_fk FOREIGN KEY (id_doctor) REFERENCES public.doctor(id_doc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 24861)
-- Name: priem priem_pacient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priem
    ADD CONSTRAINT priem_pacient_fk FOREIGN KEY (id_pac) REFERENCES public.pacient(id_pac) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-12-18 22:49:05

--
-- PostgreSQL database dump complete
--

--
-- Database "Novikova_pr1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:05

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

--
-- TOC entry 4801 (class 1262 OID 24715)
-- Name: Novikova_pr1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Novikova_pr1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Novikova_pr1" OWNER TO postgres;

\connect "Novikova_pr1"

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
-- TOC entry 219 (class 1259 OID 24726)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying,
    price integer,
    kategory character varying,
    nalichie integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24716)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    email character varying,
    age integer,
    city character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24721)
-- Name: zakaz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zakaz (
    id integer NOT NULL,
    user_id integer NOT NULL,
    date_ date,
    summa integer,
    status character varying
);


ALTER TABLE public.zakaz OWNER TO postgres;

--
-- TOC entry 4795 (class 0 OID 24726)
-- Dependencies: 219
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, price, kategory, nalichie) FROM stdin;
\.


--
-- TOC entry 4793 (class 0 OID 24716)
-- Dependencies: 217
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, age, city) FROM stdin;
\.


--
-- TOC entry 4794 (class 0 OID 24721)
-- Dependencies: 218
-- Data for Name: zakaz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zakaz (id, user_id, date_, summa, status) FROM stdin;
\.


-- Completed on 2024-12-18 22:49:05

--
-- PostgreSQL database dump complete
--

--
-- Database "Novikovaa_227" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:05

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

--
-- TOC entry 4818 (class 1262 OID 24740)
-- Name: Novikovaa_227; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Novikovaa_227" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Novikovaa_227" OWNER TO postgres;

\connect "Novikovaa_227"

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
-- TOC entry 222 (class 1259 OID 24760)
-- Name: novikova_227_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.novikova_227_orders (
    id_order integer NOT NULL,
    id_shop integer NOT NULL,
    id_product integer NOT NULL,
    count integer NOT NULL,
    date_order date
);


ALTER TABLE public.novikova_227_orders OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24759)
-- Name: novikova_227_orders_id_order_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.novikova_227_orders_id_order_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.novikova_227_orders_id_order_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 221
-- Name: novikova_227_orders_id_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.novikova_227_orders_id_order_seq OWNED BY public.novikova_227_orders.id_order;


--
-- TOC entry 220 (class 1259 OID 24751)
-- Name: novikova_227_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.novikova_227_products (
    id_product integer NOT NULL,
    product_name character varying NOT NULL,
    count_product integer NOT NULL,
    price money
);


ALTER TABLE public.novikova_227_products OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24750)
-- Name: novikova_227_products_id_product_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.novikova_227_products_id_product_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.novikova_227_products_id_product_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 219
-- Name: novikova_227_products_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.novikova_227_products_id_product_seq OWNED BY public.novikova_227_products.id_product;


--
-- TOC entry 218 (class 1259 OID 24742)
-- Name: novikova_227_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.novikova_227_shop (
    id_shop integer NOT NULL,
    stote_name character varying NOT NULL,
    address character varying,
    phone character varying,
    contact_person character varying
);


ALTER TABLE public.novikova_227_shop OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24741)
-- Name: novikova_227_shop_id_shop_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.novikova_227_shop_id_shop_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.novikova_227_shop_id_shop_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 217
-- Name: novikova_227_shop_id_shop_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.novikova_227_shop_id_shop_seq OWNED BY public.novikova_227_shop.id_shop;


--
-- TOC entry 4653 (class 2604 OID 25083)
-- Name: novikova_227_orders id_order; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_orders ALTER COLUMN id_order SET DEFAULT nextval('public.novikova_227_orders_id_order_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 25084)
-- Name: novikova_227_products id_product; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_products ALTER COLUMN id_product SET DEFAULT nextval('public.novikova_227_products_id_product_seq'::regclass);


--
-- TOC entry 4651 (class 2604 OID 25085)
-- Name: novikova_227_shop id_shop; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_shop ALTER COLUMN id_shop SET DEFAULT nextval('public.novikova_227_shop_id_shop_seq'::regclass);


--
-- TOC entry 4812 (class 0 OID 24760)
-- Dependencies: 222
-- Data for Name: novikova_227_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.novikova_227_orders (id_order, id_shop, id_product, count, date_order) FROM stdin;
1	1	2	1	2024-10-27
2	2	3	1	2024-10-27
\.


--
-- TOC entry 4810 (class 0 OID 24751)
-- Dependencies: 220
-- Data for Name: novikova_227_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.novikova_227_products (id_product, product_name, count_product, price) FROM stdin;
1	Компьютерная мышь	8	450,00 ?
2	Клавиатура	12	900,00 ?
3	Коврик для мыши	100	299,00 ?
\.


--
-- TOC entry 4808 (class 0 OID 24742)
-- Dependencies: 218
-- Data for Name: novikova_227_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.novikova_227_shop (id_shop, stote_name, address, phone, contact_person) FROM stdin;
1	Мир компьютеров	Энгельса	8933793123	Иванов Павел
2	Электроник	Ленина	8931314567	Васильев Алексей
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 221
-- Name: novikova_227_orders_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.novikova_227_orders_id_order_seq', 2, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: novikova_227_products_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.novikova_227_products_id_product_seq', 3, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 217
-- Name: novikova_227_shop_id_shop_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.novikova_227_shop_id_shop_seq', 2, true);


--
-- TOC entry 4659 (class 2606 OID 24765)
-- Name: novikova_227_orders novikova_227_orders_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_orders
    ADD CONSTRAINT novikova_227_orders_pk PRIMARY KEY (id_order);


--
-- TOC entry 4657 (class 2606 OID 24758)
-- Name: novikova_227_products novikova_227_products_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_products
    ADD CONSTRAINT novikova_227_products_pk PRIMARY KEY (id_product);


--
-- TOC entry 4655 (class 2606 OID 24749)
-- Name: novikova_227_shop novikova_227_shop_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_shop
    ADD CONSTRAINT novikova_227_shop_pk PRIMARY KEY (id_shop);


--
-- TOC entry 4660 (class 2606 OID 24771)
-- Name: novikova_227_orders novikova_227_orders_novikova_227_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_orders
    ADD CONSTRAINT novikova_227_orders_novikova_227_products_fk FOREIGN KEY (id_product) REFERENCES public.novikova_227_products(id_product) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 24766)
-- Name: novikova_227_orders novikova_227_orders_novikova_227_shop_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novikova_227_orders
    ADD CONSTRAINT novikova_227_orders_novikova_227_shop_fk FOREIGN KEY (id_shop) REFERENCES public.novikova_227_shop(id_shop) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-12-18 22:49:06

--
-- PostgreSQL database dump complete
--

--
-- Database "PRAKTIKA_6" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:06

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

--
-- TOC entry 4865 (class 1262 OID 25103)
-- Name: PRAKTIKA_6; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "PRAKTIKA_6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "PRAKTIKA_6" OWNER TO postgres;

\connect "PRAKTIKA_6"

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

--
-- TOC entry 5 (class 2615 OID 25206)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 25214)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    categoryid integer NOT NULL,
    categoryname character varying(200)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25207)
-- Name: category_categoryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_categoryid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.category_categoryid_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25213)
-- Name: category_categoryid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_categoryid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_categoryid_seq1 OWNER TO postgres;

--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 223
-- Name: category_categoryid_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_categoryid_seq1 OWNED BY public.category.categoryid;


--
-- TOC entry 226 (class 1259 OID 25221)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customerid integer NOT NULL,
    firstname character varying(150),
    lastname character varying(150),
    email character varying(200),
    phonenumber character varying(12),
    registrationdate date
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25208)
-- Name: customer_customerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customerid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.customer_customerid_seq OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25220)
-- Name: customer_customerid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customerid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_customerid_seq1 OWNER TO postgres;

--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 225
-- Name: customer_customerid_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customerid_seq1 OWNED BY public.customer.customerid;


--
-- TOC entry 228 (class 1259 OID 25232)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employeeid integer NOT NULL,
    firstname character varying(200),
    lastname character varying(200),
    hiredate date,
    role_ character varying(100)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25209)
-- Name: employee_employeeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employeeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.employee_employeeid_seq OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25231)
-- Name: employee_employeeid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employeeid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_employeeid_seq1 OWNER TO postgres;

--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 227
-- Name: employee_employeeid_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employeeid_seq1 OWNED BY public.employee.employeeid;


--
-- TOC entry 230 (class 1259 OID 25241)
-- Name: order_; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_ (
    orderid integer NOT NULL,
    orderdate date,
    orderstatus character varying(100),
    paymentmethod character varying(100),
    customerid integer,
    employeeid integer
);


ALTER TABLE public.order_ OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25210)
-- Name: order__orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order__orderid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.order__orderid_seq OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25240)
-- Name: order__orderid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order__orderid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order__orderid_seq1 OWNER TO postgres;

--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 229
-- Name: order__orderid_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order__orderid_seq1 OWNED BY public.order_.orderid;


--
-- TOC entry 234 (class 1259 OID 25272)
-- Name: orderitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orderitem (
    orderitemid integer NOT NULL,
    orderid integer,
    productid integer,
    subtotal smallint
);


ALTER TABLE public.orderitem OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25211)
-- Name: orderitem_orderitemid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orderitem_orderitemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.orderitem_orderitemid_seq OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 25271)
-- Name: orderitem_orderitemid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orderitem_orderitemid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orderitem_orderitemid_seq1 OWNER TO postgres;

--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 233
-- Name: orderitem_orderitemid_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orderitem_orderitemid_seq1 OWNED BY public.orderitem.orderitemid;


--
-- TOC entry 232 (class 1259 OID 25258)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    productid integer NOT NULL,
    productname character varying(200),
    productdescription text,
    price money,
    categoryid integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25212)
-- Name: product_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_productid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.product_productid_seq OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 25257)
-- Name: product_productid_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_productid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_productid_seq1 OWNER TO postgres;

--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 231
-- Name: product_productid_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_productid_seq1 OWNED BY public.product.productid;


--
-- TOC entry 4672 (class 2604 OID 25217)
-- Name: category categoryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN categoryid SET DEFAULT nextval('public.category_categoryid_seq1'::regclass);


--
-- TOC entry 4673 (class 2604 OID 25224)
-- Name: customer customerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customerid SET DEFAULT nextval('public.customer_customerid_seq1'::regclass);


--
-- TOC entry 4674 (class 2604 OID 25235)
-- Name: employee employeeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq1'::regclass);


--
-- TOC entry 4675 (class 2604 OID 25244)
-- Name: order_ orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_ ALTER COLUMN orderid SET DEFAULT nextval('public.order__orderid_seq1'::regclass);


--
-- TOC entry 4677 (class 2604 OID 25275)
-- Name: orderitem orderitemid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitem ALTER COLUMN orderitemid SET DEFAULT nextval('public.orderitem_orderitemid_seq1'::regclass);


--
-- TOC entry 4676 (class 2604 OID 25261)
-- Name: product productid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN productid SET DEFAULT nextval('public.product_productid_seq1'::regclass);


--
-- TOC entry 4849 (class 0 OID 25214)
-- Dependencies: 224
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (categoryid, categoryname) FROM stdin;
1	Напитки
2	Десерт
3	Комбо
4	Бургеры
5	Снеки
\.


--
-- TOC entry 4851 (class 0 OID 25221)
-- Dependencies: 226
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customerid, firstname, lastname, email, phonenumber, registrationdate) FROM stdin;
1	Максим	Петров	mxea@mail.ru	89613456789	2023-11-04
2	Никита	Гришин	mxde@mail.ru	89613456789	2023-06-04
3	Миша	Назаров	mxxe@mail.ru	89613316789	2023-05-04
4	Булат	Сабиров	mxe1@mail.ru	89513856789	2023-11-16
5	Полина	Васильева	mxe@mail.ru	89613475789	2024-11-04
\.


--
-- TOC entry 4853 (class 0 OID 25232)
-- Dependencies: 228
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (employeeid, firstname, lastname, hiredate, role_) FROM stdin;
1	Иван	Иванов	2024-02-15	Кассир
2	Алексей	Чернов	2024-07-01	Повар
3	Дмитрий	Гудихин	2024-04-21	Кассир
4	Антон	Антонов	2024-08-12	Менеджер
5	Александр	Александрович	2024-02-01	Повар
\.


--
-- TOC entry 4855 (class 0 OID 25241)
-- Dependencies: 230
-- Data for Name: order_; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_ (orderid, orderdate, orderstatus, paymentmethod, customerid, employeeid) FROM stdin;
1	2024-12-11	готов	наличка	1	3
2	2024-12-09	готов	карта	2	2
3	2024-12-13	готов	наличка	3	1
4	2024-12-12	готов	карта	5	4
5	2024-12-17	готовиться	наличка	4	5
\.


--
-- TOC entry 4859 (class 0 OID 25272)
-- Dependencies: 234
-- Data for Name: orderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orderitem (orderitemid, orderid, productid, subtotal) FROM stdin;
1	1	1	12
2	2	3	213
3	3	4	113
4	4	5	123
5	5	2	124
\.


--
-- TOC entry 4857 (class 0 OID 25258)
-- Dependencies: 232
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (productid, productname, productdescription, price, categoryid) FROM stdin;
1	Кока кола	Вкусная, без сахара	110,00 ?	1
2	Мороженое	вкус малина	150,00 ?	2
3	Комбо 400	Чизбургер, картошка фри, мороженное, кока кола	400,00 ?	3
4	Чизбургер	Котлета,булка, кетчуп, сыр, помидор	100,00 ?	4
5	Картошка Фри	Картошечка вкусная	160,00 ?	5
\.


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 217
-- Name: category_categoryid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_categoryid_seq', 1, false);


--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 223
-- Name: category_categoryid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_categoryid_seq1', 1, false);


--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 218
-- Name: customer_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customerid_seq', 1, false);


--
-- TOC entry 4876 (class 0 OID 0)
-- Dependencies: 225
-- Name: customer_customerid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customerid_seq1', 1, false);


--
-- TOC entry 4877 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_employeeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employeeid_seq', 1, false);


--
-- TOC entry 4878 (class 0 OID 0)
-- Dependencies: 227
-- Name: employee_employeeid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employeeid_seq1', 1, false);


--
-- TOC entry 4879 (class 0 OID 0)
-- Dependencies: 220
-- Name: order__orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order__orderid_seq', 1, false);


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 229
-- Name: order__orderid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order__orderid_seq1', 1, false);


--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 221
-- Name: orderitem_orderitemid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orderitem_orderitemid_seq', 1, false);


--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 233
-- Name: orderitem_orderitemid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orderitem_orderitemid_seq1', 5, true);


--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 222
-- Name: product_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productid_seq', 1, false);


--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 231
-- Name: product_productid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_productid_seq1', 5, true);


--
-- TOC entry 4679 (class 2606 OID 25219)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (categoryid);


--
-- TOC entry 4681 (class 2606 OID 25230)
-- Name: customer customer_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_email_key UNIQUE (email);


--
-- TOC entry 4683 (class 2606 OID 25228)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);


--
-- TOC entry 4685 (class 2606 OID 25239)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);


--
-- TOC entry 4687 (class 2606 OID 25246)
-- Name: order_ order__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (orderid);


--
-- TOC entry 4691 (class 2606 OID 25277)
-- Name: orderitem orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_pkey PRIMARY KEY (orderitemid);


--
-- TOC entry 4689 (class 2606 OID 25265)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (productid);


--
-- TOC entry 4692 (class 2606 OID 25247)
-- Name: order_ order__customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid);


--
-- TOC entry 4693 (class 2606 OID 25252)
-- Name: order_ order__employeeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid);


--
-- TOC entry 4695 (class 2606 OID 25278)
-- Name: orderitem orderitem_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.order_(orderid);


--
-- TOC entry 4696 (class 2606 OID 25283)
-- Name: orderitem orderitem_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(productid);


--
-- TOC entry 4694 (class 2606 OID 25266)
-- Name: product product_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.category(categoryid);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-12-18 22:49:06

--
-- PostgreSQL database dump complete
--

--
-- Database "Petrov_227" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:06

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

--
-- TOC entry 4818 (class 1262 OID 24618)
-- Name: Petrov_227; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Petrov_227" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Petrov_227" OWNER TO postgres;

\connect "Petrov_227"

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
-- TOC entry 222 (class 1259 OID 24638)
-- Name: petrov_227_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.petrov_227_orders (
    id_order integer NOT NULL,
    id_shop integer NOT NULL,
    id_product integer NOT NULL,
    count integer NOT NULL,
    date_order date
);


ALTER TABLE public.petrov_227_orders OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24637)
-- Name: petrov_227_orders_id_order_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.petrov_227_orders_id_order_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.petrov_227_orders_id_order_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 221
-- Name: petrov_227_orders_id_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.petrov_227_orders_id_order_seq OWNED BY public.petrov_227_orders.id_order;


--
-- TOC entry 220 (class 1259 OID 24629)
-- Name: petrov_227_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.petrov_227_products (
    id_product integer NOT NULL,
    product_name character varying NOT NULL,
    count_product integer NOT NULL,
    price money
);


ALTER TABLE public.petrov_227_products OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24628)
-- Name: petrov_227_products_id_product_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.petrov_227_products_id_product_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.petrov_227_products_id_product_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 219
-- Name: petrov_227_products_id_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.petrov_227_products_id_product_seq OWNED BY public.petrov_227_products.id_product;


--
-- TOC entry 218 (class 1259 OID 24620)
-- Name: petrov_227_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.petrov_227_shop (
    id_shop integer NOT NULL,
    stote_name character varying NOT NULL,
    address character varying,
    phone character varying,
    contact_person character varying
);


ALTER TABLE public.petrov_227_shop OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24619)
-- Name: petrov_227_shop_id_shop_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.petrov_227_shop_id_shop_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.petrov_227_shop_id_shop_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 217
-- Name: petrov_227_shop_id_shop_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.petrov_227_shop_id_shop_seq OWNED BY public.petrov_227_shop.id_shop;


--
-- TOC entry 4653 (class 2604 OID 25086)
-- Name: petrov_227_orders id_order; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_orders ALTER COLUMN id_order SET DEFAULT nextval('public.petrov_227_orders_id_order_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 25087)
-- Name: petrov_227_products id_product; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_products ALTER COLUMN id_product SET DEFAULT nextval('public.petrov_227_products_id_product_seq'::regclass);


--
-- TOC entry 4651 (class 2604 OID 25088)
-- Name: petrov_227_shop id_shop; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_shop ALTER COLUMN id_shop SET DEFAULT nextval('public.petrov_227_shop_id_shop_seq'::regclass);


--
-- TOC entry 4812 (class 0 OID 24638)
-- Dependencies: 222
-- Data for Name: petrov_227_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.petrov_227_orders (id_order, id_shop, id_product, count, date_order) FROM stdin;
1	2	1	1	2024-10-27
2	1	2	1	2024-10-27
\.


--
-- TOC entry 4810 (class 0 OID 24629)
-- Dependencies: 220
-- Data for Name: petrov_227_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.petrov_227_products (id_product, product_name, count_product, price) FROM stdin;
1	Компьютерная мышь	8	450,00 ?
2	Клавиатура	12	900,00 ?
3	Коврик для мыши	100	299,00 ?
\.


--
-- TOC entry 4808 (class 0 OID 24620)
-- Dependencies: 218
-- Data for Name: petrov_227_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.petrov_227_shop (id_shop, stote_name, address, phone, contact_person) FROM stdin;
1	Мир компьютеров	Энгельса	8987313131	Иванов Павел
2	Электроник	Ленина	8931314125	Васильев Алексей
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 221
-- Name: petrov_227_orders_id_order_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.petrov_227_orders_id_order_seq', 2, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: petrov_227_products_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.petrov_227_products_id_product_seq', 3, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 217
-- Name: petrov_227_shop_id_shop_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.petrov_227_shop_id_shop_seq', 2, true);


--
-- TOC entry 4659 (class 2606 OID 24643)
-- Name: petrov_227_orders petrov_227_orders_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_orders
    ADD CONSTRAINT petrov_227_orders_pk PRIMARY KEY (id_order);


--
-- TOC entry 4657 (class 2606 OID 24636)
-- Name: petrov_227_products petrov_227_products_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_products
    ADD CONSTRAINT petrov_227_products_pk PRIMARY KEY (id_product);


--
-- TOC entry 4655 (class 2606 OID 24627)
-- Name: petrov_227_shop petrov_227_shop_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_shop
    ADD CONSTRAINT petrov_227_shop_pk PRIMARY KEY (id_shop);


--
-- TOC entry 4660 (class 2606 OID 24649)
-- Name: petrov_227_orders petrov_227_orders_petrov_227_products_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_orders
    ADD CONSTRAINT petrov_227_orders_petrov_227_products_fk FOREIGN KEY (id_product) REFERENCES public.petrov_227_products(id_product) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 24644)
-- Name: petrov_227_orders petrov_227_orders_petrov_227_shop_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.petrov_227_orders
    ADD CONSTRAINT petrov_227_orders_petrov_227_shop_fk FOREIGN KEY (id_shop) REFERENCES public.petrov_227_shop(id_shop) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-12-18 22:49:06

--
-- PostgreSQL database dump complete
--

--
-- Database "Poliklinika" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:06

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

--
-- TOC entry 4818 (class 1262 OID 16399)
-- Name: Poliklinika; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Poliklinika" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Poliklinika" OWNER TO postgres;

\connect "Poliklinika"

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
-- TOC entry 224 (class 1259 OID 16422)
-- Name: appointments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointments (
    id bigint NOT NULL,
    patients_id bigint,
    doctors_id smallint,
    "Date visit" date,
    diseases_id integer
);


ALTER TABLE public.appointments OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16421)
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointments_id_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 223
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;


--
-- TOC entry 222 (class 1259 OID 16415)
-- Name: diseases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseases (
    id integer NOT NULL,
    disease character varying,
    description text
);


ALTER TABLE public.diseases OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16414)
-- Name: diseases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.diseases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.diseases_id_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 221
-- Name: diseases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.diseases_id_seq OWNED BY public.diseases.id;


--
-- TOC entry 218 (class 1259 OID 16401)
-- Name: doctors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctors (
    id smallint NOT NULL,
    surname character varying,
    name character varying,
    "middle name" character varying,
    specialization character varying,
    "Cabinet number" smallint
);


ALTER TABLE public.doctors OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16400)
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctors_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_id_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- TOC entry 220 (class 1259 OID 16408)
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id bigint NOT NULL,
    surname character varying,
    name character varying,
    "middle name" character varying,
    birthday date
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16407)
-- Name: patients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patients_id_seq OWNER TO postgres;

--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 219
-- Name: patients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_seq OWNED BY public.patients.id;


--
-- TOC entry 4659 (class 2604 OID 25089)
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- TOC entry 4658 (class 2604 OID 25090)
-- Name: diseases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseases ALTER COLUMN id SET DEFAULT nextval('public.diseases_id_seq'::regclass);


--
-- TOC entry 4656 (class 2604 OID 25091)
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- TOC entry 4657 (class 2604 OID 25092)
-- Name: patients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id SET DEFAULT nextval('public.patients_id_seq'::regclass);


--
-- TOC entry 4812 (class 0 OID 16422)
-- Dependencies: 224
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointments (id, patients_id, doctors_id, "Date visit", diseases_id) FROM stdin;
\.


--
-- TOC entry 4810 (class 0 OID 16415)
-- Dependencies: 222
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseases (id, disease, description) FROM stdin;
1	Грипп	Инфекционное заболевание
2	Гипертония	Хроническое заболевание
3	Диабет	Метаболическое заболевание
1	Грипп	Инфекционное заболевание
2	Гипертония	Хроническое заболевание
3	Диабет	Метаболическое заболевание
1	Грипп	Инфекционное заболевание
2	Гипертония	Хроническое заболевание
3	Диабет	Метаболическое заболевание
\.


--
-- TOC entry 4806 (class 0 OID 16401)
-- Dependencies: 218
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (id, surname, name, "middle name", specialization, "Cabinet number") FROM stdin;
1	Иванов	Иван	Иванович	Терапевт	101
2	Петров	Петр	Петрович	Хирург	102
3	Сидоров	Алексей	Сидорович	Кариолог	103
1	Иванов	Иван	Иванович	Терапевт	101
2	Петров	Петр	Петрович	Хирург	102
3	Сидоров	Алексей	Сидорович	Кариолог	103
1	Иванов	Иван	Иванович	Терапевт	101
2	Петров	Петр	Петрович	Хирург	102
3	Сидоров	Алексей	Сидорович	Кариолог	103
\.


--
-- TOC entry 4808 (class 0 OID 16408)
-- Dependencies: 220
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id, surname, name, "middle name", birthday) FROM stdin;
1	Смирнов	Сергей	Сергеевич	1980-01-01
2	Кузнецоввва	Мария	Ивановна	1990-02-02
3	Савельев	Михаил	Андреевич	2000-03-03
1	Смирнов	Сергей	Сергеевич	1980-01-01
2	Кузнецоввва	Мария	Ивановна	1990-02-02
3	Савельев	Михаил	Андреевич	2000-03-03
1	Смирнов	Сергей	Сергеевич	1980-01-01
2	Кузнецоввва	Мария	Ивановна	1990-02-02
3	Савельев	Михаил	Андреевич	2000-03-03
\.


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 223
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointments_id_seq', 1, false);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: diseases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.diseases_id_seq', 3, true);


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctors_id_seq', 3, true);


--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 219
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_seq', 3, true);


-- Completed on 2024-12-18 22:49:06

--
-- PostgreSQL database dump complete
--

--
-- Database "Poliknlinikaa" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:06

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

--
-- TOC entry 4818 (class 1262 OID 16437)
-- Name: Poliknlinikaa; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Poliknlinikaa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Poliknlinikaa" OWNER TO postgres;

\connect "Poliknlinikaa"

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
-- TOC entry 224 (class 1259 OID 16460)
-- Name: appointments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointments (
    id bigint NOT NULL,
    id_doctors integer,
    id_patient integer,
    data_vizit date,
    id_bolezni integer
);


ALTER TABLE public.appointments OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16459)
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointments_id_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 223
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;


--
-- TOC entry 222 (class 1259 OID 16453)
-- Name: diseases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseases (
    id integer NOT NULL,
    name_bolezn character varying,
    description character varying
);


ALTER TABLE public.diseases OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16452)
-- Name: diseases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.diseases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.diseases_id_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 221
-- Name: diseases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.diseases_id_seq OWNED BY public.diseases.id;


--
-- TOC entry 218 (class 1259 OID 16439)
-- Name: doctors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctors (
    id smallint NOT NULL,
    second_name character varying,
    name character varying,
    specializatia character varying,
    number_kobinet smallint
);


ALTER TABLE public.doctors OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16438)
-- Name: doctors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctors_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_id_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctors_id_seq OWNED BY public.doctors.id;


--
-- TOC entry 220 (class 1259 OID 16446)
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id integer NOT NULL,
    name character varying,
    birthday date
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16445)
-- Name: patients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patients_id_seq OWNER TO postgres;

--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 219
-- Name: patients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_seq OWNED BY public.patients.id;


--
-- TOC entry 4659 (class 2604 OID 25093)
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- TOC entry 4658 (class 2604 OID 25094)
-- Name: diseases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseases ALTER COLUMN id SET DEFAULT nextval('public.diseases_id_seq'::regclass);


--
-- TOC entry 4656 (class 2604 OID 25095)
-- Name: doctors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctors ALTER COLUMN id SET DEFAULT nextval('public.doctors_id_seq'::regclass);


--
-- TOC entry 4657 (class 2604 OID 25096)
-- Name: patients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id SET DEFAULT nextval('public.patients_id_seq'::regclass);


--
-- TOC entry 4812 (class 0 OID 16460)
-- Dependencies: 224
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appointments (id, id_doctors, id_patient, data_vizit, id_bolezni) FROM stdin;
1	1	1	2024-02-01	1
2	1	1	2024-02-01	1
3	3	2	2024-08-10	4
4	5	4	2024-06-09	3
5	4	5	2024-03-20	5
1	1	1	2024-02-01	1
2	1	1	2024-02-01	1
3	3	2	2024-08-10	4
4	5	4	2024-06-09	3
5	4	5	2024-03-20	5
1	1	1	2024-02-01	1
2	1	1	2024-02-01	1
3	3	2	2024-08-10	4
4	5	4	2024-06-09	3
5	4	5	2024-03-20	5
\.


--
-- TOC entry 4810 (class 0 OID 16453)
-- Dependencies: 222
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseases (id, name_bolezn, description) FROM stdin;
1	Грипп	Инфекционное заболевание
2	Гипертония	Хроническое заболевание
3	Диабет	Метаболическое заболевание
4	Астма	Хроническое восполительное заболевание
5	Артрит	Восполительное заболевание
1	Грипп	Инфекционное заболевание
2	Гипертония	Хроническое заболевание
3	Диабет	Метаболическое заболевание
4	Астма	Хроническое восполительное заболевание
5	Артрит	Восполительное заболевание
1	Грипп	Инфекционное заболевание
2	Гипертония	Хроническое заболевание
3	Диабет	Метаболическое заболевание
4	Астма	Хроническое восполительное заболевание
5	Артрит	Восполительное заболевание
\.


--
-- TOC entry 4806 (class 0 OID 16439)
-- Dependencies: 218
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (id, second_name, name, specializatia, number_kobinet) FROM stdin;
1	Алемасов	Евгений	Хирург	203
2	Петров	Максим	Окулист	305
3	Назаров	Михаил	Травматолог	201
4	Сабиров	Булат	Терапевт	206
5	Бушев	Андрей	Кардиолог	107
1	Алемасов	Евгений	Хирург	203
2	Петров	Максим	Окулист	305
3	Назаров	Михаил	Травматолог	201
4	Сабиров	Булат	Терапевт	206
5	Бушев	Андрей	Кардиолог	107
1	Алемасов	Евгений	Хирург	203
2	Петров	Максим	Окулист	305
3	Назаров	Михаил	Травматолог	201
4	Сабиров	Булат	Терапевт	206
5	Бушев	Андрей	Кардиолог	107
\.


--
-- TOC entry 4808 (class 0 OID 16446)
-- Dependencies: 220
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id, name, birthday) FROM stdin;
1	Кирилл	2004-02-05
2	Полина	2003-07-20
3	Никита	2006-08-01
4	Сергей	2001-03-03
5	Артём	2008-08-09
1	Кирилл	2004-02-05
2	Полина	2003-07-20
3	Никита	2006-08-01
4	Сергей	2001-03-03
5	Артём	2008-08-09
1	Кирилл	2004-02-05
2	Полина	2003-07-20
3	Никита	2006-08-01
4	Сергей	2001-03-03
5	Артём	2008-08-09
\.


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 223
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointments_id_seq', 5, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: diseases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.diseases_id_seq', 5, true);


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 217
-- Name: doctors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctors_id_seq', 5, true);


--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 219
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_seq', 5, true);


-- Completed on 2024-12-18 22:49:07

--
-- PostgreSQL database dump complete
--

--
-- Database "Praktika5" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:07

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

--
-- TOC entry 4839 (class 1262 OID 24896)
-- Name: Praktika5; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Praktika5" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "Praktika5" OWNER TO postgres;

\connect "Praktika5"

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
-- TOC entry 221 (class 1259 OID 24935)
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.film OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24934)
-- Name: film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.film_id_seq OWNER TO postgres;

--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 220
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_id_seq OWNED BY public.film.id;


--
-- TOC entry 218 (class 1259 OID 24918)
-- Name: hall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hall (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.hall OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24917)
-- Name: hall_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hall_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hall_id_seq OWNER TO postgres;

--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 217
-- Name: hall_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hall_id_seq OWNED BY public.hall.id;


--
-- TOC entry 219 (class 1259 OID 24924)
-- Name: hall_row; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hall_row (
    id_hall integer NOT NULL,
    number smallint NOT NULL,
    capacity smallint
);


ALTER TABLE public.hall_row OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24970)
-- Name: hall_three_row_two; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.hall_three_row_two AS
 SELECT hall.name AS "Номер зала",
    hall_row.number AS "Номер ряда",
    hall_row.capacity AS "Количество мест"
   FROM (public.hall_row
     JOIN public.hall ON ((hall.id = hall_row.id_hall)))
  WHERE (((hall.name)::text = 'Зал 3'::text) AND (hall_row.number = 2));


ALTER VIEW public.hall_three_row_two OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24944)
-- Name: screening; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.screening (
    id integer NOT NULL,
    hall_id integer,
    film_id integer,
    "time" timestamp without time zone
);


ALTER TABLE public.screening OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24943)
-- Name: screening_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.screening_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.screening_id_seq OWNER TO postgres;

--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 222
-- Name: screening_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.screening_id_seq OWNED BY public.screening.id;


--
-- TOC entry 224 (class 1259 OID 24960)
-- Name: tickets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tickets (
    id_screening integer NOT NULL,
    "row" smallint NOT NULL,
    seat smallint NOT NULL,
    cost integer
);


ALTER TABLE public.tickets OWNER TO postgres;

--
-- TOC entry 4664 (class 2604 OID 25097)
-- Name: film id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film ALTER COLUMN id SET DEFAULT nextval('public.film_id_seq'::regclass);


--
-- TOC entry 4663 (class 2604 OID 25098)
-- Name: hall id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall ALTER COLUMN id SET DEFAULT nextval('public.hall_id_seq'::regclass);


--
-- TOC entry 4665 (class 2604 OID 25099)
-- Name: screening id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screening ALTER COLUMN id SET DEFAULT nextval('public.screening_id_seq'::regclass);


--
-- TOC entry 4830 (class 0 OID 24935)
-- Dependencies: 221
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film (id, name, description) FROM stdin;
1	Форсаж 1	Боевик, триллер
2	Веном 3	Боевик, ужасы
3	Ужасающий 3	Ужасы
4	Переводчик	Боевик, триллер
5	Драйв	Драма
\.


--
-- TOC entry 4827 (class 0 OID 24918)
-- Dependencies: 218
-- Data for Name: hall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hall (id, name) FROM stdin;
1	Зал 1
2	Зал 2
3	Зал 3
4	Зал 4
5	Зал 5
\.


--
-- TOC entry 4828 (class 0 OID 24924)
-- Dependencies: 219
-- Data for Name: hall_row; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hall_row (id_hall, number, capacity) FROM stdin;
1	1	6
2	6	12
3	2	8
4	3	7
5	5	8
\.


--
-- TOC entry 4832 (class 0 OID 24944)
-- Dependencies: 223
-- Data for Name: screening; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.screening (id, hall_id, film_id, "time") FROM stdin;
1	1	2	2024-02-01 11:40:00
2	2	1	2024-02-09 20:40:00
3	3	3	2024-02-01 11:40:00
4	5	5	2024-02-06 10:30:00
5	4	4	2024-02-07 11:40:00
\.


--
-- TOC entry 4833 (class 0 OID 24960)
-- Dependencies: 224
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tickets (id_screening, "row", seat, cost) FROM stdin;
1	5	12	450
3	4	9	350
2	6	8	400
5	8	4	300
4	2	10	500
\.


--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 220
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_id_seq', 5, true);


--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 217
-- Name: hall_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hall_id_seq', 5, true);


--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 222
-- Name: screening_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.screening_id_seq', 5, true);


--
-- TOC entry 4671 (class 2606 OID 24942)
-- Name: film film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);


--
-- TOC entry 4667 (class 2606 OID 24923)
-- Name: hall hall_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall
    ADD CONSTRAINT hall_pkey PRIMARY KEY (id);


--
-- TOC entry 4669 (class 2606 OID 24928)
-- Name: hall_row hall_row_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall_row
    ADD CONSTRAINT hall_row_pkey PRIMARY KEY (id_hall, number);


--
-- TOC entry 4673 (class 2606 OID 24949)
-- Name: screening screening_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screening
    ADD CONSTRAINT screening_pkey PRIMARY KEY (id);


--
-- TOC entry 4675 (class 2606 OID 24964)
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id_screening, "row", seat);


--
-- TOC entry 4676 (class 2606 OID 24929)
-- Name: hall_row hall_row_id_hall_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall_row
    ADD CONSTRAINT hall_row_id_hall_fkey FOREIGN KEY (id_hall) REFERENCES public.hall(id);


--
-- TOC entry 4677 (class 2606 OID 24955)
-- Name: screening screening_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screening
    ADD CONSTRAINT screening_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(id);


--
-- TOC entry 4678 (class 2606 OID 24950)
-- Name: screening screening_hall_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screening
    ADD CONSTRAINT screening_hall_id_fkey FOREIGN KEY (hall_id) REFERENCES public.hall(id);


--
-- TOC entry 4679 (class 2606 OID 24965)
-- Name: tickets tickets_id_screening_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_id_screening_fkey FOREIGN KEY (id_screening) REFERENCES public.screening(id);


-- Completed on 2024-12-18 22:49:07

--
-- PostgreSQL database dump complete
--

--
-- Database "pr_4_Petrov" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-18 22:49:07

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

--
-- TOC entry 4818 (class 1262 OID 16483)
-- Name: pr_4_Petrov; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "pr_4_Petrov" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "pr_4_Petrov" OWNER TO postgres;

\connect "pr_4_Petrov"

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
-- TOC entry 218 (class 1259 OID 16485)
-- Name: kat_pok; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kat_pok (
    id integer NOT NULL,
    name_kat character varying(200)
);


ALTER TABLE public.kat_pok OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16484)
-- Name: kat_pok_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kat_pok_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kat_pok_id_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 217
-- Name: kat_pok_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kat_pok_id_seq OWNED BY public.kat_pok.id;


--
-- TOC entry 222 (class 1259 OID 16499)
-- Name: oplata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oplata (
    id integer NOT NULL,
    _date date,
    suma numeric(10,1),
    id_kat integer,
    descript text,
    id_pay integer,
    ostatok numeric(10,1)
);


ALTER TABLE public.oplata OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16498)
-- Name: oplata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oplata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oplata_id_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 221
-- Name: oplata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oplata_id_seq OWNED BY public.oplata.id;


--
-- TOC entry 220 (class 1259 OID 16492)
-- Name: sposob_opl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sposob_opl (
    id integer NOT NULL,
    name_sposob character varying(200)
);


ALTER TABLE public.sposob_opl OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16491)
-- Name: sposob_opl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sposob_opl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sposob_opl_id_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 219
-- Name: sposob_opl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sposob_opl_id_seq OWNED BY public.sposob_opl.id;


--
-- TOC entry 4651 (class 2604 OID 25100)
-- Name: kat_pok id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kat_pok ALTER COLUMN id SET DEFAULT nextval('public.kat_pok_id_seq'::regclass);


--
-- TOC entry 4653 (class 2604 OID 25101)
-- Name: oplata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oplata ALTER COLUMN id SET DEFAULT nextval('public.oplata_id_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 25102)
-- Name: sposob_opl id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sposob_opl ALTER COLUMN id SET DEFAULT nextval('public.sposob_opl_id_seq'::regclass);


--
-- TOC entry 4808 (class 0 OID 16485)
-- Dependencies: 218
-- Data for Name: kat_pok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kat_pok (id, name_kat) FROM stdin;
1	Продукты
2	Авто
3	Стройка
4	Бытовая химия
\.


--
-- TOC entry 4812 (class 0 OID 16499)
-- Dependencies: 222
-- Data for Name: oplata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oplata (id, _date, suma, id_kat, descript, id_pay, ostatok) FROM stdin;
2	2022-09-30	550.0	1	Сходил в магазин	3	5200.0
3	2022-09-30	400.0	2	Заправился	3	4800.0
4	2022-09-30	1080.0	3	купил гвоздей и саморезов	3	3720.0
5	2022-09-30	724.0	4	хозяйственное мыло	4	4002.0
6	2022-10-01	6300.0	4	Утюг	5	1700.0
7	2022-10-02	1099.1	4	Заправился	4	2909.9
\.


--
-- TOC entry 4810 (class 0 OID 16492)
-- Dependencies: 220
-- Data for Name: sposob_opl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sposob_opl (id, name_sposob) FROM stdin;
3	Наличка
4	Карта Сбер
5	ВТБ кредитка
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 217
-- Name: kat_pok_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kat_pok_id_seq', 4, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 221
-- Name: oplata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oplata_id_seq', 7, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 219
-- Name: sposob_opl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sposob_opl_id_seq', 5, true);


--
-- TOC entry 4655 (class 2606 OID 16490)
-- Name: kat_pok kat_pok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kat_pok
    ADD CONSTRAINT kat_pok_pkey PRIMARY KEY (id);


--
-- TOC entry 4659 (class 2606 OID 16506)
-- Name: oplata oplata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oplata
    ADD CONSTRAINT oplata_pkey PRIMARY KEY (id);


--
-- TOC entry 4657 (class 2606 OID 16497)
-- Name: sposob_opl sposob_opl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sposob_opl
    ADD CONSTRAINT sposob_opl_pkey PRIMARY KEY (id);


--
-- TOC entry 4660 (class 2606 OID 16507)
-- Name: oplata oplata_id_kat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oplata
    ADD CONSTRAINT oplata_id_kat_fkey FOREIGN KEY (id_kat) REFERENCES public.kat_pok(id);


--
-- TOC entry 4661 (class 2606 OID 16512)
-- Name: oplata oplata_id_pay_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oplata
    ADD CONSTRAINT oplata_id_pay_fkey FOREIGN KEY (id_pay) REFERENCES public.sposob_opl(id);


-- Completed on 2024-12-18 22:49:07

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-12-18 22:49:07

--
-- PostgreSQL database cluster dump complete
--

