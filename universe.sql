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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text NOT NULL,
    population integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    num_of_craters integer,
    is_madeofcheese boolean NOT NULL,
    planet_id integer
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
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    description text,
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
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    population_id integer NOT NULL,
    name character varying(30) NOT NULL,
    other_species boolean NOT NULL
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_population_id_seq OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types text,
    distance_from_earth numeric(5,2) NOT NULL,
    brightness integer,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 'Spiral', 100000);
INSERT INTO public.galaxy VALUES (2, 'Sombrero', 25, 'Lenticular', 50000);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 13, 'Spiral', 5000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 14, 'Spiral', 40000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 18, 'Spiral', 7000);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 22, 'Irregular', 2000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Phobos', 'The larger of the two moons of Mars', 7, false, 13);
INSERT INTO public.moon VALUES (22, 'Deimos', 'The smaller of the two moons of Mars', 2, false, 13);
INSERT INTO public.moon VALUES (23, 'Ganymede', 'The largest moon of Jupiter', 5, false, 13);
INSERT INTO public.moon VALUES (24, 'Callisto', 'The second largest moon of Jupiter', 3, false, 14);
INSERT INTO public.moon VALUES (25, 'Io', 'The innermost of the four Galilean moons of Jupiter', 8, false, 14);
INSERT INTO public.moon VALUES (26, 'Europa', 'The smallest of the four Galilean moons of Jupiter', 1, false, 14);
INSERT INTO public.moon VALUES (27, 'Titan', 'The largest moon of Saturn', 6, false, 15);
INSERT INTO public.moon VALUES (28, 'Rhea', 'The second largest moon of Saturn', 2, false, 16);
INSERT INTO public.moon VALUES (29, 'Mimas', 'The innermost of the major moons of Saturn', 4, false, 17);
INSERT INTO public.moon VALUES (30, 'Iapetus', 'The outermost of the major moons of Saturn', 9, false, 17);
INSERT INTO public.moon VALUES (31, 'Miranda', 'The innermost of the five major moons of Uranus', 3, false, 18);
INSERT INTO public.moon VALUES (32, 'Ariel', 'The second closest of the five major moons of Uranus', 6, false, 19);
INSERT INTO public.moon VALUES (33, 'Umbriel', 'The third closest of the five major moons of Uranus', 5, false, 20);
INSERT INTO public.moon VALUES (34, 'Titania', 'The fourth closest of the five major moons of Uranus', 7, false, 21);
INSERT INTO public.moon VALUES (35, 'Oberon', 'The outermost of the five major moons of Uranus', 8, false, 22);
INSERT INTO public.moon VALUES (36, 'Triton', 'The largest moon of Neptune', 2, false, 23);
INSERT INTO public.moon VALUES (37, 'Nereid', 'The second largest moon of Neptune', 4, false, 23);
INSERT INTO public.moon VALUES (38, 'Larissa', 'The third largest moon of Neptune', 6, false, 24);
INSERT INTO public.moon VALUES (39, 'Proteus', 'The fourth largest moon of Neptune', 8, false, 24);
INSERT INTO public.moon VALUES (40, 'Naiad', 'The closest moon of Neptune', 3, false, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', true, true, 'Third planet from the Sun', 5);
INSERT INTO public.planet VALUES (14, 'Mars', false, true, 'Fourth planet from the Sun', 5);
INSERT INTO public.planet VALUES (15, 'Jupiter', false, true, 'Fifth planet from the Sun', 5);
INSERT INTO public.planet VALUES (16, 'Saturn', false, true, 'Sixth planet from the Sun', 5);
INSERT INTO public.planet VALUES (17, 'Uranus', false, true, 'Seventh planet from the Sun', 6);
INSERT INTO public.planet VALUES (18, 'Neptune', false, true, 'Eighth planet from the Sun', 7);
INSERT INTO public.planet VALUES (19, 'Eris', false, true, 'Ninth planet from the Sun', 8);
INSERT INTO public.planet VALUES (20, 'Titan', false, true, 'Tenth planet from the Sun', 8);
INSERT INTO public.planet VALUES (21, 'Venus', false, true, 'Second planet from the Sun', 9);
INSERT INTO public.planet VALUES (22, 'Pluto', false, true, 'Eleventh planet from the Sun', 10);
INSERT INTO public.planet VALUES (23, 'Ceres', false, true, 'Twelfth planet from the Sun', 10);
INSERT INTO public.planet VALUES (24, 'Haumea', false, true, 'Thirteenth planet from the Sun', 10);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES (1, 'Lion', false);
INSERT INTO public.population VALUES (2, 'Cheetah', false);
INSERT INTO public.population VALUES (3, 'Giraffe', false);
INSERT INTO public.population VALUES (4, 'Elephant', false);
INSERT INTO public.population VALUES (5, 'Chimpanzee', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sun', 'G-type main-sequence star', 12.00, 8, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'Red dwarf', 4.27, 7, 1);
INSERT INTO public.star VALUES (7, 'Vega', 'Main-sequence star', 25.02, 3, 2);
INSERT INTO public.star VALUES (8, 'Alpha Centauri A', 'P-type main-sequence star', 4.37, 30, 1);
INSERT INTO public.star VALUES (9, 'Sirius A', 'A-type main-sequence star', 8.60, 4, 3);
INSERT INTO public.star VALUES (10, 'Arcturus', 'K-type giant star', 36.71, 5, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: population_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_population_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: population population_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_name_key UNIQUE (name);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_types_key UNIQUE (planet_types);


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

