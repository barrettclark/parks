--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: reporting; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA reporting;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    fname character varying,
    lname character varying,
    color character varying,
    payload jsonb,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


SET search_path = reporting, pg_catalog;

--
-- Name: tenks; Type: TABLE; Schema: reporting; Owner: -
--

CREATE TABLE tenks (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    unique1 integer,
    unique2 integer,
    two integer,
    four integer,
    ten integer,
    twenty integer,
    hundred integer,
    thousand integer,
    twothousand integer,
    fivethous integer,
    tenthous integer,
    odd integer,
    even integer,
    stringu1 character varying,
    stringu2 character varying,
    string4 character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


SET search_path = public, pg_catalog;

--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


SET search_path = reporting, pg_catalog;

--
-- Name: tenks tenks_pkey; Type: CONSTRAINT; Schema: reporting; Owner: -
--

ALTER TABLE ONLY tenks
    ADD CONSTRAINT tenks_pkey PRIMARY KEY (id);


--
-- Name: index_reporting.tenks_on_twenty; Type: INDEX; Schema: reporting; Owner: -
--

CREATE INDEX "index_reporting.tenks_on_twenty" ON tenks USING btree (twenty);


--
-- Name: index_reporting.tenks_on_unique1; Type: INDEX; Schema: reporting; Owner: -
--

CREATE UNIQUE INDEX "index_reporting.tenks_on_unique1" ON tenks USING btree (unique1);


--
-- PostgreSQL database dump complete
--

SET search_path TO public,reporting;

INSERT INTO schema_migrations (version) VALUES ('20161211211345'), ('20161211211358'), ('20161211230012'), ('20161211230911'), ('20161211235625');


