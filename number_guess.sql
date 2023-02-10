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
    guessed boolean,
    guess_num integer,
    player_id integer
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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    guess integer NOT NULL,
    game_id integer,
    player_id integer
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (191, false, 0, 46);
INSERT INTO public.games VALUES (192, false, 0, 46);
INSERT INTO public.games VALUES (179, false, 3, 46);
INSERT INTO public.games VALUES (180, false, 1, 46);
INSERT INTO public.games VALUES (181, false, 1, 46);
INSERT INTO public.games VALUES (182, false, 0, 46);
INSERT INTO public.games VALUES (183, false, 0, 46);
INSERT INTO public.games VALUES (193, false, 0, 46);
INSERT INTO public.games VALUES (194, false, 0, 46);
INSERT INTO public.games VALUES (195, false, 0, 46);
INSERT INTO public.games VALUES (196, false, 0, 46);
INSERT INTO public.games VALUES (184, true, 4, 47);
INSERT INTO public.games VALUES (185, false, 9, 47);
INSERT INTO public.games VALUES (197, false, 8, 49);
INSERT INTO public.games VALUES (210, false, 7, 51);
INSERT INTO public.games VALUES (211, false, 0, 46);
INSERT INTO public.games VALUES (222, false, 6, 56);
INSERT INTO public.games VALUES (186, false, 8, 48);
INSERT INTO public.games VALUES (198, false, 7, 49);
INSERT INTO public.games VALUES (212, false, 8, 53);
INSERT INTO public.games VALUES (187, false, 9, 48);
INSERT INTO public.games VALUES (223, false, 6, 55);
INSERT INTO public.games VALUES (199, false, 8, 50);
INSERT INTO public.games VALUES (188, false, 9, 47);
INSERT INTO public.games VALUES (213, false, 7, 53);
INSERT INTO public.games VALUES (200, false, 7, 50);
INSERT INTO public.games VALUES (224, false, 6, 55);
INSERT INTO public.games VALUES (189, false, 8, 47);
INSERT INTO public.games VALUES (201, false, 6, 49);
INSERT INTO public.games VALUES (190, false, 8, 47);
INSERT INTO public.games VALUES (214, false, 8, 54);
INSERT INTO public.games VALUES (202, false, 6, 49);
INSERT INTO public.games VALUES (225, false, 7, 55);
INSERT INTO public.games VALUES (215, false, 6, 54);
INSERT INTO public.games VALUES (203, false, 7, 49);
INSERT INTO public.games VALUES (226, false, 3, 46);
INSERT INTO public.games VALUES (227, NULL, 354, 46);
INSERT INTO public.games VALUES (228, NULL, 3, 57);
INSERT INTO public.games VALUES (229, NULL, 715, 57);
INSERT INTO public.games VALUES (230, NULL, 362, 58);
INSERT INTO public.games VALUES (204, false, 8, 51);
INSERT INTO public.games VALUES (216, false, 7, 53);
INSERT INTO public.games VALUES (231, NULL, 810, 58);
INSERT INTO public.games VALUES (232, NULL, 438, 57);
INSERT INTO public.games VALUES (233, NULL, 239, 57);
INSERT INTO public.games VALUES (234, NULL, 206, 57);
INSERT INTO public.games VALUES (205, false, 7, 51);
INSERT INTO public.games VALUES (235, NULL, 9, 59);
INSERT INTO public.games VALUES (236, NULL, 771, 59);
INSERT INTO public.games VALUES (217, false, 7, 53);
INSERT INTO public.games VALUES (237, NULL, 182, 60);
INSERT INTO public.games VALUES (238, NULL, 597, 60);
INSERT INTO public.games VALUES (239, NULL, 822, 59);
INSERT INTO public.games VALUES (206, false, 8, 52);
INSERT INTO public.games VALUES (240, NULL, 276, 59);
INSERT INTO public.games VALUES (241, NULL, 860, 59);
INSERT INTO public.games VALUES (242, NULL, 777, 61);
INSERT INTO public.games VALUES (218, false, 7, 53);
INSERT INTO public.games VALUES (243, NULL, 225, 61);
INSERT INTO public.games VALUES (207, false, 7, 52);
INSERT INTO public.games VALUES (244, NULL, 47, 62);
INSERT INTO public.games VALUES (245, NULL, 54, 62);
INSERT INTO public.games VALUES (246, NULL, 489, 61);
INSERT INTO public.games VALUES (247, NULL, 700, 61);
INSERT INTO public.games VALUES (248, NULL, 750, 61);
INSERT INTO public.games VALUES (208, false, 7, 51);
INSERT INTO public.games VALUES (219, false, 8, 55);
INSERT INTO public.games VALUES (209, false, 7, 51);
INSERT INTO public.games VALUES (220, false, 7, 55);
INSERT INTO public.games VALUES (221, false, 8, 56);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (806, 2, 179, 46);
INSERT INTO public.guesses VALUES (807, 3, 179, 46);
INSERT INTO public.guesses VALUES (808, 4, 179, 46);
INSERT INTO public.guesses VALUES (809, 2, 180, 46);
INSERT INTO public.guesses VALUES (810, 12, 181, 46);
INSERT INTO public.guesses VALUES (811, 0, 184, 47);
INSERT INTO public.guesses VALUES (812, 1, 184, 47);
INSERT INTO public.guesses VALUES (813, 2, 184, 47);
INSERT INTO public.guesses VALUES (814, 3, 184, 47);
INSERT INTO public.guesses VALUES (815, 0, 185, 47);
INSERT INTO public.guesses VALUES (816, 1, 185, 47);
INSERT INTO public.guesses VALUES (817, 2, 185, 47);
INSERT INTO public.guesses VALUES (818, 3, 185, 47);
INSERT INTO public.guesses VALUES (819, 4, 185, 47);
INSERT INTO public.guesses VALUES (820, 5, 185, 47);
INSERT INTO public.guesses VALUES (821, 6, 185, 47);
INSERT INTO public.guesses VALUES (822, 7, 185, 47);
INSERT INTO public.guesses VALUES (823, 8, 185, 47);
INSERT INTO public.guesses VALUES (824, 0, 186, 48);
INSERT INTO public.guesses VALUES (825, 1, 186, 48);
INSERT INTO public.guesses VALUES (826, 2, 186, 48);
INSERT INTO public.guesses VALUES (827, 3, 186, 48);
INSERT INTO public.guesses VALUES (828, 4, 186, 48);
INSERT INTO public.guesses VALUES (829, 5, 186, 48);
INSERT INTO public.guesses VALUES (830, 6, 186, 48);
INSERT INTO public.guesses VALUES (831, 7, 186, 48);
INSERT INTO public.guesses VALUES (832, 0, 187, 48);
INSERT INTO public.guesses VALUES (833, 1, 187, 48);
INSERT INTO public.guesses VALUES (834, 2, 187, 48);
INSERT INTO public.guesses VALUES (835, 3, 187, 48);
INSERT INTO public.guesses VALUES (836, 4, 187, 48);
INSERT INTO public.guesses VALUES (837, 5, 187, 48);
INSERT INTO public.guesses VALUES (838, 6, 187, 48);
INSERT INTO public.guesses VALUES (839, 7, 187, 48);
INSERT INTO public.guesses VALUES (840, 8, 187, 48);
INSERT INTO public.guesses VALUES (841, 1, 188, 47);
INSERT INTO public.guesses VALUES (842, 1000, 188, 47);
INSERT INTO public.guesses VALUES (843, 0, 188, 47);
INSERT INTO public.guesses VALUES (844, 1, 188, 47);
INSERT INTO public.guesses VALUES (845, 2, 188, 47);
INSERT INTO public.guesses VALUES (846, 3, 188, 47);
INSERT INTO public.guesses VALUES (847, 4, 188, 47);
INSERT INTO public.guesses VALUES (848, 5, 188, 47);
INSERT INTO public.guesses VALUES (849, 6, 188, 47);
INSERT INTO public.guesses VALUES (850, 0, 189, 47);
INSERT INTO public.guesses VALUES (851, 1, 189, 47);
INSERT INTO public.guesses VALUES (852, 2, 189, 47);
INSERT INTO public.guesses VALUES (853, 3, 189, 47);
INSERT INTO public.guesses VALUES (854, 4, 189, 47);
INSERT INTO public.guesses VALUES (855, 5, 189, 47);
INSERT INTO public.guesses VALUES (856, 6, 189, 47);
INSERT INTO public.guesses VALUES (857, 7, 189, 47);
INSERT INTO public.guesses VALUES (858, 0, 190, 47);
INSERT INTO public.guesses VALUES (859, 1, 190, 47);
INSERT INTO public.guesses VALUES (860, 2, 190, 47);
INSERT INTO public.guesses VALUES (861, 3, 190, 47);
INSERT INTO public.guesses VALUES (862, 4, 190, 47);
INSERT INTO public.guesses VALUES (863, 5, 190, 47);
INSERT INTO public.guesses VALUES (864, 6, 190, 47);
INSERT INTO public.guesses VALUES (865, 7, 190, 47);
INSERT INTO public.guesses VALUES (866, 0, 197, 49);
INSERT INTO public.guesses VALUES (867, 1, 197, 49);
INSERT INTO public.guesses VALUES (868, 2, 197, 49);
INSERT INTO public.guesses VALUES (869, 3, 197, 49);
INSERT INTO public.guesses VALUES (870, 4, 197, 49);
INSERT INTO public.guesses VALUES (871, 5, 197, 49);
INSERT INTO public.guesses VALUES (872, 6, 197, 49);
INSERT INTO public.guesses VALUES (873, 7, 197, 49);
INSERT INTO public.guesses VALUES (874, 0, 198, 49);
INSERT INTO public.guesses VALUES (875, 1, 198, 49);
INSERT INTO public.guesses VALUES (876, 2, 198, 49);
INSERT INTO public.guesses VALUES (877, 3, 198, 49);
INSERT INTO public.guesses VALUES (878, 4, 198, 49);
INSERT INTO public.guesses VALUES (879, 5, 198, 49);
INSERT INTO public.guesses VALUES (880, 6, 198, 49);
INSERT INTO public.guesses VALUES (881, 0, 199, 50);
INSERT INTO public.guesses VALUES (882, 1, 199, 50);
INSERT INTO public.guesses VALUES (883, 2, 199, 50);
INSERT INTO public.guesses VALUES (884, 3, 199, 50);
INSERT INTO public.guesses VALUES (885, 4, 199, 50);
INSERT INTO public.guesses VALUES (886, 5, 199, 50);
INSERT INTO public.guesses VALUES (887, 6, 199, 50);
INSERT INTO public.guesses VALUES (888, 7, 199, 50);
INSERT INTO public.guesses VALUES (889, 0, 200, 50);
INSERT INTO public.guesses VALUES (890, 1, 200, 50);
INSERT INTO public.guesses VALUES (891, 2, 200, 50);
INSERT INTO public.guesses VALUES (892, 3, 200, 50);
INSERT INTO public.guesses VALUES (893, 4, 200, 50);
INSERT INTO public.guesses VALUES (894, 5, 200, 50);
INSERT INTO public.guesses VALUES (895, 6, 200, 50);
INSERT INTO public.guesses VALUES (896, 1, 201, 49);
INSERT INTO public.guesses VALUES (897, 1000, 201, 49);
INSERT INTO public.guesses VALUES (898, 0, 201, 49);
INSERT INTO public.guesses VALUES (899, 1, 201, 49);
INSERT INTO public.guesses VALUES (900, 2, 201, 49);
INSERT INTO public.guesses VALUES (901, 3, 201, 49);
INSERT INTO public.guesses VALUES (902, 0, 202, 49);
INSERT INTO public.guesses VALUES (903, 1, 202, 49);
INSERT INTO public.guesses VALUES (904, 2, 202, 49);
INSERT INTO public.guesses VALUES (905, 3, 202, 49);
INSERT INTO public.guesses VALUES (906, 4, 202, 49);
INSERT INTO public.guesses VALUES (907, 5, 202, 49);
INSERT INTO public.guesses VALUES (908, 0, 203, 49);
INSERT INTO public.guesses VALUES (909, 1, 203, 49);
INSERT INTO public.guesses VALUES (910, 2, 203, 49);
INSERT INTO public.guesses VALUES (911, 3, 203, 49);
INSERT INTO public.guesses VALUES (912, 4, 203, 49);
INSERT INTO public.guesses VALUES (913, 5, 203, 49);
INSERT INTO public.guesses VALUES (914, 6, 203, 49);
INSERT INTO public.guesses VALUES (915, 0, 204, 51);
INSERT INTO public.guesses VALUES (916, 1, 204, 51);
INSERT INTO public.guesses VALUES (917, 2, 204, 51);
INSERT INTO public.guesses VALUES (918, 3, 204, 51);
INSERT INTO public.guesses VALUES (919, 4, 204, 51);
INSERT INTO public.guesses VALUES (920, 5, 204, 51);
INSERT INTO public.guesses VALUES (921, 6, 204, 51);
INSERT INTO public.guesses VALUES (922, 7, 204, 51);
INSERT INTO public.guesses VALUES (923, 0, 205, 51);
INSERT INTO public.guesses VALUES (924, 1, 205, 51);
INSERT INTO public.guesses VALUES (925, 2, 205, 51);
INSERT INTO public.guesses VALUES (926, 3, 205, 51);
INSERT INTO public.guesses VALUES (927, 4, 205, 51);
INSERT INTO public.guesses VALUES (928, 5, 205, 51);
INSERT INTO public.guesses VALUES (929, 6, 205, 51);
INSERT INTO public.guesses VALUES (930, 0, 206, 52);
INSERT INTO public.guesses VALUES (931, 1, 206, 52);
INSERT INTO public.guesses VALUES (932, 2, 206, 52);
INSERT INTO public.guesses VALUES (933, 3, 206, 52);
INSERT INTO public.guesses VALUES (934, 4, 206, 52);
INSERT INTO public.guesses VALUES (935, 5, 206, 52);
INSERT INTO public.guesses VALUES (936, 6, 206, 52);
INSERT INTO public.guesses VALUES (937, 7, 206, 52);
INSERT INTO public.guesses VALUES (938, 0, 207, 52);
INSERT INTO public.guesses VALUES (939, 1, 207, 52);
INSERT INTO public.guesses VALUES (940, 2, 207, 52);
INSERT INTO public.guesses VALUES (941, 3, 207, 52);
INSERT INTO public.guesses VALUES (942, 4, 207, 52);
INSERT INTO public.guesses VALUES (943, 5, 207, 52);
INSERT INTO public.guesses VALUES (944, 6, 207, 52);
INSERT INTO public.guesses VALUES (945, 1, 208, 51);
INSERT INTO public.guesses VALUES (946, 1000, 208, 51);
INSERT INTO public.guesses VALUES (947, 0, 208, 51);
INSERT INTO public.guesses VALUES (948, 1, 208, 51);
INSERT INTO public.guesses VALUES (949, 2, 208, 51);
INSERT INTO public.guesses VALUES (950, 3, 208, 51);
INSERT INTO public.guesses VALUES (951, 4, 208, 51);
INSERT INTO public.guesses VALUES (952, 0, 209, 51);
INSERT INTO public.guesses VALUES (953, 1, 209, 51);
INSERT INTO public.guesses VALUES (954, 2, 209, 51);
INSERT INTO public.guesses VALUES (955, 3, 209, 51);
INSERT INTO public.guesses VALUES (956, 4, 209, 51);
INSERT INTO public.guesses VALUES (957, 5, 209, 51);
INSERT INTO public.guesses VALUES (958, 6, 209, 51);
INSERT INTO public.guesses VALUES (959, 0, 210, 51);
INSERT INTO public.guesses VALUES (960, 1, 210, 51);
INSERT INTO public.guesses VALUES (961, 2, 210, 51);
INSERT INTO public.guesses VALUES (962, 3, 210, 51);
INSERT INTO public.guesses VALUES (963, 4, 210, 51);
INSERT INTO public.guesses VALUES (964, 5, 210, 51);
INSERT INTO public.guesses VALUES (965, 6, 210, 51);
INSERT INTO public.guesses VALUES (966, 0, 212, 53);
INSERT INTO public.guesses VALUES (967, 1, 212, 53);
INSERT INTO public.guesses VALUES (968, 2, 212, 53);
INSERT INTO public.guesses VALUES (969, 3, 212, 53);
INSERT INTO public.guesses VALUES (970, 4, 212, 53);
INSERT INTO public.guesses VALUES (971, 5, 212, 53);
INSERT INTO public.guesses VALUES (972, 6, 212, 53);
INSERT INTO public.guesses VALUES (973, 7, 212, 53);
INSERT INTO public.guesses VALUES (974, 0, 213, 53);
INSERT INTO public.guesses VALUES (975, 1, 213, 53);
INSERT INTO public.guesses VALUES (976, 2, 213, 53);
INSERT INTO public.guesses VALUES (977, 3, 213, 53);
INSERT INTO public.guesses VALUES (978, 4, 213, 53);
INSERT INTO public.guesses VALUES (979, 5, 213, 53);
INSERT INTO public.guesses VALUES (980, 6, 213, 53);
INSERT INTO public.guesses VALUES (981, 0, 214, 54);
INSERT INTO public.guesses VALUES (982, 1, 214, 54);
INSERT INTO public.guesses VALUES (983, 2, 214, 54);
INSERT INTO public.guesses VALUES (984, 3, 214, 54);
INSERT INTO public.guesses VALUES (985, 4, 214, 54);
INSERT INTO public.guesses VALUES (986, 5, 214, 54);
INSERT INTO public.guesses VALUES (987, 6, 214, 54);
INSERT INTO public.guesses VALUES (988, 7, 214, 54);
INSERT INTO public.guesses VALUES (989, 0, 215, 54);
INSERT INTO public.guesses VALUES (990, 1, 215, 54);
INSERT INTO public.guesses VALUES (991, 2, 215, 54);
INSERT INTO public.guesses VALUES (992, 3, 215, 54);
INSERT INTO public.guesses VALUES (993, 4, 215, 54);
INSERT INTO public.guesses VALUES (994, 5, 215, 54);
INSERT INTO public.guesses VALUES (995, 1, 216, 53);
INSERT INTO public.guesses VALUES (996, 1000, 216, 53);
INSERT INTO public.guesses VALUES (997, 0, 216, 53);
INSERT INTO public.guesses VALUES (998, 1, 216, 53);
INSERT INTO public.guesses VALUES (999, 2, 216, 53);
INSERT INTO public.guesses VALUES (1000, 3, 216, 53);
INSERT INTO public.guesses VALUES (1001, 4, 216, 53);
INSERT INTO public.guesses VALUES (1002, 0, 217, 53);
INSERT INTO public.guesses VALUES (1003, 1, 217, 53);
INSERT INTO public.guesses VALUES (1004, 2, 217, 53);
INSERT INTO public.guesses VALUES (1005, 3, 217, 53);
INSERT INTO public.guesses VALUES (1006, 4, 217, 53);
INSERT INTO public.guesses VALUES (1007, 5, 217, 53);
INSERT INTO public.guesses VALUES (1008, 6, 217, 53);
INSERT INTO public.guesses VALUES (1009, 0, 218, 53);
INSERT INTO public.guesses VALUES (1010, 1, 218, 53);
INSERT INTO public.guesses VALUES (1011, 2, 218, 53);
INSERT INTO public.guesses VALUES (1012, 3, 218, 53);
INSERT INTO public.guesses VALUES (1013, 4, 218, 53);
INSERT INTO public.guesses VALUES (1014, 5, 218, 53);
INSERT INTO public.guesses VALUES (1015, 6, 218, 53);
INSERT INTO public.guesses VALUES (1016, 0, 219, 55);
INSERT INTO public.guesses VALUES (1017, 1, 219, 55);
INSERT INTO public.guesses VALUES (1018, 2, 219, 55);
INSERT INTO public.guesses VALUES (1019, 3, 219, 55);
INSERT INTO public.guesses VALUES (1020, 4, 219, 55);
INSERT INTO public.guesses VALUES (1021, 5, 219, 55);
INSERT INTO public.guesses VALUES (1022, 6, 219, 55);
INSERT INTO public.guesses VALUES (1023, 7, 219, 55);
INSERT INTO public.guesses VALUES (1024, 0, 220, 55);
INSERT INTO public.guesses VALUES (1025, 1, 220, 55);
INSERT INTO public.guesses VALUES (1026, 2, 220, 55);
INSERT INTO public.guesses VALUES (1027, 3, 220, 55);
INSERT INTO public.guesses VALUES (1028, 4, 220, 55);
INSERT INTO public.guesses VALUES (1029, 5, 220, 55);
INSERT INTO public.guesses VALUES (1030, 6, 220, 55);
INSERT INTO public.guesses VALUES (1031, 0, 221, 56);
INSERT INTO public.guesses VALUES (1032, 1, 221, 56);
INSERT INTO public.guesses VALUES (1033, 2, 221, 56);
INSERT INTO public.guesses VALUES (1034, 3, 221, 56);
INSERT INTO public.guesses VALUES (1035, 4, 221, 56);
INSERT INTO public.guesses VALUES (1036, 5, 221, 56);
INSERT INTO public.guesses VALUES (1037, 6, 221, 56);
INSERT INTO public.guesses VALUES (1038, 7, 221, 56);
INSERT INTO public.guesses VALUES (1039, 0, 222, 56);
INSERT INTO public.guesses VALUES (1040, 1, 222, 56);
INSERT INTO public.guesses VALUES (1041, 2, 222, 56);
INSERT INTO public.guesses VALUES (1042, 3, 222, 56);
INSERT INTO public.guesses VALUES (1043, 4, 222, 56);
INSERT INTO public.guesses VALUES (1044, 5, 222, 56);
INSERT INTO public.guesses VALUES (1045, 1, 223, 55);
INSERT INTO public.guesses VALUES (1046, 1000, 223, 55);
INSERT INTO public.guesses VALUES (1047, 0, 223, 55);
INSERT INTO public.guesses VALUES (1048, 1, 223, 55);
INSERT INTO public.guesses VALUES (1049, 2, 223, 55);
INSERT INTO public.guesses VALUES (1050, 3, 223, 55);
INSERT INTO public.guesses VALUES (1051, 0, 224, 55);
INSERT INTO public.guesses VALUES (1052, 1, 224, 55);
INSERT INTO public.guesses VALUES (1053, 2, 224, 55);
INSERT INTO public.guesses VALUES (1054, 3, 224, 55);
INSERT INTO public.guesses VALUES (1055, 4, 224, 55);
INSERT INTO public.guesses VALUES (1056, 5, 224, 55);
INSERT INTO public.guesses VALUES (1057, 0, 225, 55);
INSERT INTO public.guesses VALUES (1058, 1, 225, 55);
INSERT INTO public.guesses VALUES (1059, 2, 225, 55);
INSERT INTO public.guesses VALUES (1060, 3, 225, 55);
INSERT INTO public.guesses VALUES (1061, 4, 225, 55);
INSERT INTO public.guesses VALUES (1062, 5, 225, 55);
INSERT INTO public.guesses VALUES (1063, 6, 225, 55);
INSERT INTO public.guesses VALUES (1064, 2, 226, 46);
INSERT INTO public.guesses VALUES (1065, 3, 226, 46);
INSERT INTO public.guesses VALUES (1066, 234, 226, 46);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (46, 'Tom');
INSERT INTO public.players VALUES (47, 'user_1676055453079');
INSERT INTO public.players VALUES (48, 'user_1676055453078');
INSERT INTO public.players VALUES (49, 'user_1676056434531');
INSERT INTO public.players VALUES (50, 'user_1676056434530');
INSERT INTO public.players VALUES (51, 'user_1676056811031');
INSERT INTO public.players VALUES (52, 'user_1676056811030');
INSERT INTO public.players VALUES (53, 'user_1676057317830');
INSERT INTO public.players VALUES (54, 'user_1676057317829');
INSERT INTO public.players VALUES (55, 'user_1676057384171');
INSERT INTO public.players VALUES (56, 'user_1676057384170');
INSERT INTO public.players VALUES (57, 'user_1676061250282');
INSERT INTO public.players VALUES (58, 'user_1676061250281');
INSERT INTO public.players VALUES (59, 'user_1676061339821');
INSERT INTO public.players VALUES (60, 'user_1676061339820');
INSERT INTO public.players VALUES (61, 'user_1676061455446');
INSERT INTO public.players VALUES (62, 'user_1676061455445');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 248, true);


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 1066, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 62, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- Name: guesses guesses_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(game_id);


--
-- Name: guesses guesses_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--


