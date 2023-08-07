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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    circumference_in_miles integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: last; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.last (
    last_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.last OWNER TO freecodecamp;

--
-- Name: last_last_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.last_last_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.last_last_id_seq OWNER TO freecodecamp;

--
-- Name: last_last_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.last_last_id_seq OWNED BY public.last.last_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    circumference_in_miles integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    circumference_in_miles integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    circumference_in_miles integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: last last_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last ALTER COLUMN last_id SET DEFAULT nextval('public.last_last_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Zog', 12, 'The galaxy zog', false, true, 15);
INSERT INTO public.galaxy VALUES (2, 'Bet', 18, 'The galaxy bet', false, true, 12);
INSERT INTO public.galaxy VALUES (3, 'Zan', 30, 'The galaxy zan', true, false, 12);
INSERT INTO public.galaxy VALUES (4, 'Xoid', 30, 'The galaxy xoid', true, false, 50);
INSERT INTO public.galaxy VALUES (5, 'Zany', 30, 'The galaxy zany', true, false, 100);
INSERT INTO public.galaxy VALUES (6, 'Tusk', 30, 'The galaxy tusk', false, false, 120);
INSERT INTO public.galaxy VALUES (7, 'Tos', 460, 'The galaxy tos', true, false, 40);
INSERT INTO public.galaxy VALUES (8, 'Can', 820, 'The galaxy can', false, false, 12);
INSERT INTO public.galaxy VALUES (9, 'Bush', 12, 'The galaxy bush', true, true, 124);
INSERT INTO public.galaxy VALUES (10, 'Crash', 35, 'The galaxy crash', false, false, 255);
INSERT INTO public.galaxy VALUES (11, 'Bul', 12, 'The galaxy bul', false, false, 255);
INSERT INTO public.galaxy VALUES (12, 'Ros', 14, 'The galaxy ros', true, true, 2444);
INSERT INTO public.galaxy VALUES (13, 'Eil', 55, 'The galaxy eil', false, true, 2444);
INSERT INTO public.galaxy VALUES (14, 'Tin', 12, 'The galaxy tin', false, true, 2222);
INSERT INTO public.galaxy VALUES (15, 'Power', 340, 'The galaxy power', false, true, 2245);
INSERT INTO public.galaxy VALUES (16, 'Dominus', 2455, 'The galaxy dominus', false, true, 812);
INSERT INTO public.galaxy VALUES (17, 'Revolt', 24444, 'The galaxy revolt', true, false, 12333);
INSERT INTO public.galaxy VALUES (18, 'Trush', 2444, 'The galaxy trush', true, true, 1333);
INSERT INTO public.galaxy VALUES (19, 'Brutus', 2333, 'The galaxy brutus', false, true, 3333);
INSERT INTO public.galaxy VALUES (20, 'Pruis', 2333, 'The galaxy pruis', false, false, 2444);
INSERT INTO public.galaxy VALUES (21, 'Bumo', 2444, 'The galaxy bumo', false, false, 2312);


--
-- Data for Name: last; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.last VALUES (1, 'Tom', 12);
INSERT INTO public.last VALUES (2, 'Harry', 4);
INSERT INTO public.last VALUES (3, 'Josh', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (107, 'Tos', 44, 460, 'The moon tos', true, false, 40);
INSERT INTO public.moon VALUES (108, 'Can', 45, 820, 'The moon can', false, false, 12);
INSERT INTO public.moon VALUES (109, 'Bush', 46, 12, 'The moon bush', true, true, 124);
INSERT INTO public.moon VALUES (110, 'Crash', 47, 35, 'The moon crash', false, false, 255);
INSERT INTO public.moon VALUES (111, 'Bul', 48, 12, 'The moon bul', false, false, 255);
INSERT INTO public.moon VALUES (112, 'Ros', 49, 14, 'The moon ros', true, true, 2444);
INSERT INTO public.moon VALUES (113, 'Eil', 50, 55, 'The moon eil', false, true, 2444);
INSERT INTO public.moon VALUES (114, 'Tin', 51, 12, 'The moon tin', false, true, 2222);
INSERT INTO public.moon VALUES (115, 'Power', 52, 340, 'The moon power', false, true, 2245);
INSERT INTO public.moon VALUES (116, 'Dominus', 53, 2455, 'The moon dominus', false, true, 812);
INSERT INTO public.moon VALUES (117, 'Revolt', 54, 24444, 'The moon revolt', true, false, 12333);
INSERT INTO public.moon VALUES (118, 'Trush', 55, 2444, 'The moon trush', true, true, 1333);
INSERT INTO public.moon VALUES (119, 'Brutus', 56, 2333, 'The moon brutus', false, true, 3333);
INSERT INTO public.moon VALUES (120, 'Pruis', 57, 2333, 'The moon pruis', false, false, 2444);
INSERT INTO public.moon VALUES (121, 'Cosmo', 58, 333, 'The moon Cosmo', false, true, 233);
INSERT INTO public.moon VALUES (122, 'Hexi', 59, 235, 'The moon Hexi', false, false, 244);
INSERT INTO public.moon VALUES (123, 'Dima', 60, 2344, 'The moon dima', true, true, 812);
INSERT INTO public.moon VALUES (124, 'Zai', 61, 233, 'The moon zai', true, true, 444);
INSERT INTO public.moon VALUES (125, 'Ban', 62, 3333, 'The moon ban', true, true, 555);
INSERT INTO public.moon VALUES (126, 'Cansa', 63, 444, 'The moon cansa', true, true, 1222);
INSERT INTO public.moon VALUES (127, 'Morg', 64, 5242, 'The moon morg', false, true, 2333);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (44, 'Tos', 1, 460, 'The planet tos', true, false, 40);
INSERT INTO public.planet VALUES (45, 'Can', 2, 820, 'The planet can', false, false, 12);
INSERT INTO public.planet VALUES (46, 'Bush', 3, 12, 'The planet bush', true, true, 124);
INSERT INTO public.planet VALUES (47, 'Crash', 4, 35, 'The planet crash', false, false, 255);
INSERT INTO public.planet VALUES (48, 'Bul', 5, 12, 'The planet bul', false, false, 255);
INSERT INTO public.planet VALUES (49, 'Ros', 6, 14, 'The planet ros', true, true, 2444);
INSERT INTO public.planet VALUES (50, 'Eil', 7, 55, 'The planet eil', false, true, 2444);
INSERT INTO public.planet VALUES (51, 'Tin', 8, 12, 'The planet tin', false, true, 2222);
INSERT INTO public.planet VALUES (52, 'Power', 9, 340, 'The planet power', false, true, 2245);
INSERT INTO public.planet VALUES (53, 'Dominus', 10, 2455, 'The planet dominus', false, true, 812);
INSERT INTO public.planet VALUES (54, 'Revolt', 11, 24444, 'The planet revolt', true, false, 12333);
INSERT INTO public.planet VALUES (55, 'Trush', 12, 2444, 'The planet trush', true, true, 1333);
INSERT INTO public.planet VALUES (56, 'Brutus', 13, 2333, 'The planet brutus', false, true, 3333);
INSERT INTO public.planet VALUES (57, 'Pruis', 14, 2333, 'The planet pruis', false, false, 2444);
INSERT INTO public.planet VALUES (58, 'Cosmo', 15, 333, 'The planet Cosmo', false, true, 233);
INSERT INTO public.planet VALUES (59, 'Hexi', 16, 235, 'The planet Hexi', false, false, 244);
INSERT INTO public.planet VALUES (60, 'Dima', 17, 2344, 'The planet dima', true, true, 812);
INSERT INTO public.planet VALUES (61, 'Zai', 18, 233, 'The planet zai', true, true, 444);
INSERT INTO public.planet VALUES (62, 'Ban', 19, 3333, 'The planet ban', true, true, 555);
INSERT INTO public.planet VALUES (63, 'Cansa', 20, 444, 'The planet cansa', true, true, 1222);
INSERT INTO public.planet VALUES (64, 'Morg', 21, 5242, 'The planet morg', false, true, 2333);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Hubert', 1, 30, 'The star hubert', true, false, 100);
INSERT INTO public.star VALUES (2, 'Brown', 2, 80, 'The star brown', false, false, 100);
INSERT INTO public.star VALUES (3, 'Caspin', 3, 80, 'The star caspin', false, true, 120);
INSERT INTO public.star VALUES (4, 'Boom', 4, 1120, 'The star boom', true, true, 120);
INSERT INTO public.star VALUES (5, 'Rubin', 5, 1120, 'The star rubin', true, false, 40);
INSERT INTO public.star VALUES (6, 'Col', 6, 560, 'The star col', false, false, 40);
INSERT INTO public.star VALUES (7, 'Hax', 7, 123, 'The star hax', false, false, 1233);
INSERT INTO public.star VALUES (8, 'Tos', 8, 460, 'The star tos', true, false, 40);
INSERT INTO public.star VALUES (9, 'Can', 9, 820, 'The star can', false, false, 12);
INSERT INTO public.star VALUES (10, 'Bush', 10, 12, 'The star bush', true, true, 124);
INSERT INTO public.star VALUES (11, 'Crash', 11, 35, 'The star crash', false, false, 255);
INSERT INTO public.star VALUES (12, 'Bul', 12, 12, 'The star bul', false, false, 255);
INSERT INTO public.star VALUES (13, 'Ros', 13, 14, 'The star ros', true, true, 2444);
INSERT INTO public.star VALUES (14, 'Eil', 14, 55, 'The star eil', false, true, 2444);
INSERT INTO public.star VALUES (15, 'Tin', 15, 12, 'The star tin', false, true, 2222);
INSERT INTO public.star VALUES (16, 'Power', 16, 340, 'The star power', false, true, 2245);
INSERT INTO public.star VALUES (17, 'Dominus', 17, 2455, 'The star dominus', false, true, 812);
INSERT INTO public.star VALUES (18, 'Revolt', 18, 24444, 'The star revolt', true, false, 12333);
INSERT INTO public.star VALUES (19, 'Trush', 19, 2444, 'The star trush', true, true, 1333);
INSERT INTO public.star VALUES (20, 'Brutus', 20, 2333, 'The star brutus', false, true, 3333);
INSERT INTO public.star VALUES (21, 'Pruis', 21, 2333, 'The star pruis', false, false, 2444);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, false);


--
-- Name: last_last_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.last_last_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 127, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 64, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 44, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 21, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: last last_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last
    ADD CONSTRAINT last_name_key UNIQUE (name);


--
-- Name: last last_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last
    ADD CONSTRAINT last_pkey PRIMARY KEY (last_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

