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
-- Name: cometa; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cometa (
    cometa_id integer NOT NULL,
    name character varying(60) NOT NULL,
    orbit_period integer NOT NULL,
    mass numeric NOT NULL,
    discovered boolean NOT NULL,
    visible boolean NOT NULL,
    composition character varying(60) NOT NULL,
    tail_length integer NOT NULL,
    description text
);


ALTER TABLE public.cometa OWNER TO freecodecamp;

--
-- Name: cometa_cometa_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cometa_cometa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cometa_cometa_id_seq OWNER TO freecodecamp;

--
-- Name: cometa_cometa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cometa_cometa_id_seq OWNED BY public.cometa.cometa_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age numeric NOT NULL,
    spiral boolean NOT NULL,
    visible boolean NOT NULL,
    size integer NOT NULL,
    description character varying(60) NOT NULL,
    number_of_stars integer NOT NULL
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
-- Name: hello; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hello (
    hello_id integer NOT NULL,
    message text NOT NULL,
    name character varying(60) NOT NULL,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    important boolean NOT NULL,
    reviewed boolean NOT NULL,
    rating integer NOT NULL,
    priority_level integer NOT NULL,
    author character varying(60)
);


ALTER TABLE public.hello OWNER TO freecodecamp;

--
-- Name: hello_hello_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hello_hello_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hello_hello_id_seq OWNER TO freecodecamp;

