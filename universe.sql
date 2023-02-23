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
    name character varying NOT NULL,
    galaxy_num integer,
    description text,
    has_des boolean
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
-- Name: listoftable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.listoftable (
    listoftable_id integer NOT NULL,
    name character varying NOT NULL,
    foreign_key character varying
);


ALTER TABLE public.listoftable OWNER TO freecodecamp;

--
-- Name: listoftable_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.listoftable_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listoftable_table_id_seq OWNER TO freecodecamp;

--
-- Name: listoftable_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.listoftable_table_id_seq OWNED BY public.listoftable.listoftable_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    moon_num integer,
    planet_id integer,
    description text
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    planet_num integer,
    description text,
    has_moon boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_num numeric,
    near_to_earth boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: listoftable listoftable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.listoftable ALTER COLUMN listoftable_id SET DEFAULT nextval('public.listoftable_table_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 'DIAMETER : 1000000ly', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 'DIMETER :220000ly', true);
INSERT INTO public.galaxy VALUES (4, 'LMC', 3, 'DIMETER :14000y', true);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 4, 'DIAMETER :110000ly', true);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', 5, 'DIAMETER :100000ly', true);
INSERT INTO public.galaxy VALUES (7, 'Pin Galaxy', 6, 'DIAMETER :1700000ly', true);


--
-- Data for Name: listoftable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.listoftable VALUES (1, 'galaxy', 'no_fkey');
INSERT INTO public.listoftable VALUES (2, 'star', 'galaxy_id');
INSERT INTO public.listoftable VALUES (3, 'planet', 'star_id');
INSERT INTO public.listoftable VALUES (4, 'moon', 'planet_id');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', 1, 3, 'Earths only natural stelite');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 4, 'Phobos is the larger of Mars two moons. It orbits Mars three times a day');
INSERT INTO public.moon VALUES (3, 'Deimos', 3, 4, 'Deimos is the smaller of Mars two moons. It orbits Mars whiels around Mars every 30 hours');
INSERT INTO public.moon VALUES (4, 'Adrastea', 4, 5, 'Adrastea was discovred in July 1979 by the Voyager science team');
INSERT INTO public.moon VALUES (5, 'Casllisto', 5, 5, 'Casllisto is the most heavily cratered object in our solar system');
INSERT INTO public.moon VALUES (6, 'Dia', 6, 5, 'Dia has a prograde orbit and a radious of about 1.2 miles');
INSERT INTO public.moon VALUES (7, 'Eirene', 7, 5, 'Eirene was discovred in Fed 6 2003, by Scott S.Sheppard, David c.Jewitt and Jan T, Kleyna');
INSERT INTO public.moon VALUES (8, 'Kore', 8, 5, 'Kore is considered a member of Pasiphae group, a family of Jovian satellites');
INSERT INTO public.moon VALUES (9, 'Atlas', 9, 6, 'Atlas was discovered in 1980 by R. Terrile and the Voyager 1 team from photographs taken during its encounter with Saturn.');
INSERT INTO public.moon VALUES (10, 'Bergelmir', 10, 6, 'Bergelmir was discovered on Drc 12 2004.');
INSERT INTO public.moon VALUES (11, 'Calypso', 11, 6, 'Calypso was discovered by D.Pascu, P. K Seidelmann, W. Baum , and D. Currie in March 1980');
INSERT INTO public.moon VALUES (12, 'Daphis', 12, 6, 'Daphnis was discovered by the Cassini mission tean on 1 May 2005');
INSERT INTO public.moon VALUES (13, 'Titan', 13, 6, 'Saturn s largest moon, Titan has an earth like cycle off liquids flowing across its surface');
INSERT INTO public.moon VALUES (14, 'Ferdinand', 14, 7, 'Ferdinan was discovered on Aug. 13,2001 by Dan Milisavlijevic, Matthew J.Holman, John J.Kavelaars , and Tommy Grav.');
INSERT INTO public.moon VALUES (15, 'Juliet', 15, 7, 'Juliet was discovered on Jan. 3, 1986 in images taken by Voyager 2.');
INSERT INTO public.moon VALUES (16, 'Mab', 16, 7, 'Mab was discovered on Aug. 23, 2003 by Mark R. Showalter and Jack J. Lissauer.');
INSERT INTO public.moon VALUES (17, 'Oberon', 17, 7, 'Oberon was discovered in Jan. 11,1787 by William Herschel');
INSERT INTO public.moon VALUES (18, 'Naiad', 18, 8, 'Naiad was the last moon to be discovered during the Vayager 2 flyby in September 1989.');
INSERT INTO public.moon VALUES (19, 'Sao', 19, 8, 'Sao was discovered Aug. 14, 2002 by Tommy Grav, Matthew J. Holman, John J. Kavelaars, Wesley C. Fraser, and Dan Milisavljevic.');
INSERT INTO public.moon VALUES (20, 'Thalassa', 20, 8, 'Thalassa was discovered in Aug. 1989 in images taken by Voyager 2.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 3, 'Well that is were we are', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 'Red planet', true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 'Twice as massive as other planet', true, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 'Ring planet', true, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 'Rotates at 90 degree angle from the plane od its orbit', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 'Dark, cold and whipped by supersonic winds', true, 1);
INSERT INTO public.planet VALUES (9, 'No Where', 9, 'Planet made of celestial head', false, 7);
INSERT INTO public.planet VALUES (10, 'Sakaar', 10, 'Thor Ragnarok', false, 7);
INSERT INTO public.planet VALUES (11, 'Eco', 11, 'Gardians of the galexy vol 2', false, 7);
INSERT INTO public.planet VALUES (12, 'Titan', 12, 'Planet ruled by Thanos', false, 7);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Smallest planet in solar system', false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 'Venus spins slowly in opposite direction', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 1);
INSERT INTO public.star VALUES (2, 'Pistol Star', 2, false, 1);
INSERT INTO public.star VALUES (3, 'RW Cygni', 3, false, 1);
INSERT INTO public.star VALUES (4, 'Vega', 4, true, 1);
INSERT INTO public.star VALUES (5, 'WHO G64', 5, false, 1);
INSERT INTO public.star VALUES (6, 'Alpha Andromedae', 6, false, 2);
INSERT INTO public.star VALUES (7, 'RDJ', 7, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: listoftable_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.listoftable_table_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 38, true);


--
-- Name: galaxy galaxy_galaxy_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_num_key UNIQUE (galaxy_num);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: listoftable listoftable_foreign_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.listoftable
    ADD CONSTRAINT listoftable_foreign_key_key UNIQUE (foreign_key);


--
-- Name: listoftable listoftable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.listoftable
    ADD CONSTRAINT listoftable_name_key UNIQUE (name);


--
-- Name: listoftable listoftable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.listoftable
    ADD CONSTRAINT listoftable_pkey PRIMARY KEY (listoftable_id);


--
-- Name: moon moon_moon_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_num_key UNIQUE (moon_num);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_num_key UNIQUE (planet_num);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_num_key UNIQUE (star_num);


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

