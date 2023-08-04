--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (54, 18, 20);
INSERT INTO public.games VALUES (55, 19, 946);
INSERT INTO public.games VALUES (56, 19, 1754);
INSERT INTO public.games VALUES (57, 20, 1690);
INSERT INTO public.games VALUES (58, 20, 234);
INSERT INTO public.games VALUES (59, 19, 738);
INSERT INTO public.games VALUES (60, 19, 169);
INSERT INTO public.games VALUES (61, 19, 880);
INSERT INTO public.games VALUES (62, 21, 1802);
INSERT INTO public.games VALUES (63, 21, 270);
INSERT INTO public.games VALUES (64, 22, 624);
INSERT INTO public.games VALUES (65, 22, 56);
INSERT INTO public.games VALUES (66, 21, 1778);
INSERT INTO public.games VALUES (67, 21, 1895);
INSERT INTO public.games VALUES (68, 21, 474);
INSERT INTO public.games VALUES (69, 23, 1630);
INSERT INTO public.games VALUES (70, 23, 1614);
INSERT INTO public.games VALUES (71, 24, 1168);
INSERT INTO public.games VALUES (72, 24, 1572);
INSERT INTO public.games VALUES (73, 23, 40);
INSERT INTO public.games VALUES (74, 23, 915);
INSERT INTO public.games VALUES (75, 23, 790);
INSERT INTO public.games VALUES (76, 25, 1762);
INSERT INTO public.games VALUES (77, 25, 190);
INSERT INTO public.games VALUES (78, 26, 1094);
INSERT INTO public.games VALUES (79, 26, 1660);
INSERT INTO public.games VALUES (80, 25, 736);
INSERT INTO public.games VALUES (81, 25, 1291);
INSERT INTO public.games VALUES (82, 25, 1552);
INSERT INTO public.games VALUES (83, 27, 1386);
INSERT INTO public.games VALUES (84, 27, 370);
INSERT INTO public.games VALUES (85, 28, 444);
INSERT INTO public.games VALUES (86, 28, 222);
INSERT INTO public.games VALUES (87, 27, 1466);
INSERT INTO public.games VALUES (88, 27, 843);
INSERT INTO public.games VALUES (89, 27, 1144);
INSERT INTO public.games VALUES (90, 29, 908);
INSERT INTO public.games VALUES (91, 29, 870);
INSERT INTO public.games VALUES (92, 30, 272);
INSERT INTO public.games VALUES (93, 30, 654);
INSERT INTO public.games VALUES (94, 29, 620);
INSERT INTO public.games VALUES (95, 29, 1999);
INSERT INTO public.games VALUES (96, 29, 694);
INSERT INTO public.games VALUES (97, 31, 496);
INSERT INTO public.games VALUES (98, 31, 206);
INSERT INTO public.games VALUES (99, 32, 1494);
INSERT INTO public.games VALUES (100, 32, 766);
INSERT INTO public.games VALUES (101, 31, 1342);
INSERT INTO public.games VALUES (102, 31, 1659);
INSERT INTO public.games VALUES (103, 31, 256);
INSERT INTO public.games VALUES (104, 33, 1256);
INSERT INTO public.games VALUES (105, 33, 896);
INSERT INTO public.games VALUES (106, 34, 746);
INSERT INTO public.games VALUES (107, 34, 830);
INSERT INTO public.games VALUES (108, 33, 914);
INSERT INTO public.games VALUES (109, 33, 201);
INSERT INTO public.games VALUES (110, 33, 1720);
INSERT INTO public.games VALUES (111, 35, 366);
INSERT INTO public.games VALUES (112, 35, 1904);
INSERT INTO public.games VALUES (113, 36, 1714);
INSERT INTO public.games VALUES (114, 36, 1696);
INSERT INTO public.games VALUES (115, 35, 474);
INSERT INTO public.games VALUES (116, 35, 93);
INSERT INTO public.games VALUES (117, 35, 1508);
INSERT INTO public.games VALUES (118, 37, 870);
INSERT INTO public.games VALUES (119, 37, 1988);
INSERT INTO public.games VALUES (120, 38, 1312);
INSERT INTO public.games VALUES (121, 38, 1278);
INSERT INTO public.games VALUES (122, 37, 520);
INSERT INTO public.games VALUES (123, 37, 241);
INSERT INTO public.games VALUES (124, 37, 1198);
INSERT INTO public.games VALUES (125, 39, 146);
INSERT INTO public.games VALUES (126, 39, 876);
INSERT INTO public.games VALUES (127, 40, 956);
INSERT INTO public.games VALUES (128, 40, 1920);
INSERT INTO public.games VALUES (129, 39, 1710);
INSERT INTO public.games VALUES (130, 39, 1147);
INSERT INTO public.games VALUES (131, 39, 800);
INSERT INTO public.games VALUES (132, 41, 988);
INSERT INTO public.games VALUES (133, 41, 572);
INSERT INTO public.games VALUES (134, 42, 848);
INSERT INTO public.games VALUES (135, 42, 1366);
INSERT INTO public.games VALUES (136, 41, 362);
INSERT INTO public.games VALUES (137, 41, 1365);
INSERT INTO public.games VALUES (138, 41, 376);
INSERT INTO public.games VALUES (139, 43, 698);
INSERT INTO public.games VALUES (140, 43, 1110);
INSERT INTO public.games VALUES (141, 44, 840);
INSERT INTO public.games VALUES (142, 44, 1434);
INSERT INTO public.games VALUES (143, 43, 430);
INSERT INTO public.games VALUES (144, 43, 1785);
INSERT INTO public.games VALUES (145, 43, 446);
INSERT INTO public.games VALUES (146, 45, 934);
INSERT INTO public.games VALUES (147, 45, 1094);
INSERT INTO public.games VALUES (148, 46, 1252);
INSERT INTO public.games VALUES (149, 46, 1960);
INSERT INTO public.games VALUES (150, 45, 440);
INSERT INTO public.games VALUES (151, 45, 1267);
INSERT INTO public.games VALUES (152, 45, 980);
INSERT INTO public.games VALUES (153, 47, 78);
INSERT INTO public.games VALUES (154, 47, 130);
INSERT INTO public.games VALUES (155, 48, 736);
INSERT INTO public.games VALUES (156, 48, 395);
INSERT INTO public.games VALUES (157, 47, 924);
INSERT INTO public.games VALUES (158, 47, 446);
INSERT INTO public.games VALUES (159, 47, 87);
INSERT INTO public.games VALUES (160, 49, 10);
INSERT INTO public.games VALUES (161, 50, 859);
INSERT INTO public.games VALUES (162, 50, 987);
INSERT INTO public.games VALUES (163, 51, 860);
INSERT INTO public.games VALUES (164, 51, 143);
INSERT INTO public.games VALUES (165, 50, 796);
INSERT INTO public.games VALUES (166, 50, 445);
INSERT INTO public.games VALUES (167, 50, 633);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (18, 'Lunakun');
INSERT INTO public.users VALUES (19, 'user_1691166484161');
INSERT INTO public.users VALUES (20, 'user_1691166484160');
INSERT INTO public.users VALUES (21, 'user_1691166723564');
INSERT INTO public.users VALUES (22, 'user_1691166723563');
INSERT INTO public.users VALUES (23, 'user_1691166735942');
INSERT INTO public.users VALUES (24, 'user_1691166735941');
INSERT INTO public.users VALUES (25, 'user_1691166747819');
INSERT INTO public.users VALUES (26, 'user_1691166747818');
INSERT INTO public.users VALUES (27, 'user_1691166753536');
INSERT INTO public.users VALUES (28, 'user_1691166753535');
INSERT INTO public.users VALUES (29, 'user_1691166760715');
INSERT INTO public.users VALUES (30, 'user_1691166760714');
INSERT INTO public.users VALUES (31, 'user_1691166766737');
INSERT INTO public.users VALUES (32, 'user_1691166766736');
INSERT INTO public.users VALUES (33, 'user_1691166772073');
INSERT INTO public.users VALUES (34, 'user_1691166772072');
INSERT INTO public.users VALUES (35, 'user_1691166778189');
INSERT INTO public.users VALUES (36, 'user_1691166778188');
INSERT INTO public.users VALUES (37, 'user_1691166782729');
INSERT INTO public.users VALUES (38, 'user_1691166782728');
INSERT INTO public.users VALUES (39, 'user_1691166788736');
INSERT INTO public.users VALUES (40, 'user_1691166788735');
INSERT INTO public.users VALUES (41, 'user_1691166795291');
INSERT INTO public.users VALUES (42, 'user_1691166795290');
INSERT INTO public.users VALUES (43, 'user_1691167016749');
INSERT INTO public.users VALUES (44, 'user_1691167016748');
INSERT INTO public.users VALUES (45, 'user_1691167176423');
INSERT INTO public.users VALUES (46, 'user_1691167176422');
INSERT INTO public.users VALUES (47, 'user_1691167253407');
INSERT INTO public.users VALUES (48, 'user_1691167253406');
INSERT INTO public.users VALUES (49, 'Fred');
INSERT INTO public.users VALUES (50, 'user_1691168221122');
INSERT INTO public.users VALUES (51, 'user_1691168221121');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 167, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 51, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

