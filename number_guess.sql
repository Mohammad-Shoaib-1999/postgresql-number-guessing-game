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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 221);
INSERT INTO public.games VALUES (2, 1, 788);
INSERT INTO public.games VALUES (3, 2, 428);
INSERT INTO public.games VALUES (4, 2, 802);
INSERT INTO public.games VALUES (5, 1, 645);
INSERT INTO public.games VALUES (6, 1, 368);
INSERT INTO public.games VALUES (7, 1, 974);
INSERT INTO public.games VALUES (8, 3, 732);
INSERT INTO public.games VALUES (9, 3, 307);
INSERT INTO public.games VALUES (10, 4, 187);
INSERT INTO public.games VALUES (11, 4, 527);
INSERT INTO public.games VALUES (12, 3, 450);
INSERT INTO public.games VALUES (13, 3, 617);
INSERT INTO public.games VALUES (14, 3, 858);
INSERT INTO public.games VALUES (15, 5, 992);
INSERT INTO public.games VALUES (16, 5, 196);
INSERT INTO public.games VALUES (17, 6, 508);
INSERT INTO public.games VALUES (18, 6, 819);
INSERT INTO public.games VALUES (19, 5, 863);
INSERT INTO public.games VALUES (20, 5, 994);
INSERT INTO public.games VALUES (21, 5, 52);
INSERT INTO public.games VALUES (22, 11, 10);
INSERT INTO public.games VALUES (23, 12, 6);
INSERT INTO public.games VALUES (24, 11, 8);
INSERT INTO public.games VALUES (25, 13, 497);
INSERT INTO public.games VALUES (26, 13, 580);
INSERT INTO public.games VALUES (27, 14, 32);
INSERT INTO public.games VALUES (28, 14, 323);
INSERT INTO public.games VALUES (29, 13, 244);
INSERT INTO public.games VALUES (30, 13, 650);
INSERT INTO public.games VALUES (31, 13, 888);
INSERT INTO public.games VALUES (32, 15, 31);
INSERT INTO public.games VALUES (33, 15, 942);
INSERT INTO public.games VALUES (34, 16, 731);
INSERT INTO public.games VALUES (35, 16, 126);
INSERT INTO public.games VALUES (36, 15, 261);
INSERT INTO public.games VALUES (37, 15, 72);
INSERT INTO public.games VALUES (38, 15, 959);
INSERT INTO public.games VALUES (39, 17, 529);
INSERT INTO public.games VALUES (40, 17, 436);
INSERT INTO public.games VALUES (41, 18, 550);
INSERT INTO public.games VALUES (42, 18, 893);
INSERT INTO public.games VALUES (43, 17, 955);
INSERT INTO public.games VALUES (44, 17, 784);
INSERT INTO public.games VALUES (45, 17, 568);
INSERT INTO public.games VALUES (46, 19, 656);
INSERT INTO public.games VALUES (47, 19, 81);
INSERT INTO public.games VALUES (48, 20, 520);
INSERT INTO public.games VALUES (49, 20, 82);
INSERT INTO public.games VALUES (50, 19, 95);
INSERT INTO public.games VALUES (51, 19, 164);
INSERT INTO public.games VALUES (52, 19, 511);
INSERT INTO public.games VALUES (53, 21, 350);
INSERT INTO public.games VALUES (54, 21, 915);
INSERT INTO public.games VALUES (55, 22, 786);
INSERT INTO public.games VALUES (56, 22, 415);
INSERT INTO public.games VALUES (57, 21, 884);
INSERT INTO public.games VALUES (58, 21, 281);
INSERT INTO public.games VALUES (59, 21, 280);
INSERT INTO public.games VALUES (60, 23, 490);
INSERT INTO public.games VALUES (61, 23, 572);
INSERT INTO public.games VALUES (62, 24, 787);
INSERT INTO public.games VALUES (63, 24, 268);
INSERT INTO public.games VALUES (64, 23, 133);
INSERT INTO public.games VALUES (65, 23, 151);
INSERT INTO public.games VALUES (66, 23, 383);
INSERT INTO public.games VALUES (67, 25, 538);
INSERT INTO public.games VALUES (68, 25, 534);
INSERT INTO public.games VALUES (69, 26, 540);
INSERT INTO public.games VALUES (70, 26, 762);
INSERT INTO public.games VALUES (71, 25, 500);
INSERT INTO public.games VALUES (72, 25, 490);
INSERT INTO public.games VALUES (73, 25, 211);
INSERT INTO public.games VALUES (74, 27, 221);
INSERT INTO public.games VALUES (75, 27, 958);
INSERT INTO public.games VALUES (76, 28, 811);
INSERT INTO public.games VALUES (77, 28, 766);
INSERT INTO public.games VALUES (78, 27, 601);
INSERT INTO public.games VALUES (79, 27, 117);
INSERT INTO public.games VALUES (80, 27, 129);
INSERT INTO public.games VALUES (81, 29, 432);
INSERT INTO public.games VALUES (82, 29, 790);
INSERT INTO public.games VALUES (83, 30, 240);
INSERT INTO public.games VALUES (84, 30, 380);
INSERT INTO public.games VALUES (85, 29, 463);
INSERT INTO public.games VALUES (86, 29, 710);
INSERT INTO public.games VALUES (87, 29, 582);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1711877107011');
INSERT INTO public.users VALUES (2, 'user_1711877107010');
INSERT INTO public.users VALUES (3, 'user_1711877136312');
INSERT INTO public.users VALUES (4, 'user_1711877136311');
INSERT INTO public.users VALUES (5, 'user_1711877232869');
INSERT INTO public.users VALUES (6, 'user_1711877232868');
INSERT INTO public.users VALUES (7, 'user_1711878633483');
INSERT INTO public.users VALUES (8, 'user_1711878633482');
INSERT INTO public.users VALUES (9, 'user_1711878695744');
INSERT INTO public.users VALUES (10, 'user_1711878695743');
INSERT INTO public.users VALUES (11, 'Mohamad');
INSERT INTO public.users VALUES (12, 'Shoaib');
INSERT INTO public.users VALUES (13, 'user_1711879258022');
INSERT INTO public.users VALUES (14, 'user_1711879258021');
INSERT INTO public.users VALUES (15, 'user_1711879429148');
INSERT INTO public.users VALUES (16, 'user_1711879429147');
INSERT INTO public.users VALUES (17, 'user_1711879572230');
INSERT INTO public.users VALUES (18, 'user_1711879572229');
INSERT INTO public.users VALUES (19, 'user_1711879991024');
INSERT INTO public.users VALUES (20, 'user_1711879991023');
INSERT INTO public.users VALUES (21, 'user_1711880018720');
INSERT INTO public.users VALUES (22, 'user_1711880018719');
INSERT INTO public.users VALUES (23, 'user_1711880085546');
INSERT INTO public.users VALUES (24, 'user_1711880085545');
INSERT INTO public.users VALUES (25, 'user_1711880124558');
INSERT INTO public.users VALUES (26, 'user_1711880124557');
INSERT INTO public.users VALUES (27, 'user_1711880684434');
INSERT INTO public.users VALUES (28, 'user_1711880684433');
INSERT INTO public.users VALUES (29, 'user_1711880731533');
INSERT INTO public.users VALUES (30, 'user_1711880731532');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 87, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

