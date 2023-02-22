
ALTER SCHEMA cas OWNER TO g_axis;
-- CREATE SCHEMA
-- AUTHORIZATION g_axis;
GRANT ALL ON SCHEMA cas TO GROUP g_axis;
COMMENT ON SCHEMA cas IS 'Carte CASINO EMV';

SET search_path TO cas,public;

CREATE TABLE cas.tpvcas
(
    numtpv character varying(8),
    numcomm character varying(10),
	
    totaldebit double precision[],
    totalcredit double precision[],
    totalpreauto double precision[],
    totaldebitdiff double precision[],
    totalannulation double precision[],
    trnsdebit integer[],
    trnscredit integer[],
    trnspreauto integer[],
    trnsdebitdiff integer[],
    trnsannulation integer[],
	
	c3init integer,
    credit character varying(1),
    forcage character varying(1),
    asciifile character varying(1),
    annultype character varying(1),

    idpa character varying(10),
    capterm_ch21 character varying(6),
    itp_ch46df50 character varying(12),
    ref_ch46df67 character varying(79),
    c3chgt character varying(1),
    clef_part character varying(100),
    padss_trace character varying(1),
	
    e2e_encryption character varying(1) DEFAULT '0',                                           -- End 2 End encryption ( 0 : non active,  1 : active)
    e2e_tokenization character varying(1) DEFAULT '0',                                         -- Tokenisation (  0  : non active,  1 : Token,  2 : Digest,  3 : Token + Digest)
    padss_panmerchantreceipt character varying(1) NOT NULL DEFAULT '0'::character varying,
    padss_voicereferral character varying(1) NOT NULL DEFAULT '0'::character varying,
    padss_printmerchantreceipt integer NOT NULL DEFAULT 0,

    CONSTRAINT tpvace_pkey PRIMARY KEY (numtpv)	
) WITH (OIDS=FALSE);
ALTER TABLE cas.tpvcas OWNER TO g_axis;

CREATE TABLE cas.mvtcas
(
    id bigint NOT NULL,
    montant double precision,
	
	
) WITH (OIDS=FALSE);
ALTER TABLE cas.mvtcas OWNER TO g_axis;