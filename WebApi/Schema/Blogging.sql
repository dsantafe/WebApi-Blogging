--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: blog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog (
    blogid integer NOT NULL,
    url character varying(100),
    trial776 character(1)
);


ALTER TABLE public.blog OWNER TO postgres;

--
-- Name: TABLE blog; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.blog IS 'TRIAL';


--
-- Name: COLUMN blog.blogid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.blog.blogid IS 'TRIAL';


--
-- Name: COLUMN blog.url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.blog.url IS 'TRIAL';


--
-- Name: COLUMN blog.trial776; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.blog.trial776 IS 'TRIAL';


--
-- Name: blog_blogid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_blogid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogid_seq OWNER TO postgres;

--
-- Name: blog_blogid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_blogid_seq OWNED BY public.blog.blogid;


--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    postid integer NOT NULL,
    title character varying(100),
    content text,
    blogid integer,
    trial780 character(1)
);


ALTER TABLE public.post OWNER TO postgres;

--
-- Name: TABLE post; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.post IS 'TRIAL';


--
-- Name: COLUMN post.postid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.post.postid IS 'TRIAL';


--
-- Name: COLUMN post.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.post.title IS 'TRIAL';


--
-- Name: COLUMN post.content; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.post.content IS 'TRIAL';


--
-- Name: COLUMN post.blogid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.post.blogid IS 'TRIAL';


--
-- Name: COLUMN post.trial780; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.post.trial780 IS 'TRIAL';


--
-- Name: post_postid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_postid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_postid_seq OWNER TO postgres;

--
-- Name: post_postid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_postid_seq OWNED BY public.post.postid;


--
-- Name: blog blogid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog ALTER COLUMN blogid SET DEFAULT nextval('public.blog_blogid_seq'::regclass);


--
-- Name: post postid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post ALTER COLUMN postid SET DEFAULT nextval('public.post_postid_seq'::regclass);


--
-- Data for Name: blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog (blogid, url, trial776) FROM stdin;
1	http://www.miss-thrifty.co.uk/	T
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (postid, title, content, blogid, trial780) FROM stdin;
1	The Mythbuster’s Guide to Saving Money on Energy Bills	Once you get past the beginner-level energy-saving stuff, a whole new world of thrifty nerdery opens up. Here are some secrets to copping a load of money off your utilities bills.	1	T
2	Rockstar Finance gave me $100 to spread some love at Christmas. This is how I spent it.	Last month, J. Money announced the site was looking for 20 bloggers to take $100 each and turn it into some some joy and happiness. So I emailed to ask if the Rockstar Finance Community Fund could cross the pond.	1	T
3	How to make a reverse advent calendar	Answers to all your questions about reverse advent calendars: what are they and how much should you spend? Here is my reverse advent calendar for this year, with a show-and-tell of everything I have packed. I spent £17 – but did you know you can make a reverse advent calendar for as little as £5? In terms of the difference it will make, that’s an amazing ROI.	1	T
\.


--
-- Name: blog_blogid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_blogid_seq', 1, true);


--
-- Name: post_postid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_postid_seq', 3, true);


--
-- Name: blog pk_blog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog
    ADD CONSTRAINT pk_blog PRIMARY KEY (blogid);


--
-- Name: post pk_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT pk_post PRIMARY KEY (postid);


--
-- Name: post fk_post_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT fk_post_blog FOREIGN KEY (blogid) REFERENCES public.blog(blogid);


--
-- PostgreSQL database dump complete
--

