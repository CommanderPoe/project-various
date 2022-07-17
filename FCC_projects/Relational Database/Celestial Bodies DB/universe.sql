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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(20) NOT NULL,
    continent_name character varying(20),
    pop_mil integer,
    capital_city text,
    country_rank integer,
    planet_id integer
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    rank integer,
    power numeric,
    reachable boolean,
    mainstar text,
    satellite boolean,
    stars_amount integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    rank integer,
    planet_id integer,
    discoverer text,
    amt integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    rank integer,
    star_id integer,
    countries integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    rank integer,
    galaxy_id integer,
    years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (2, 'Rocks10', NULL, NULL, NULL, 1, 6);
INSERT INTO public.country VALUES (3, 'Tocks', NULL, NULL, NULL, 3, 10);
INSERT INTO public.country VALUES (1, 'XXX', 'Exxes33', 5, NULL, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 3, 99, false, '51 And', false, 1000000);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 1, 30, false, 'Bug', true, 1500);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 3, 99, true, 'Sun', false, 999999);
INSERT INTO public.galaxy VALUES (4, 'Condor', 2, 77, false, 'Pavo', false, 568200);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic', 3, 88, true, 'Dorado', false, 1520855);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic', 3, 81, true, 'Tucana', false, 170900);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titania', 2, 1, 'Hermus Lizard', NULL);
INSERT INTO public.moon VALUES (2, 'Oberon', 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Umbriel', 2, 2, 'Pete Leek', NULL);
INSERT INTO public.moon VALUES (4, 'Ariel', 3, 3, 'Sugma', NULL);
INSERT INTO public.moon VALUES (5, 'Miranda', 2, 4, 'Etcher Silver', NULL);
INSERT INTO public.moon VALUES (6, 'Phuck', 1, 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Syco', 2, 7, 'Erickson Son', NULL);
INSERT INTO public.moon VALUES (8, 'Portia', 3, 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Julieta', 2, 9, 'Milly Mi', NULL);
INSERT INTO public.moon VALUES (10, 'Belonda', 1, 9, 'Rick', NULL);
INSERT INTO public.moon VALUES (11, 'Cressida', 1, 12, 'Phil', NULL);
INSERT INTO public.moon VALUES (12, 'Rosa', 1, 13, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Desdmond', 2, 14, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Dimmin', 3, 15, 'Electrik', NULL);
INSERT INTO public.moon VALUES (15, 'Ilitri', 3, 15, 'Pedro Paco', NULL);
INSERT INTO public.moon VALUES (16, 'Prospero', 2, 16, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Setebos', 2, 17, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Franki', 1, 18, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Ernie', 2, 19, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Margi', 3, 20, 'Melissa Thumb', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'And 51', 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'And 66', 1, NULL, 15);
INSERT INTO public.planet VALUES (3, 'Roto:2', 2, NULL, 288);
INSERT INTO public.planet VALUES (4, '66', 2, 2, NULL);
INSERT INTO public.planet VALUES (5, '67', 1, 2, NULL);
INSERT INTO public.planet VALUES (6, '59', 1, 3, 59);
INSERT INTO public.planet VALUES (7, '60', 1, 3, 60);
INSERT INTO public.planet VALUES (8, 'Pinpi', 1, 4, NULL);
INSERT INTO public.planet VALUES (9, 'Verdie', 2, 5, 100);
INSERT INTO public.planet VALUES (10, 'Fliyi', 1, 6, NULL);
INSERT INTO public.planet VALUES (11, 'Coolio33', 3, NULL, 297);
INSERT INTO public.planet VALUES (12, 'Troski35', 1, 7, NULL);
INSERT INTO public.planet VALUES (13, 'Pinpiss', 3, 7, NULL);
INSERT INTO public.planet VALUES (14, 'Xiensa', 2, 8, NULL);
INSERT INTO public.planet VALUES (15, 'Michintao', 1, 9, 601);
INSERT INTO public.planet VALUES (16, 'Floyd66', 3, NULL, 999);
INSERT INTO public.planet VALUES (17, 'P-900', 3, 10, 900);
INSERT INTO public.planet VALUES (18, 'P-901', 1, 10, NULL);
INSERT INTO public.planet VALUES (19, 'N-1', 1, 11, 21);
INSERT INTO public.planet VALUES (20, 'N-2', 1, 11, 21);
INSERT INTO public.planet VALUES (21, 'Z33', 1, 12, NULL);
INSERT INTO public.planet VALUES (22, 'Z34', 1, 12, NULL);
INSERT INTO public.planet VALUES (23, 'Fenix1', 3, 13, 155);
INSERT INTO public.planet VALUES (24, 'Filkos', 3, 13, NULL);
INSERT INTO public.planet VALUES (25, 'XY77', 1, 14, 60);
INSERT INTO public.planet VALUES (26, 'XY78', 1, 14, 60);
INSERT INTO public.planet VALUES (27, 'Phi-1', 3, 15, 10);
INSERT INTO public.planet VALUES (28, 'Phi-2', 1, 15, 10);
INSERT INTO public.planet VALUES (29, 'Nulls300', 1, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'Nulls3000', 3, NULL, 3000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '50 And', 3, 1, 174);
INSERT INTO public.star VALUES (2, '65 And', 1, 1, 345);
INSERT INTO public.star VALUES (3, '58 And', 1, 1, 198);
INSERT INTO public.star VALUES (4, 'Escarabajo', 1, 2, 757);
INSERT INTO public.star VALUES (5, 'Hormiga', 1, 2, 666);
INSERT INTO public.star VALUES (6, 'Abejorro', 2, 2, 798);
INSERT INTO public.star VALUES (7, 'Barnards', 3, 3, 6);
INSERT INTO public.star VALUES (8, 'Tau Ceti', 3, 3, 12);
INSERT INTO public.star VALUES (9, 'YZ Ceti', 2, 3, 12);
INSERT INTO public.star VALUES (10, 'AGN', 1, 4, 4970);
INSERT INTO public.star VALUES (11, 'NGC 6872', 1, 4, NULL);
INSERT INTO public.star VALUES (12, 'NGC 1854', 2, 5, 135000);
INSERT INTO public.star VALUES (13, 'NGC 265', 2, 6, NULL);
INSERT INTO public.star VALUES (14, 'NGC 290', 1, 6, NULL);
INSERT INTO public.star VALUES (15, 'NGC 346', 1, 6, NULL);


--
-- Name: galaxy constraint_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_pk UNIQUE (name);


--
-- Name: country countries_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);


--
-- Name: country country_id_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_id_pk UNIQUE (country_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: country country_constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_constraint_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constraint_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constraint_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constraint_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