--
-- Name: hello_hello_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hello_hello_id_seq OWNED BY public.hello.hello_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    diameter numeric NOT NULL,
    water_ice boolean NOT NULL,
    planet_id integer NOT NULL,
    geologically_active boolean NOT NULL,
    composition character varying(60) NOT NULL,
    orbital_period integer NOT NULL
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
    name character varying(60) NOT NULL,
    distance_from_star numeric NOT NULL,
    habitable boolean NOT NULL,
    moons integer NOT NULL,
    star_id integer NOT NULL,
    has_rings boolean NOT NULL,
    has_magnetic_field boolean NOT NULL,
    atmosphere character varying(60) NOT NULL,
    orbital_period integer NOT NULL
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
    name character varying(60) NOT NULL,
    mass numeric NOT NULL,
    luminosity numeric NOT NULL,
    age integer NOT NULL,
    galaxy_id integer NOT NULL,
    main_sequence boolean NOT NULL,
    variable boolean NOT NULL,
    spectral_type character varying(10) NOT NULL,
    temperature integer NOT NULL
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
-- Name: cometa cometa_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa ALTER COLUMN cometa_id SET DEFAULT nextval('public.cometa_cometa_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: hello hello_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hello ALTER COLUMN hello_id SET DEFAULT nextval('public.hello_hello_id_seq'::regclass);


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
-- Data for Name: cometa; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cometa VALUES (1, 'Halley', 76, 220000000000000, true, true, 'Ice/Dust', 24000, 'Halley is one of the most famous comets, visible from Earth every 76 years.');
INSERT INTO public.cometa VALUES (2, 'Hale-Bopp', 2533, 13000000000000, true, true, 'Ice/Dust', 30000, 'Hale-Bopp was one of the brightest comets seen for many decades.');
INSERT INTO public.cometa VALUES (3, 'Encke', 3, 34000000000000, true, false, 'Ice/Dust', 15000, 'Encke has one of the shortest known orbits for a comet.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.51, true, true, 100000, 'Our home galaxy.', 1000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.00, true, true, 220000, 'Closest large galaxy.', 1000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 5.00, true, false, 60000, 'Part of the Local Group.', 400000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 10.00, true, true, 80000, 'Famous spiral galaxy.', 300000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9.00, false, false, 50000, 'Bright nucleus.', 500000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 13.00, true, true, 170000, 'Large face-on spiral.', 1000000000);


--
-- Data for Name: hello; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hello VALUES (1, 'ola me costo mucho hacer la tabla las instrucciones sobre exportar son algo ambiguas y las indicaciones de las tablas tambien espero esten
 bien saludos', 'spanish', '2024-08-19 22:13:18.704607', true, false, 2, 4, 'braulio');
INSERT INTO public.hello VALUES (2, 'Hi, it was very difficult for me to make the table. The instructions for exporting are somewhat ambiguous, as are the instructions for the tables. I hope they are okay. Regards.', 'English', '2024-08-19 22:13:18.704607', true, true, 2, 4, 'braulio');
INSERT INTO public.hello VALUES (3, 'If the works are really reviewed, can you please tell me, it s like Santa Claus. I hope they are real and if they are, write to me at this email brauliovargase@gmail.com or are they fake like Santa Claus?', 'ALERTT', '2024-08-19 22:13:18.704607', false, true, 7, 1, 'braulio');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3474.2, true, 3, false, 'Silicates', 27);
INSERT INTO public.moon VALUES (2, 'Phobos', 22.4, false, 4, false, 'Rock', 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.4, false, 4, false, 'Rock', 1);
INSERT INTO public.moon VALUES (4, 'Europa', 3121.6, true, 7, true, 'Ice', 85);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5262.4, true, 7, true, 'Ice/Rock', 172);
INSERT INTO public.moon VALUES (6, 'Io', 3642.6, false, 7, true, 'Sulfur', 42);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821.0, true, 7, false, 'Ice/Rock', 400);
INSERT INTO public.moon VALUES (8, 'Titan', 5150.0, true, 9, true, 'Ice', 16);
INSERT INTO public.moon VALUES (9, 'Rhea', 1528.0, false, 9, false, 'Ice', 5);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1469.0, false, 9, false, 'Ice', 79);
INSERT INTO public.moon VALUES (11, 'Oberon', 1522.8, false, 10, false, 'Ice', 13);
INSERT INTO public.moon VALUES (12, 'Triton', 2706.8, true, 11, true, 'Ice', 6);
INSERT INTO public.moon VALUES (13, 'Charon', 1212.0, true, 12, false, 'Ice', 6);
INSERT INTO public.moon VALUES (14, 'Proxima B-I', 1234.0, false, 5, false, 'Unknown', 10);
INSERT INTO public.moon VALUES (15, 'Proxima C-I', 1234.0, false, 6, false, 'Unknown', 20);
INSERT INTO public.moon VALUES (16, 'Sirius B-I', 1234.0, false, 8, false, 'Unknown', 30);
INSERT INTO public.moon VALUES (17, 'Betelgeuse B-I', 1234.0, false, 9, false, 'Unknown', 40);
INSERT INTO public.moon VALUES (18, 'Rigel B-I', 1234.0, false, 10, false, 'Unknown', 50);
INSERT INTO public.moon VALUES (19, 'Vega B-I', 1234.0, false, 11, false, 'Unknown', 60);
INSERT INTO public.moon VALUES (20, 'Vega C-I', 1234.0, false, 12, false, 'Unknown', 70);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.39, false, 0, 1, false, true, 'None', 88);
INSERT INTO public.planet VALUES (2, 'Venus', 0.72, false, 0, 1, false, true, 'CO2', 225);
INSERT INTO public.planet VALUES (3, 'Earth', 1.0, true, 1, 1, false, true, 'N2/O2', 365);
INSERT INTO public.planet VALUES (4, 'Mars', 1.52, false, 2, 1, false, true, 'CO2', 687);
INSERT INTO public.planet VALUES (5, 'Proxima b', 0.05, true, 0, 3, false, true, 'Unknown', 11);
INSERT INTO public.planet VALUES (6, 'Proxima c', 1.5, false, 0, 3, false, false, 'Unknown', 2000);
INSERT INTO public.planet VALUES (7, 'Betelgeuse b', 10.0, false, 0, 4, false, false, 'Unknown', 5000);
INSERT INTO public.planet VALUES (8, 'Betelgeuse c', 30.0, false, 0, 4, false, false, 'Unknown', 15000);
INSERT INTO public.planet VALUES (9, 'Sirius b', 5.0, true, 1, 2, false, true, 'Unknown', 500);
INSERT INTO public.planet VALUES (10, 'Rigel b', 50.0, false, 0, 5, true, false, 'Unknown', 10000);
INSERT INTO public.planet VALUES (11, 'Vega b', 20.0, true, 2, 6, false, true, 'Unknown', 3000);
INSERT INTO public.planet VALUES (12, 'Vega c', 30.0, false, 1, 6, false, false, 'Unknown', 4000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1.0, 1.0, 4, 1, true, false, 'G2V', 5778);
INSERT INTO public.star VALUES (2, 'Sirius', 2.02, 25.4, 0, 1, true, false, 'A1V', 9940);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1.1, 1.52, 5, 1, true, false, 'G2V', 5790);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 18.0, 126000, 8, 2, false, true, 'M2I', 3500);
INSERT INTO public.star VALUES (5, 'Rigel', 21.0, 120000, 8, 2, false, true, 'B8Ia', 12000);
INSERT INTO public.star VALUES (6, 'Vega', 2.1, 40, 1, 3, true, false, 'A0V', 9602);


--
-- Name: cometa_cometa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cometa_cometa_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: hello_hello_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hello_hello_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cometa cometa_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa
    ADD CONSTRAINT cometa_name_key UNIQUE (name);


--
-- Name: cometa cometa_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa
    ADD CONSTRAINT cometa_pkey PRIMARY KEY (cometa_id);


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
-- Name: hello hello_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hello
    ADD CONSTRAINT hello_name_key UNIQUE (name);


--
-- Name: hello hello_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hello
    ADD CONSTRAINT hello_pkey PRIMARY KEY (hello_id);


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
-- Name: moon moon_planet_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

