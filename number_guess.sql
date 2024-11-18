--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1731952354819', 2, 773);
INSERT INTO public.users VALUES (1, 'user_1731952354820', 5, 16);
INSERT INTO public.users VALUES (4, 'user_1731952364676', 2, 750);
INSERT INTO public.users VALUES (17, 'user_1731952885016', 2, 542);
INSERT INTO public.users VALUES (3, 'user_1731952364677', 5, 92);
INSERT INTO public.users VALUES (31, 'user_1731953171961', 2, 345);
INSERT INTO public.users VALUES (44, 'user_1731953735649', 2, 770);
INSERT INTO public.users VALUES (16, 'user_1731952885017', 5, 245);
INSERT INTO public.users VALUES (30, 'user_1731953171962', 5, 81);
INSERT INTO public.users VALUES (6, 'user_1731952452038', 2, 17);
INSERT INTO public.users VALUES (43, 'user_1731953735650', 5, 401);
INSERT INTO public.users VALUES (5, 'user_1731952452039', 5, 204);
INSERT INTO public.users VALUES (19, 'user_1731952891169', 2, 686);
INSERT INTO public.users VALUES (33, 'user_1731953186605', 2, 656);
INSERT INTO public.users VALUES (9, 'user_1731952570125', 2, 536);
INSERT INTO public.users VALUES (18, 'user_1731952891170', 5, 181);
INSERT INTO public.users VALUES (8, 'user_1731952570126', 5, 9);
INSERT INTO public.users VALUES (32, 'user_1731953186606', 5, 17);
INSERT INTO public.users VALUES (46, 'user_1731953745668', 2, 187);
INSERT INTO public.users VALUES (11, 'user_1731952646427', 2, 289);
INSERT INTO public.users VALUES (21, 'user_1731952902028', 2, 821);
INSERT INTO public.users VALUES (45, 'user_1731953745669', 5, 136);
INSERT INTO public.users VALUES (10, 'user_1731952646428', 5, 202);
INSERT INTO public.users VALUES (20, 'user_1731952902029', 5, 18);
INSERT INTO public.users VALUES (7, 'mauro', 2, 7);
INSERT INTO public.users VALUES (35, 'user_1731953195702', 2, 243);
INSERT INTO public.users VALUES (13, 'user_1731952707206', 2, 780);
INSERT INTO public.users VALUES (12, 'user_1731952707207', 5, 306);
INSERT INTO public.users VALUES (34, 'user_1731953195703', 5, 57);
INSERT INTO public.users VALUES (23, 'user_1731953041648', 2, 150);
INSERT INTO public.users VALUES (15, 'user_1731952715388', 2, 56);
INSERT INTO public.users VALUES (22, 'user_1731953041649', 5, 278);
INSERT INTO public.users VALUES (14, 'user_1731952715389', 5, 69);
INSERT INTO public.users VALUES (37, 'user_1731953274314', 2, 156);
INSERT INTO public.users VALUES (25, 'user_1731953103797', 2, 762);
INSERT INTO public.users VALUES (24, 'user_1731953103798', 5, 31);
INSERT INTO public.users VALUES (36, 'user_1731953274315', 5, 223);
INSERT INTO public.users VALUES (27, 'user_1731953120761', 2, 76);
INSERT INTO public.users VALUES (26, 'user_1731953120762', 5, 162);
INSERT INTO public.users VALUES (39, 'user_1731953279882', 2, 624);
INSERT INTO public.users VALUES (38, 'user_1731953279883', 5, 303);
INSERT INTO public.users VALUES (40, 'test', 0, NULL);
INSERT INTO public.users VALUES (29, 'user_1731953131451', 2, 97);
INSERT INTO public.users VALUES (28, 'user_1731953131452', 5, 332);
INSERT INTO public.users VALUES (42, 'user_1731953430907', 2, 487);
INSERT INTO public.users VALUES (41, 'user_1731953430908', 5, 77);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
