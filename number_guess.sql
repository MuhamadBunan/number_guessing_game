--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    number_of_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 563);
INSERT INTO public.games VALUES (2, 2, 563);
INSERT INTO public.games VALUES (3, 1, 963);
INSERT INTO public.games VALUES (4, 1, 865);
INSERT INTO public.games VALUES (5, 1, 597);
INSERT INTO public.games VALUES (6, 3, 760);
INSERT INTO public.games VALUES (7, 4, 488);
INSERT INTO public.games VALUES (8, 3, 481);
INSERT INTO public.games VALUES (9, 3, 345);
INSERT INTO public.games VALUES (10, 3, 84);
INSERT INTO public.games VALUES (11, 6, 8);
INSERT INTO public.games VALUES (12, 7, 209);
INSERT INTO public.games VALUES (13, 7, 33);
INSERT INTO public.games VALUES (14, 8, 914);
INSERT INTO public.games VALUES (15, 8, 348);
INSERT INTO public.games VALUES (16, 7, 479);
INSERT INTO public.games VALUES (17, 7, 56);
INSERT INTO public.games VALUES (18, 7, 240);
INSERT INTO public.games VALUES (19, 9, 200);
INSERT INTO public.games VALUES (20, 9, 134);
INSERT INTO public.games VALUES (21, 10, 233);
INSERT INTO public.games VALUES (22, 10, 841);
INSERT INTO public.games VALUES (23, 9, 307);
INSERT INTO public.games VALUES (24, 9, 85);
INSERT INTO public.games VALUES (25, 9, 160);
INSERT INTO public.games VALUES (26, 11, 300);
INSERT INTO public.games VALUES (27, 11, 23);
INSERT INTO public.games VALUES (28, 12, 394);
INSERT INTO public.games VALUES (29, 12, 42);
INSERT INTO public.games VALUES (30, 11, 534);
INSERT INTO public.games VALUES (31, 11, 214);
INSERT INTO public.games VALUES (32, 11, 119);
INSERT INTO public.games VALUES (33, 13, 107);
INSERT INTO public.games VALUES (34, 13, 328);
INSERT INTO public.games VALUES (35, 14, 171);
INSERT INTO public.games VALUES (36, 14, 782);
INSERT INTO public.games VALUES (37, 13, 648);
INSERT INTO public.games VALUES (38, 13, 685);
INSERT INTO public.games VALUES (39, 13, 104);
INSERT INTO public.games VALUES (40, 15, 829);
INSERT INTO public.games VALUES (41, 15, 759);
INSERT INTO public.games VALUES (42, 16, 617);
INSERT INTO public.games VALUES (43, 16, 575);
INSERT INTO public.games VALUES (44, 15, 601);
INSERT INTO public.games VALUES (45, 15, 611);
INSERT INTO public.games VALUES (46, 15, 928);
INSERT INTO public.games VALUES (47, 17, 646);
INSERT INTO public.games VALUES (48, 17, 660);
INSERT INTO public.games VALUES (49, 18, 444);
INSERT INTO public.games VALUES (50, 18, 231);
INSERT INTO public.games VALUES (51, 17, 514);
INSERT INTO public.games VALUES (52, 17, 912);
INSERT INTO public.games VALUES (53, 17, 587);
INSERT INTO public.games VALUES (54, 19, 32);
INSERT INTO public.games VALUES (55, 19, 879);
INSERT INTO public.games VALUES (56, 20, 137);
INSERT INTO public.games VALUES (57, 20, 887);
INSERT INTO public.games VALUES (58, 19, 566);
INSERT INTO public.games VALUES (59, 19, 318);
INSERT INTO public.games VALUES (60, 19, 478);
INSERT INTO public.games VALUES (61, 21, 693);
INSERT INTO public.games VALUES (62, 21, 659);
INSERT INTO public.games VALUES (63, 22, 25);
INSERT INTO public.games VALUES (64, 22, 893);
INSERT INTO public.games VALUES (65, 21, 326);
INSERT INTO public.games VALUES (66, 21, 864);
INSERT INTO public.games VALUES (67, 21, 583);
INSERT INTO public.games VALUES (68, 23, 70);
INSERT INTO public.games VALUES (69, 23, 593);
INSERT INTO public.games VALUES (70, 24, 168);
INSERT INTO public.games VALUES (71, 24, 722);
INSERT INTO public.games VALUES (72, 23, 406);
INSERT INTO public.games VALUES (73, 23, 881);
INSERT INTO public.games VALUES (74, 23, 325);
INSERT INTO public.games VALUES (75, 25, 873);
INSERT INTO public.games VALUES (76, 25, 244);
INSERT INTO public.games VALUES (77, 26, 529);
INSERT INTO public.games VALUES (78, 26, 837);
INSERT INTO public.games VALUES (79, 25, 724);
INSERT INTO public.games VALUES (80, 25, 540);
INSERT INTO public.games VALUES (81, 25, 618);
INSERT INTO public.games VALUES (82, 27, 639);
INSERT INTO public.games VALUES (83, 27, 933);
INSERT INTO public.games VALUES (84, 28, 729);
INSERT INTO public.games VALUES (85, 28, 218);
INSERT INTO public.games VALUES (86, 27, 879);
INSERT INTO public.games VALUES (87, 27, 988);
INSERT INTO public.games VALUES (88, 27, 967);
INSERT INTO public.games VALUES (89, 29, 43);
INSERT INTO public.games VALUES (90, 29, 109);
INSERT INTO public.games VALUES (91, 30, 961);
INSERT INTO public.games VALUES (92, 30, 994);
INSERT INTO public.games VALUES (93, 29, 755);
INSERT INTO public.games VALUES (94, 29, 40);
INSERT INTO public.games VALUES (95, 29, 169);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1791982222828');
INSERT INTO public.users VALUES (2, 'user_1791982222827');
INSERT INTO public.users VALUES (3, 'user_1791982309300');
INSERT INTO public.users VALUES (4, 'user_1791982309299');
INSERT INTO public.users VALUES (5, 'kkk');
INSERT INTO public.users VALUES (6, 'aaa');
INSERT INTO public.users VALUES (7, 'user_1791990163234');
INSERT INTO public.users VALUES (8, 'user_1791990163233');
INSERT INTO public.users VALUES (9, 'user_1791990237700');
INSERT INTO public.users VALUES (10, 'user_1791990237698');
INSERT INTO public.users VALUES (11, 'user_1791990347362');
INSERT INTO public.users VALUES (12, 'user_1791990347361');
INSERT INTO public.users VALUES (13, 'user_1791990388600');
INSERT INTO public.users VALUES (14, 'user_1791990388599');
INSERT INTO public.users VALUES (15, 'user_1791990462223');
INSERT INTO public.users VALUES (16, 'user_1791990462222');
INSERT INTO public.users VALUES (17, 'user_1791990599781');
INSERT INTO public.users VALUES (18, 'user_1791990599780');
INSERT INTO public.users VALUES (19, 'user_1791990616545');
INSERT INTO public.users VALUES (20, 'user_1791990616544');
INSERT INTO public.users VALUES (21, 'user_1791990675963');
INSERT INTO public.users VALUES (22, 'user_1791990675962');
INSERT INTO public.users VALUES (23, 'user_1791990846749');
INSERT INTO public.users VALUES (24, 'user_1791990846748');
INSERT INTO public.users VALUES (25, 'user_1791990875156');
INSERT INTO public.users VALUES (26, 'user_1791990875155');
INSERT INTO public.users VALUES (27, 'user_1791991003427');
INSERT INTO public.users VALUES (28, 'user_1791991003426');
INSERT INTO public.users VALUES (29, 'user_1791991019271');
INSERT INTO public.users VALUES (30, 'user_1791991019270');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 95, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

