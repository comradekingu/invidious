-- Table: public.channels

-- DROP TABLE public.channels;

CREATE TABLE public.channels
(
  id text NOT NULL,
  author text,
  updated timestamp with time zone,
  deleted boolean,
  CONSTRAINT channels_id_key UNIQUE (id)
);

GRANT ALL ON TABLE public.channels TO kemal;

-- Index: public.channels_id_idx

-- DROP INDEX public.channels_id_idx;

CREATE INDEX channels_id_idx
  ON public.channels
  USING btree
  (id COLLATE pg_catalog."default");

