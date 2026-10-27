--
-- PostgreSQL database dump
--

\restrict YphtU5ZeAbBI6EyPdhOeMhr1RparfP7f9hUnzBdYrGDq8FJbvHzEvMI2DefMrYS

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-27 12:51:59

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
-- TOC entry 228 (class 1259 OID 17578)
-- Name: disciplines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplines (
    discipline_id integer NOT NULL,
    discipline_name character varying(100) NOT NULL,
    hours integer
);


ALTER TABLE public.disciplines OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17577)
-- Name: disciplines_discipline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disciplines_discipline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.disciplines_discipline_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 227
-- Name: disciplines_discipline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disciplines_discipline_id_seq OWNED BY public.disciplines.discipline_id;


--
-- TOC entry 222 (class 1259 OID 17540)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    group_id integer NOT NULL,
    group_name character varying(20) NOT NULL,
    specialty character varying(100) NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17539)
-- Name: groups_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.groups_group_id_seq OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 221
-- Name: groups_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_group_id_seq OWNED BY public.groups.group_id;


--
-- TOC entry 230 (class 1259 OID 17587)
-- Name: lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lessons (
    lesson_id integer NOT NULL,
    lesson_date date NOT NULL,
    group_id integer NOT NULL,
    discipline_id integer NOT NULL,
    teacher_id integer NOT NULL,
    lesson_type character varying(50) NOT NULL
);


ALTER TABLE public.lessons OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17586)
-- Name: lessons_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lessons_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lessons_lesson_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 229
-- Name: lessons_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lessons_lesson_id_seq OWNED BY public.lessons.lesson_id;


--
-- TOC entry 220 (class 1259 OID 17522)
-- Name: prepodovateli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prepodovateli (
    student_id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    birth_date date NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.prepodovateli OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17521)
-- Name: prepodovateli_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prepodovateli_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prepodovateli_student_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 219
-- Name: prepodovateli_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prepodovateli_student_id_seq OWNED BY public.prepodovateli.student_id;


--
-- TOC entry 224 (class 1259 OID 17550)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    birth_date date NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17549)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 223
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 226 (class 1259 OID 17567)
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    department character varying(100) NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17566)
-- Name: teachers_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teachers_teacher_id_seq OWNER TO postgres;

--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 225
-- Name: teachers_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;


--
-- TOC entry 4754 (class 2604 OID 17581)
-- Name: disciplines discipline_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines ALTER COLUMN discipline_id SET DEFAULT nextval('public.disciplines_discipline_id_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 17543)
-- Name: groups group_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN group_id SET DEFAULT nextval('public.groups_group_id_seq'::regclass);


--
-- TOC entry 4755 (class 2604 OID 17590)
-- Name: lessons lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons ALTER COLUMN lesson_id SET DEFAULT nextval('public.lessons_lesson_id_seq'::regclass);


--
-- TOC entry 4750 (class 2604 OID 17525)
-- Name: prepodovateli student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepodovateli ALTER COLUMN student_id SET DEFAULT nextval('public.prepodovateli_student_id_seq'::regclass);


--
-- TOC entry 4752 (class 2604 OID 17553)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 17570)
-- Name: teachers teacher_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);


--
-- TOC entry 4928 (class 0 OID 17578)
-- Dependencies: 228
-- Data for Name: disciplines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplines (discipline_id, discipline_name, hours) FROM stdin;
1	Базы данных	108
2	программирование	144
\.


--
-- TOC entry 4922 (class 0 OID 17540)
-- Dependencies: 222
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (group_id, group_name, specialty) FROM stdin;
1	ИС-22	Информационные системы
2	П-21	Программирование
3	ЭК-21	Экономика
\.


--
-- TOC entry 4930 (class 0 OID 17587)
-- Dependencies: 230
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lessons (lesson_id, lesson_date, group_id, discipline_id, teacher_id, lesson_type) FROM stdin;
1	2026-10-27	1	1	1	Лекция
2	2026-10-27	2	2	2	Практика
3	2026-10-28	1	2	2	Лекция
\.


--
-- TOC entry 4920 (class 0 OID 17522)
-- Dependencies: 220
-- Data for Name: prepodovateli; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prepodovateli (student_id, last_name, first_name, middle_name, birth_date, group_id) FROM stdin;
\.


--
-- TOC entry 4924 (class 0 OID 17550)
-- Dependencies: 224
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, last_name, first_name, middle_name, birth_date, group_id) FROM stdin;
4	Кузнецов	Максим	Олегович	2004-05-15	1
3	Сидорова	Анна	Игоревна	2004-09-22	1
1	Иванов	Иван	Иванович	2005-01-10	2
2	Петров	Алексей	Сергеевич	2005-03-18	2
5	Смирнова	Елена	Андреевна	2004-11-02	3
6	Манин	Даня	Валерьевич	2007-03-15	1
7	Бирюков	Дмитрий	Сергеевич	2008-07-22	2
8	Иванов	Федор	Алексеевич	2007-11-30	1
9	Горохова	Виктория	Романова	2007-06-23	1
\.


--
-- TOC entry 4926 (class 0 OID 17567)
-- Dependencies: 226
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (teacher_id, last_name, first_name, department) FROM stdin;
1	Петров	Петр	Кафедра ИТ
2	Сидоров	Сидор	Кафедра Высшей математики
\.


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 227
-- Name: disciplines_discipline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disciplines_discipline_id_seq', 1, true);


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 221
-- Name: groups_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_group_id_seq', 3, true);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 229
-- Name: lessons_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lessons_lesson_id_seq', 3, true);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 219
-- Name: prepodovateli_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prepodovateli_student_id_seq', 1, false);


--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 223
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 9, true);


--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 225
-- Name: teachers_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 1, false);


--
-- TOC entry 4765 (class 2606 OID 17585)
-- Name: disciplines disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (discipline_id);


--
-- TOC entry 4759 (class 2606 OID 17548)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (group_id);


--
-- TOC entry 4767 (class 2606 OID 17598)
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (lesson_id);


--
-- TOC entry 4757 (class 2606 OID 17532)
-- Name: prepodovateli prepodovateli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prepodovateli
    ADD CONSTRAINT prepodovateli_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4761 (class 2606 OID 17560)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4763 (class 2606 OID 17576)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (teacher_id);


--
-- TOC entry 4768 (class 2606 OID 17561)
-- Name: students fk_students_groups; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_students_groups FOREIGN KEY (group_id) REFERENCES public.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4769 (class 2606 OID 17604)
-- Name: lessons lessons_discipline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_discipline_id_fkey FOREIGN KEY (discipline_id) REFERENCES public.disciplines(discipline_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4770 (class 2606 OID 17599)
-- Name: lessons lessons_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(group_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4771 (class 2606 OID 17609)
-- Name: lessons lessons_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teachers(teacher_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2026-10-27 12:52:00

--
-- PostgreSQL database dump complete
--

\unrestrict YphtU5ZeAbBI6EyPdhOeMhr1RparfP7f9hUnzBdYrGDq8FJbvHzEvMI2DefMrYS

