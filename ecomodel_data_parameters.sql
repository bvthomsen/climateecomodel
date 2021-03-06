--
-- Structure for table kvmpris : 
--
CREATE TABLE ecomodel_data.kvmpris (
    id integer NOT NULL,
    komkode integer NOT NULL,
    komnavn character varying,
    kvmpris integer
)
WITH (oids = false);
--
-- Structure for table parameters : 
--
CREATE TABLE ecomodel_data.parameters (
    name character varying NOT NULL,
    parent character varying DEFAULT ''::character varying NOT NULL,
    value character varying DEFAULT ''::character varying NOT NULL,
    type character varying(1) DEFAULT 'T'::character varying NOT NULL,
    minval character varying DEFAULT ''::character varying NOT NULL,
    maxval character varying DEFAULT ''::character varying NOT NULL,
    lookupvalues character varying DEFAULT ''::character varying NOT NULL,
    "default" character varying DEFAULT ''::character varying NOT NULL,
    explanation character varying DEFAULT ''::character varying NOT NULL,
    sort integer DEFAULT 1 NOT NULL,
    checkable "char" DEFAULT ' '::"char" NOT NULL
)
WITH (oids = false);
--
-- Definition for index kvmpris_pkey : 
--
ALTER TABLE ONLY ecomodel_data.kvmpris
    ADD CONSTRAINT kvmpris_pkey
    PRIMARY KEY (komkode);
--
-- Definition for index parameters_pkey : 
--
ALTER TABLE ONLY ecomodel_data.parameters
    ADD CONSTRAINT parameters_pkey
    PRIMARY KEY (name);

--
-- Data for table data.parameters (LIMIT 0,162)
--
INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_human_health', 't_human_health', 'objectid', 'T', '', '', '', '', 'Field name for keyfield in Human health table ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_age_t_human_health', 't_human_health', 'alder_rand', 'T', '', '', '', '', 'Field name for age field in Human health table ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_human_health', 't_human_health', 'geom', 'T', '', '', '', '', 'Field name for geometry field in Human health table ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_infrastructure', 't_infrastructure', 'geom', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_infrastructure', 't_infrastructure', 'objectid', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_publicservice', 't_publicservice', 'geom', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_publicservice', 't_publicservice', 'objectid', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_road_traffic', 't_road_traffic', 'objectid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_road_traffic', 't_road_traffic', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Models', '', '', 'G', '', '', '', '', 'Group for Models', 3, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Generelle modelværdier', 'Models', '', 'G', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Kritisk infrastruktur', 'Models', '', 'G', '', '', '', '', 'Modeller, Kritisk infrastruktur', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Bygninger', 'Models', '', 'G', '', '', '', '', 'Bygningsmodeller', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_recreative', 'q_recreative', 'total_omkost_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_recreative', 'q_recreative', 'id', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_recreative', 'q_recreative', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_road_traffic', 'q_road_traffic', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_road_traffic', 'q_road_traffic', 'pris_total_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_road_traffic', 'q_road_traffic', 'id', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_road_traffic', 'q_road_traffic', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Data', '', '', 'G', '', '', '', '', 'Group for Tables', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_tourism', 'Data', 'ecomodel_data.turisme', 'T', '', '', '', '', 'Table name for tourism lookup table', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_sqmprice', 'Data', 'ecomodel_data.kvmpris', 'T', '', '', '', '', 'Table name for sqm price for buildings', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_building', 'Data', 'ecomodel_data.bygninger', 'T', '', '', '', '', 'Table name for building', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_flood', 'Data', 'ecomodel_data.oversvoem', 'T', '', '', '', '', 'Table name for flood data', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_bioscore', 'Data', 'ecomodel_data.biodiversitet', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_company', 'Data', 'ecomodel_data.industri', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_recreative', 'Data', 'ecomodel_data.rekreativeomr', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_functions', 'Data', 'ecomodel_data.skadesfunktioner', 'T', '', '', '', '', 'Table name for damage function table', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_human_health', 'Data', 'ecomodel_data.mennesker', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_infrastructure', 'Data', 'ecomodel_data.kritisk_infrastruktur', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_publicservice', 'Data', 'ecomodel_data.offentlig_service', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('t_road_traffic', 'Data', 'ecomodel_data.vejnet', 'T', '', '', '', '', 'Table name for road traffic', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('General', '', '', 'G', '', '', '', '', 'Group for Basic parameters', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Fetch parameter table', 'General', 'WITH RECURSIVE tree_search AS (SELECT *, 0 AS "level" FROM {parametertable} WHERE "parent" = '''' AND name <> '''' UNION ALL SELECT t.*, ts."level"+1 AS "level" FROM {parametertable} t, tree_search ts WHERE t."parent" = ts."name") SELECT * FROM tree_search ORDER BY "level", "sort";', 'P', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Insert parameter table', 'General', 'INSERT INTO {parametertable} ({parametercolumns}) VALUES ({parametervalues}', 'P', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Delete parameter table', 'General', 'DELETE FROM {parametertable}', 'P', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Name of model value section', 'General', 'Generelle modelværdier', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Cell size', 'General', '100', 'I', '10', '1000', '50', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Cell layername', 'General', 'celler', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Clear cell layer template', 'General', 'UPDATE "{schema}"."{table}" SET val_intersect = 0.0, num_intersect = 0
', 'P', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('update cell layer', 'General', 'WITH cte AS (
  SELECT
    a.fid AS fid,
    a.i AS i,
    a.j AS j,
    sum(
      CASE 				  
        WHEN ST_GeometryType(b.{geom_value}) ILIKE ''%POINT%'' THEN b.{value_value} 				  
        WHEN ST_GeometryType(b.{geom_value}) ILIKE ''%LINE%'' THEN b.{value_value} * st_length(st_intersection(a.{geom_cell},b.{geom_value}))/st_length(b.{geom_value})				  
        WHEN ST_GeometryType(b.{geom_value}) ILIKE ''%POLYGON%'' THEN b.{value_value} * st_area(st_intersection(a.{geom_cell},b.{geom_value}))/st_area(b.{geom_value})	  
        ELSE -10000000.00      
      END
    ) as sum_value,
    count(*) as count_number
  FROM {cell_table} a JOIN {value_table} b ON st_intersects (a.{geom_cell},b.{geom_value})
  GROUP BY a.fid, a.i, a.j
)
UPDATE {cell_table} SET 
  val_intersect = val_intersect + sum_value, 
  num_intersect = num_intersect + count_number 
FROM cte
WHERE {cell_table}.fid = cte.fid; ', 'P', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Create cell layer template', 'General', 'CREATE TABLE {celltable} AS
  WITH g AS (
    SELECT (
      st_squaregrid({cellsize}, st_geomfromewkt(''SRID={epsg}; POLYGON(({xmin} {ymin},{xmax} {ymin},{xmax} {ymax},{xmin} {ymax},{xmin} {ymin}))''))
	).*
  )
  SELECT
    row_number() OVER () AS fid,
    *,
    0.0::NUMERIC(12,2) AS val_intersect, 
    0 AS num_intersect 
  FROM g;
ALTER TABLE {celltable} ADD PRIMARY KEY(fid);
CREATE INDEX ON {celltable} USING GIST(geom);', 'P', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Create_result_pkey', 'General', 'ALTER TABLE "{Result_schema}"."{tablename_ts}" ADD PRIMARY KEY ({pkey_column});  ', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Create_result_index', 'General', 'CREATE INDEX ON "{Result_schema}"."{tablename_ts}" USING GIST ({geom_column})', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Main groupname', 'General', 'Modeller', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Result_schema', 'General', 'ecomodel_results', 'T', '', '', '', '', 'Name of schema to place result tables in', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Create_result_table', 'General', 'CREATE TABLE "{Result_schema}"."{tablename_ts}" AS {sqlquery}', 'P', '', '', '', '', 'SQL template for creating result tables', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Create schema command', 'General', 'CREATE SCHEMA {}', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Drop schema command', 'General', 'DROP SCHEMA {} /CASCADE', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Create comment command', 'General', 'COMMENT ON {} {} IS {}', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Group name template', 'General', 'Kørsel: {time_stamp}', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Model_layergroup', 'General', 'Resultater fra modelkørsler', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Queries', '', '', 'G', '', '', '', '', 'Group fpr queries', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_infrastructure', 'Queries', 'SELECT DISTINCT
  k.*
  FROM {t_infrastructure} k
  INNER JOIN {t_flood} o on st_intersects(k.{f_geom_t_infrastructure},o.{f_geom_t_flood})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}', 'P', '', '', '', '', '', 6, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_publicservice', 'Queries', 'SELECT DISTINCT
  k.*
  FROM {t_publicservice} k
  INNER JOIN {t_flood} o on st_intersects(k.{f_geom_t_publicservice},o.{f_geom_t_flood})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}', 'P', '', '', '', '', '', 6, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_building', 'Queries', 'WITH ob AS
(
    SELECT
        b.{f_pkey_t_building} as {f_pkey_q_building},
        b.{f_muncode_t_building} AS kom_kode,
        b.{f_buildcat_t_building} AS byg_type,
        st_area(b.{f_geom_t_building})::NUMERIC(12,2) AS areal_byg_m2,
        k.{f_sqmprice_t_sqmprice}::NUMERIC(12,2) as kvm_pris_kr,
        {Værditab, skadesramte bygninger}::NUMERIC(12,2) as tab_procent,
        st_force2d(b.{f_geom_t_building}) AS {f_geom_q_building},
        COUNT (*) AS cnt_oversvoem,
        (SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS areal_oversvoem_m2,
        (MIN(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS min_vanddybde_cm,
        (MAX(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS max_vanddybde_cm,
        (SUM(o.{f_depth_t_flood}*st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))) * 100.0 / SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS avg_vanddybde_cm
    FROM {t_building} b
    INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
    LEFT JOIN {t_sqmprice} k on (b.{f_muncode_t_building}=k.{f_muncode_t_sqmprice})
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
    GROUP BY b.{f_pkey_t_building}, b.{f_muncode_t_building}, b.{f_buildcat_t_building}, b.{f_geom_t_building}, k.{f_sqmprice_t_sqmprice}
),
os AS
(
    SELECT ob.*, 
        (ob.kvm_pris_kr * ob.areal_byg_m2 * {Værditab, skadesramte bygninger}/100.0)::NUMERIC(12,2) as {f_loss_q_building},
        CASE ob.byg_type
            WHEN ''Helårsbeboelse'' THEN ob.areal_byg_m2 * (1167.86 * LN(max_vanddybde_cm) - 571.21)
            WHEN ''Sommerhus''      THEN ob.areal_byg_m2 * (1681.71 * LN(max_vanddybde_cm) - 2128.87)
            WHEN ''Garage mm.''     THEN 30000.0
            WHEN ''Anneks''         THEN 30000.0                                    /* Som Garage */
            WHEN ''Erhverv''        THEN ob.areal_byg_m2 * (1387.94 * LN(max_vanddybde_cm) - 881.80)
            WHEN ''Kultur''         THEN ob.areal_byg_m2 * (1387.94 * LN(max_vanddybde_cm) - 881.80) /* Som Erhverv */
            WHEN ''Forsyning''      THEN ob.areal_byg_m2 * (1387.94 * LN(max_vanddybde_cm) - 881.80) /* Som Erhverv */
            WHEN ''Offentlig''      THEN ob.areal_byg_m2 * (1387.94 * LN(max_vanddybde_cm) - 881.80) /* Som Erhverv */
            WHEN ''Ingen data''     THEN ob.areal_byg_m2 * 2000.00
            WHEN ''Andet''          THEN ob.areal_byg_m2 * 2000.00                                    /* Som Ingen data */
            ELSE                       0.0
        END::NUMERIC(12,2) AS {f_damage_q_building}
FROM ob
)
SELECT 
    os.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN os.{f_damage_q_building}
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN os.{f_loss_q_building}
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN os.{f_damage_q_building} + os.{f_loss_q_building} 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS {f_risk_q_building}
FROM os
', 'P', '', '', '', '', 'SQL template for "Bygninger" model ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_tourism_spatial', 'Queries', 'WITH pn AS (
  SELECT DISTINCT
    b.{f_pkey_t_building} as {f_pkey_q_tourism_spatial},
    b.{f_muncode_t_building} AS kom_kode,
    b."BYG_ANVEND" AS bbr_kode,
    b."BYG_ANVE_1" AS bbr_tekst,
    t.kapacitet AS kapacitet,
    t.omkostning AS omkostninger,
    {Antal tabte døgn} AS tabte_dage,
    {Antal tabte døgn} * t.omkostning AS tabte_overnat,
    {Antal tabte døgn} * t.omkostning * t.kapacitet AS tot_kr,
    st_force2d(b.{f_geom_t_building}) AS {f_geom_q_tourism_spatial}
    FROM {t_building} b
    INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
    INNER JOIN {t_tourism} t  ON {f_pkey_t_tourism} = b."BYG_ANVEND"  
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde} AND t.aktiv = True
)
SELECT 
    pn.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN pn.tot_kr
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN 0.0 + pn.tot_kr 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS risiko_kr
FROM pn
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_tourism_alphanumeric', 'Queries', 'WITH pn AS (
  SELECT
    row_number() over () as {f_pkey_q_tourism_alphanumeric},
    b.{f_muncode_t_building} AS kom_kode,
    b."BYG_ANVEND" AS bbr_kode,
    b."BYG_ANVE_1" AS bbr_tekst,
    {Antal tabte døgn} AS tabte_dage,
    MIN(t.kapacitet) AS kapacitet_bygning,
    MIN(t.omkostning) AS omkostning_overnatning,
    SUM(t.kapacitet * {Antal tabte døgn}) AS sum_overnatninger,
    SUM(t.omkostning * t.kapacitet* {Antal tabte døgn} / 1000000.0)::NUMERIC(12,3)  AS sum_tot_kr,
    SUM(t.omkostning * t.kapacitet* {Antal tabte døgn} / 1000000.0)::NUMERIC(12,3)  AS sum_tot_mill_kr
    FROM {t_building} b
    INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
    JOIN {t_tourism} t  ON t.bbrkode = b."BYG_ANVEND"  
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde} AND t.aktiv = True
    GROUP BY b.komkode, b."BYG_ANVEND", b."BYG_ANVE_1"
)
SELECT 
    pn.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN pn.sum_tot_mill_kr
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN 0.0 + pn.sum_tot_mill_kr 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS risiko_mill_kr
FROM pn
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_tourism', 't_tourism', 'bbrkode', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_muncode_t_sqmprice', 't_sqmprice', 'komkode', 'T', '', '', '', '', 'Fieldname for municipalitycode', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_sqmprice_t_sqmprice', 't_sqmprice', 'kvmpris', 'T', '', '', '', '', 'Fieldname for sqm price', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_muncode_t_building', 't_building', 'komkode', 'T', '', '', '', '', 'Fieldname for municipality code for building table', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_buildcat_t_building', 't_building', '"Kategori2"', 'T', '', '', '', '', 'Fieldname for building categori in building table', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_building', 't_building', 'geom', 'T', '', '', '', '', 'Field name for geometry field in building table', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_building', 't_building', '"OBJECTID"', 'T', '', '', '', '', 'Field name for keyfield in Building table ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_surrounding_loss', 'Queries', 'WITH 
  vb AS (
    SELECT
      st_union(b.{f_geom_t_building}) AS geom 
    FROM {t_building} b 
    JOIN {t_flood} o 
    ON st_intersects(o.{f_geom_t_flood}, b.{f_geom_t_building}) 
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}),
    
  ob AS (
	SELECT
      distinct b.{f_pkey_t_building} as fid
    FROM {t_building} b 
    JOIN {t_flood} o 
    ON st_intersects(o.{f_geom_t_flood}, b.{f_geom_t_building}) 
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}),

  fb AS (
    SELECT
      b.{f_pkey_t_building} AS {f_pkey_q_building},
      b.{f_muncode_t_building} AS kom_kode,
      b.{f_buildcat_t_building} AS byg_type,
      st_area(b.{f_geom_t_building})::NUMERIC(12,2) AS areal_byg_m2,
      k.{f_sqmprice_t_sqmprice}::NUMERIC(12,2) AS kvm_pris_kr,
      ({Værditab, skadesramte bygninger}*{Faktor for værditab})::NUMERIC(12,2) AS tab_procent,
      (k.{f_sqmprice_t_sqmprice} * st_area(b.{f_geom_t_building}) * {Værditab, skadesramte bygninger} * {Faktor for værditab} / 100.0)::NUMERIC(12,2) AS vaerditab_kr,
      st_force2d(b.{f_geom_t_building}) AS {f_geom_q_building}
        
    FROM {t_building} b
    LEFT JOIN ob ON ob.fid=b.{f_pkey_t_building} 
    LEFT JOIN {t_sqmprice} k ON b.{f_muncode_t_building}=k.{f_muncode_t_sqmprice}
    INNER JOIN vb ON st_dwithin(vb.geom, b.{f_geom_t_building}, {Bredde af nabozone})
    WHERE ob.fid IS NULL)

SELECT 
    fb.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN fb.vaerditab_kr
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN 0.0 + fb.vaerditab_kr 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS risiko_kr
FROM fb
', 'P', '', '', '', '', 'SQL template for "Nabobygninge værditabar" model ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_bioscore_spatial', 'Queries', 'SELECT
  b.{f_pkey_t_bioscore} as pkey,
  b.{f_bioscore_t_bioscore} as bioscore,
  st_area(st_intersection(b.{f_geom_t_bioscore},o.{f_geom_t_flood}))::NUMERIC(12,2) AS areal_m2,
  st_intersection(b.{f_geom_t_bioscore},o.{f_geom_t_flood}) as geom_clip,
  o.{f_depth_t_flood} as depth
  FROM {t_bioscore} b
  INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_bioscore},o.{f_geom_t_flood})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
  ', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_comp_build', 'Queries', 'WITH fb AS
(
  SELECT 
    b.{f_pkey_t_building} as {f_pkey_q_comp_build},
    MIN(b.{f_muncode_t_building}) AS kom_kode,
    MIN(b.{f_buildcat_t_building}) AS byg_type,
    st_force2d(MIN(b.{f_geom_t_building})) AS geom_byg
  FROM {t_building} b
  INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
  GROUP BY b.{f_pkey_t_building}
)
SELECT 
  fb.{f_pkey_q_comp_build},
  MIN(fb.kom_kode) AS kom_kode,
  MIN(fb.byg_type) AS byg_type,
  MIN(fb.{f_geom_q_comp_build}) AS {f_geom_q_comp_build},
  SUM(c.{f_empcount_t_company})::bigint AS empl_cnt, 
  COUNT(*) AS comp_cnt,
  COUNT(*) FILTER (WHERE c.{f_empcount_t_company} = 0) AS empcnt_zero,
  COUNT(*) FILTER (WHERE c.{f_empcount_t_company} > 0) AS empcnt_nonzero
FROM fb INNER JOIN {t_company} c on st_within(c.{f_geom_t_company},fb.{f_geom_q_comp_build})
GROUP BY fb.{f_pkey_q_comp_build}', 'P', '', '', '', '', 'Query for compagny-buiding-emplyee', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_comp_nobuild', 'Queries', 'SELECT 
  c.{f_pkey_t_company} AS {f_pkey_q_comp_nobuild}, 
  c."Virk_cvrnr",
  c.pnr,
  c.modifikati,
  c.ajourfoeri,
  c."Virk_gyldi",
  c.{f_geom_t_company} AS {f_geom_q_comp_nobuild}, 
  o.{f_depth_t_flood} 
  FROM {t_company} c 
  LEFT JOIN {t_flood} o ON st_within(c.{f_geom_t_company},o.{f_geom_t_flood})
  LEFT JOIN {t_building} b ON st_within(c.{f_geom_t_company},b.{f_geom_t_building})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde} AND b.{f_pkey_t_building} IS NULL
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_bioscore_alphanumeric', 'Queries', '  SELECT
  row_number() over () as {f_pkey_q_bioscore_alphanumeric},    b.{f_bioscore_t_bioscore} as bioscore,
  sum(st_area(st_intersection(b.{f_geom_t_bioscore},o.{f_geom_t_flood})))::NUMERIC(12,2) AS sum_area_m2,
  min(o.{f_depth_t_flood})::NUMERIC(12,2) as min_depth_m,
  max(o.{f_depth_t_flood})::NUMERIC(12,2) as max_depth_m
  FROM {t_bioscore} b
  INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_bioscore},o.{f_geom_t_flood})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
  group by b.{f_bioscore_t_bioscore};', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_build_stream', 'Queries', 'WITH ob AS
(
    SELECT
        b.{f_pkey_t_building} as {f_pkey_q_build_stream},
        b.{f_muncode_t_building} AS kom_kode,
        b.{f_buildcat_t_building} AS byg_type,
        st_area(b.{f_geom_t_building})::NUMERIC(12,2) AS areal_byg_m2,
        k.{f_sqmprice_t_sqmprice}::NUMERIC(12,2) as kvm_pris_kr,
        {Værditab, skadesramte bygninger}::NUMERIC(12,2) as tab_procent,
        st_force2d(b.{f_geom_t_building}) AS {f_geom_q_build_stream},
        COUNT (*) AS cnt_oversvoem,
        (SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS areal_oversvoem_m2,
        (MIN(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS min_vanddybde_cm,
        (MAX(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS max_vanddybde_cm,
        (SUM(o.{f_depth_t_flood}*st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))) * 100.0 / SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS avg_vanddybde_cm
    FROM {t_building} b
    INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
    LEFT JOIN {t_sqmprice} k on (b.{f_muncode_t_building}=k.{f_muncode_t_sqmprice})
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
    GROUP BY b.{f_pkey_t_building}, b.{f_muncode_t_building}, b.{f_buildcat_t_building}, b.{f_geom_t_building}, k.{f_sqmprice_t_sqmprice}
),
os AS
(
    SELECT ob.*, 
        (ob.kvm_pris_kr * ob.areal_byg_m2 * {Værditab, skadesramte bygninger}/100.0)::NUMERIC(12,2) as {f_loss_q_build_stream},
        CASE ob.byg_type
            WHEN ''Helårsbeboelse'' THEN ob.areal_byg_m2 * (389.29 * LN(max_vanddybde_cm) - 190.40)
            WHEN ''Sommerhus''      THEN ob.areal_byg_m2 * (560.57 * LN(max_vanddybde_cm) - 709.62)
            WHEN ''Garage mm.''     THEN 30000.0
            WHEN ''Anneks''         THEN 30000.0                                    /* Som Garage */
            WHEN ''Erhverv''        THEN ob.areal_byg_m2 * (462.65 * LN(max_vanddybde_cm) - 293.93)
            WHEN ''Kultur''         THEN ob.areal_byg_m2 * (462.65 * LN(max_vanddybde_cm) - 293.93) /* Som Erhverv */
            WHEN ''Forsyning''      THEN ob.areal_byg_m2 * (462.65 * LN(max_vanddybde_cm) - 293.93) /* Som Erhverv */
            WHEN ''Offentlig''      THEN ob.areal_byg_m2 * (462.65 * LN(max_vanddybde_cm) - 293.93) /* Som Erhverv */
            WHEN ''Ingen data''     THEN ob.areal_byg_m2 * 1000.00
            WHEN ''Andet''          THEN ob.areal_byg_m2 * 1000.00                                    /* Som Ingen data */
            ELSE                       0.0
        END::NUMERIC(12,2) AS {f_damage_q_build_stream}
FROM ob
)
SELECT 
    os.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN os.{f_damage_q_build_stream}
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN os.{f_loss_q_build_stream}
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN os.{f_damage_q_build_stream} + os.{f_loss_q_build_stream} 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS {f_risk_q_build_stream}
FROM os
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_build_torr', 'Queries', 'WITH ob AS
(
    SELECT
        b.{f_pkey_t_building} as {f_pkey_q_build_torr},
        b.{f_muncode_t_building} AS kom_kode,
        b.{f_buildcat_t_building} AS byg_type,
        st_area(b.{f_geom_t_building})::NUMERIC(12,2) AS areal_byg_m2,
        k.{f_sqmprice_t_sqmprice}::NUMERIC(12,2) as kvm_pris_kr,
        {Værditab, skadesramte bygninger}::NUMERIC(12,2) as tab_procent,
        st_force2d(b.{f_geom_t_building}) AS {f_geom_q_build_torr},
        COUNT (*) AS cnt_oversvoem,
        (SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS areal_oversvoem_m2,
        (MIN(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS min_vanddybde_cm,
        (MAX(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS max_vanddybde_cm,
        (SUM(o.{f_depth_t_flood}*st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))) * 100.0 / SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS avg_vanddybde_cm
    FROM {t_building} b
    INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
    LEFT JOIN {t_sqmprice} k on (b.{f_muncode_t_building}=k.{f_muncode_t_sqmprice})
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
    GROUP BY b.{f_pkey_t_building}, b.{f_muncode_t_building}, b.{f_buildcat_t_building}, b.{f_geom_t_building}, k.{f_sqmprice_t_sqmprice}
),
os AS
(
    SELECT ob.*, 
        (ob.kvm_pris_kr * ob.areal_byg_m2 * {Værditab, skadesramte bygninger}/100.0)::NUMERIC(12,2) as {f_loss_q_build_torr},
        CASE ob.byg_type
            WHEN ''Helårsbeboelse'' THEN ob.areal_byg_m2 * 1257.00
            WHEN ''Sommerhus''   THEN ob.areal_byg_m2 * 880.00
            WHEN ''Garage mm.''  THEN 30000.0
            WHEN ''Anneks''         THEN 30000.0                                    /* Som Garage */
            WHEN ''Erhverv''         THEN ob.areal_byg_m2 * 1407.00
            WHEN ''Kultur''           THEN ob.areal_byg_m2 * 1407.00 /* Som Erhverv */
            WHEN ''Forsyning''      THEN ob.areal_byg_m2 * 1407.00 /* Som Erhverv */
            WHEN ''Offentlig''       THEN ob.areal_byg_m2 * 1407.00 /* Som Erhverv */
            WHEN ''Ingen data''     THEN ob.areal_byg_m2 * 1000.00
            WHEN ''Andet''          THEN ob.areal_byg_m2 * 1000.00                                    /* Som Ingen data */
            ELSE                       0.0
        END::NUMERIC(12,2) AS {f_damage_q_build_torr}
FROM ob
)
SELECT 
    os.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN os.{f_damage_q_build_torr}
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN os.{f_loss_q_build_torr}
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN os.{f_damage_q_build_torr} + os.{f_loss_q_build_torr} 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS {f_risk_q_build_torr}
FROM os
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_flood', 't_flood', 'geom', 'T', '', '', '', '', 'Field name for geometry field in flood table', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_depth_t_flood', 't_flood', '"Vanddybde"', 'T', '', '', '', '', 'Field name for detph field in flood table ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_bioscore', 't_bioscore', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_bioscore_t_bioscore', 't_bioscore', '"Bioscore"', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_bioscore', 't_bioscore', 'id', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_company', 't_company', '"OBJECTID"', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_empcount_t_company', 't_company', 'aarsbes_an', 'I', '0', '20000', '10', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_company', 't_company', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_t_recreative', 't_recreative', 'geom', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_t_recreative', 't_recreative', 'objectid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_human_health', 'Queries', 'WITH ob AS (
  SELECT
    b.{f_pkey_t_building} as {f_pkey_q_human_health},
    b.{f_muncode_t_building} AS kom_kode,
    b.{f_buildcat_t_building} AS byg_type,
    st_area(b.{f_geom_t_building})::NUMERIC(12,2) AS areal_byg_m2,
    (SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS areal_oversvoem_m2,
    (MIN(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS min_vanddybde_cm,
    (MAX(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS max_vanddybde_cm,
    (SUM(o.{f_depth_t_flood}*st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))) * 100.0 / SUM(st_area(st_intersection(b.{f_geom_t_building},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS avg_vanddybde_cm,
    st_force2d(b.{f_geom_t_building}) AS {f_geom_q_human_health}
    FROM {t_building} b
    INNER JOIN {t_flood} o on st_intersects(b.{f_geom_t_building},o.{f_geom_t_flood})
    WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
    GROUP BY b.{f_pkey_t_building}, b.{f_muncode_t_building}, b.{f_buildcat_t_building}, b.{f_geom_t_building}
),
om AS ( 
  SELECT 
    ob.{f_pkey_q_human_health},
    ob.kom_kode,
	ob.byg_type,
	ob.areal_byg_m2,
	ob.areal_oversvoem_m2, 
	ob.min_vanddybde_cm, 
	ob.max_vanddybde_cm, 
	ob.avg_vanddybde_cm,
    ob.{f_geom_q_human_health},
    COUNT(*) as mennesker_total,
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} BETWEEN 0 AND 6) AS mennesker_0_6,
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} BETWEEN 7 AND 17) AS mennesker_7_17,
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} BETWEEN 18 AND 70) AS mennesker_18_70,
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} > 70) AS mennesker_71plus,
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} BETWEEN 18 AND 70) * (55 * 180 * 0.5)::integer AS rejsetid_kr,
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} BETWEEN 18 AND 70) * (17 * 7.4 * 180 * 0.5)::integer AS sygedage_kr, 
    COUNT(*) FILTER (WHERE m.{f_age_t_human_health} BETWEEN 18 AND 70) * (7 * 7.4 * 180 * 0.5)::integer AS feriedage_kr 
  FROM ob 
  INNER JOIN {t_human_health} m ON st_intersects (ob.{f_geom_q_human_health}, m.{f_geom_t_human_health})
  GROUP BY ob.{f_pkey_q_human_health}, ob.kom_kode, ob.byg_type, ob.areal_byg_m2, ob.areal_oversvoem_m2, ob.min_vanddybde_cm, ob.max_vanddybde_cm, ob.avg_vanddybde_cm, ob.{f_geom_q_human_health}
)

SELECT 
    om.*,
    om.rejsetid_kr + om.sygedage_kr + om.feriedage_kr AS omkostning_kr,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN om.rejsetid_kr + om.sygedage_kr + om.feriedage_kr
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN 0.0 + om.rejsetid_kr + om.sygedage_kr + om.feriedage_kr 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS risiko_kr
FROM om
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_recreative', 'Queries', 'WITH fr AS
(
  SELECT 
    r.{f_pkey_t_recreative} as {f_pkey_q_recreative},
    st_force2d(MIN(r.{f_geom_t_recreative})) AS {f_geom_q_recreative},
    MIN(r.gridcode) AS gridcode, 
    MIN(r.valuationk) AS valuation_kr,
    st_area(MIN(r.{f_geom_t_recreative}))::NUMERIC(12,2)  AS areal_org_m2,
    (SUM(st_area(st_intersection(r.{f_geom_t_recreative},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS areal_oversvoem_m2,
    (MIN(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS min_vanddybde_cm,
    (MAX(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS max_vanddybde_cm,
    (SUM(o.{f_depth_t_flood}*st_area(st_intersection(r.{f_geom_t_recreative},o.{f_geom_t_flood}))) * 100.0 / SUM(st_area(st_intersection(r.{f_geom_t_recreative},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS avg_vanddybde_cm
  FROM {t_recreative} r
  INNER JOIN {t_flood} o on st_intersects(r.{f_geom_t_recreative},o.{f_geom_t_flood})
  WHERE o.{f_depth_t_flood} >= {Minimum vanddybde}
  GROUP BY r.{f_pkey_t_recreative}
),
qr AS (
  SELECT fr.*,   
    {Antal dage med oversvømmelse} AS periode_dage, 
    (100.0 * fr.areal_oversvoem_m2 / fr.areal_org_m2)::NUMERIC(12,2) AS oversvoem_pct,
    (({Antal dage med oversvømmelse}/365.0) * (fr.areal_oversvoem_m2 / fr.areal_org_m2) * fr.valuation_kr)::NUMERIC(12,2)  AS total_omkost_kr
  FROM fr
)

SELECT 
  qr.*,
  (
    CASE
      WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
      WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN qr.total_omkost_kr
      WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN 0.0
      WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN 0.0 + qr.total_omkost_kr 
    END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS risiko_kr
FROM qr
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('q_road_traffic', 'Queries', 'WITH
    tr AS (
        SELECT
            v.{f_pkey_t_road_traffic} as {f_pkey_q_road_traffic},
            st_force2d(v.{f_geom_t_road_traffic}) AS {f_geom_q_road_traffic},
            st_length(v.{f_geom_t_road_traffic})::NUMERIC(12,2) AS laengde_org_m,
            COUNT(*) AS ant_oversvoem,
            (SUM(st_length(st_intersection(v.{f_geom_t_road_traffic},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS laengde_oversvoem_m,
            (MIN(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS min_vanddybde_cm,
            (MAX(o.{f_depth_t_flood}) * 100.00)::NUMERIC(12,2) AS max_vanddybde_cm,
            (SUM(o.{f_depth_t_flood}*st_length(st_intersection(v.{f_geom_t_road_traffic},o.{f_geom_t_flood}))) * 100.0 / SUM(st_length(st_intersection(v.{f_geom_t_road_traffic},o.{f_geom_t_flood}))))::NUMERIC(12,2) AS avg_vanddybde_cm
        FROM {t_road_traffic} v
        INNER JOIN {t_flood} o on st_intersects(v.{f_geom_t_road_traffic},o.{f_geom_t_flood})
        WHERE o.{f_depth_t_flood} >= {Fartnedsættende vanddybde}
    GROUP BY v.{f_pkey_t_road_traffic}, v.{f_geom_t_road_traffic}
    ),
    tr2 AS (
        SELECT
            tr.*,
            {Oversvømmelsesperiode} AS blokering_dage,
            {Blokerende vanddybde} AS vanddybde_bloker_m,
            {Fartnedsættende vanddybde} AS vanddybde_min_m,
            {Gennemsnitligt dagligt bilantal} AS gennemsnit_biler_pr_dag,
            {Renovationspris pr meter} AS pris_renovation_kr_m,
            (CASE
                WHEN tr.avg_vanddybde_cm >= 30.0 THEN 0.0
                ELSE 0.0009 * (tr.avg_vanddybde_cm*10.0)^2.0 - 0.5529 * tr.avg_vanddybde_cm*10.0 + 86.9448
            END)::NUMERIC(12,2) AS hastighed_red_km_time,
            tr.laengde_oversvoem_m * {Renovationspris pr meter} AS renovationspris_total_kr
        FROM tr
    ),
    tr3 AS (
        SELECT
            tr2.*,
            (CASE
                WHEN tr2.hastighed_red_km_time > 50.0 THEN 0.0
                ELSE (68.8 - 1.376 * tr2.hastighed_red_km_time) * (tr2.blokering_dage / 24.0) * tr2.laengde_org_m * (tr2.gennemsnit_biler_pr_dag/6200.00)*2.0
                
            END)::NUMERIC(12,2) AS transportpris_total_kr,
            (CASE
                WHEN tr2.hastighed_red_km_time > 50.0 THEN 0.0
                ELSE (68.8 - 1.376 * tr2.hastighed_red_km_time) * (tr2.blokering_dage / 24.0) * tr2.laengde_org_m * (tr2.gennemsnit_biler_pr_dag/6200.00)*2.0
            END + tr2.renovationspris_total_kr)::NUMERIC(12,2) AS pris_total_kr
        FROM tr2
)
SELECT 
    tr3.*,
	(
	CASE
	    WHEN ''{Medtag i risiko beregninger}'' = ''Intet (0 kr.)'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadesbeløb'' THEN tr3.pris_total_kr
	    WHEN ''{Medtag i risiko beregninger}'' = ''Værditab'' THEN 0.0
	    WHEN ''{Medtag i risiko beregninger}'' = ''Skadebeløb og værditab'' THEN 0.0 + tr3.pris_total_kr 
	END * (0.089925/{Returperiode for hændelse, 100 år (Rf)} + 0.21905/{Returperiode for hændelse, nutid (Ri)}))::NUMERIC(12,2) AS risiko_kr
FROM tr3
', 'P', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_infrastructure', 'q_infrastructure', 'geom', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_infrastructure', 'q_infrastructure', 'objectid', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_publicservice', 'q_publicservice', 'geom', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_publicservice', 'q_publicservice', 'objectid', 'T', '', '', '', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_loss_q_building', 'q_building', 'vaerditab_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_building', 'q_building', 'skadesbeloeb_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_building', 'q_building', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_building', 'q_building', 'fid', 'T', '', '', '', '', 'Name of primary keyfield for query', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_building', 'q_building', 'geom_byg', 'T', '', '', '', '', 'Field name for geometry column', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_tourism_spatial', 'q_tourism_spatial', 'tot_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_tourism_spatial', 'q_tourism_spatial', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_tourism_spatial', 'q_tourism_spatial', 'geom', 'T', '', '', '', '', 'Field name for geometry field in tourism query', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_tourism_spatial', 'q_tourism_spatial', 'id', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_tourism_alphanumeric', 'q_tourism_alphanumeric', 'fid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_surrounding_loss', 'q_surrounding_loss', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_loss_q_surrounding_loss', 'q_surrounding_loss', 'vaerditab_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_surrounding_loss', 'q_surrounding_loss', 'fid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_surrounding_loss', 'q_surrounding_loss', 'geom_byg', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_bioscore_spatial', 'q_bioscore_spatial', 'geom_clip', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_comp_build', 'q_comp_build', 'fid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_comp_build', 'q_comp_build', 'geom_byg', 'T', '', '', '', '', 'Field name for building geometry', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_comp_nobuild', 'q_comp_nobuild', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_comp_nobuild', 'q_comp_nobuild', 'fid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_bioscore_alphanumeric', 'q_bioscore_alphanumeric', 'fid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_build_stream', 'q_build_stream', 'skadesbeloeb_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_loss_q_build_stream', 'q_build_stream', 'vaerditab_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_build_stream', 'q_build_stream', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_build_stream', 'q_build_stream', 'fid', 'T', '', '', '', '', 'Name of primary keyfield for query', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_build_stream', 'q_build_stream', 'geom_byg', 'T', '', '', '', '', 'Field name for geometry column', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_build_torr', 'q_build_torr', 'skadesbeloeb_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_loss_q_build_torr', 'q_build_torr', 'vaerditab_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_build_torr', 'q_build_torr', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_build_torr', 'q_build_torr', 'fid', 'T', '', '', '', '', 'Name of primary keyfield for query', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_build_torr', 'q_build_torr', 'geom_byg', 'T', '', '', '', '', 'Field name for geometry column', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_human_health', 'q_human_health', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_damage_q_human_health', 'q_human_health', 'omkostning_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_pkey_q_human_health', 'q_human_health', 'fid', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_geom_q_human_health', 'q_human_health', 'geom', 'T', '', '', '', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('f_risk_q_recreative', 'q_recreative', 'risiko_kr', 'T', '', '', '', '', '', 1, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Offentlig service', 'Models', '', 'G', '', '', '', '', 'Modeller, Offentlig service', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Vej og trafik', 'Models', '', 'G', '', '', '', '', 'Modeller, Vej og trafik', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Biodiversitet', 'Models', '', 'G', '', '', '', '', 'Biodiversitets modeller', 4, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Turisme', 'Models', '', 'G', '', '', '', '', 'Turisme modeller', 5, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Industri', 'Models', ' ', 'G', '', '', '', '', '', 5, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Rekreative områder', 'Models', '', 'T', '', '', '', '', 'Modeller for rekreative områder', 5, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Modeller, Mennesker og helbred', 'Models', '', 'G', '', '', '', '', 'Modeller, Mennesker og helbred', 7, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Returperiode for hændelse, nutid (Ri)', 'Generelle modelværdier', '20', 'I', '0', '1000', '5', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Returperiode for hændelse, 100 år (Rf)', 'Generelle modelværdier', '5', 'I', '0', '1000', '10', '', '', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Medtag i risiko beregninger', 'Generelle modelværdier', 'Skadesbeløb', 'O', '', '', 'Skadesbeløb¤Værditab¤Skadebeløb og værditab¤Intet (0 kr.)', '', '', 3, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Minimum vanddybde', 'Generelle modelværdier', '0.3', 'R', '0.15', '10.0', '0.05', '', 'Mindste værdi for vandybde, som medtages i beregningerne ', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Oversvømmet infrastruktur', 'Modeller, Kritisk infrastruktur', '', 'T', '', '', '', 'q_infrastructure', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Værditab, skadesramte bygninger', 'Modeller, Bygninger', '10.0', 'R', '0.0', '100.0', '5.0', '', 'Værditab i procent for skadesramte bygninger', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Værditab nabobygninger', 'Modeller, Bygninger', '', 'T', '', '', '', 'q_surrounding_loss', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Skadesberegninger, skybrud', 'Modeller, Bygninger', '', 'T', '', '', '', 'q_build_torr', 'Model for buildings, torrential rain', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Skadesberegninger, stormflod', 'Modeller, Bygninger', '', 'T', '', '', '', 'q_building', 'Model for buildings', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Skadesberegninger, vandløb', 'Modeller, Bygninger', '', 'T', '', '', '', 'q_build_stream', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Oversvømmet offentligt service', 'Modeller, Offentlig service', '', 'T', '', '', '', 'q_publicservice', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Skadeberegning, Vej og trafik', 'Modeller, Vej og trafik', '', 'T', '', '', '', 'q_road_traffic', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Biodiversitet, opsummering', 'Modeller, Biodiversitet', '', 'T', '', '', '', 'q_bioscore_alphanumeric', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Biodiversitet, kort', 'Modeller, Biodiversitet', '', 'T', '', '', '', 'q_bioscore_spatial', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Antal tabte døgn', 'Modeller, Turisme', '20', 'I', '0', '365', '5', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Turisme, Opsummering', 'Modeller, Turisme', '', 'T', '', '', '', 'q_tourism_alphanumeric', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Turisme, Kort', 'Modeller, Turisme', '', 'T', '', '', '', 'q_tourism_spatial', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Industri, personale i bygninger', 'Modeller, Industri', ' ', 'T', '', '', '', 'q_comp_build', '', 10, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Industri, punkter fejlplaceret', 'Modeller, Industri', '', 'T', '', '', '', 'q_comp_nobuild', '', 11, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Skadesberegning, Rekreative områder', 'Modeller, Rekreative områder', '', 'T', '', '', '', 'q_recreative', '', 12, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Humane omkostninger ', 'Modeller, Mennesker og helbred', '', 'T', '', '', '', 'q_human_health', '', 11, 'T');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Faktor for værditab', 'Værditab nabobygninger', '0.50', 'R', '0.0', '1.0', '0.1', '', 'Faktor værdi til beregning af værditab for nabobygninger ud fra værditab for skadesramte bygninger', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Bredde af nabozone', 'Værditab nabobygninger', '300.0', 'R', '0.0', '1000.0', '10.0', '', 'Maks. afstand for nabobygninger fra skadesramte bygningerder som medtages i beregningen', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Fartnedsættende vanddybde', 'Skadeberegning, Vej og trafik', '0.075', 'R', '0.0', '2.0', '0.1', '', '', 1, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Blokerende vanddybde', 'Skadeberegning, Vej og trafik', '0.3', 'R', '0.0', '2.0', '0.1', '', '', 2, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Gennemsnitligt dagligt bilantal', 'Skadeberegning, Vej og trafik', '6200', 'I', '0', '50000', '100', '', '', 3, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Oversvømmelsesperiode', 'Skadeberegning, Vej og trafik', '24', 'I', '0', '100', '1', '', '', 4, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Renovationspris pr meter', 'Skadeberegning, Vej og trafik', '20', 'I', '0', '1000', '10', '', '', 5, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Antal dage med oversvømmelse', 'Skadesberegning, Rekreative områder', '24', 'I', '0', '100', '1', '', '', 10, ' ');

INSERT INTO ecomodel_data.parameters (name, parent, value, type, minval, maxval, lookupvalues, "default", explanation, sort, checkable)
VALUES ('Reports', '', '', 'G', '', '', '', '', 'Group for repoorts', 4, ' ');

--
-- Data for table data.kvmpris (LIMIT 0,100)
--
INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (1, 101, 'København', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (2, 147, 'Frederiksberg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (3, 151, 'Ballerup', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (4, 153, 'Brøndby', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (5, 155, 'Dragør', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (6, 157, 'Gentofte', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (7, 159, 'Gladsaxe', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (8, 161, 'Glostrup', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (9, 163, 'Herlev', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (10, 165, 'Albertslund', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (11, 167, 'Hvidovre', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (12, 169, 'Høje-Taastrup', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (13, 173, 'Lyngby-Taarbæk', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (14, 175, 'Rødovre', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (15, 183, 'Ishøj', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (16, 185, 'Tårnby', 32143);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (17, 187, 'Vallensbæk', 26894);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (18, 190, 'Furesø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (19, 201, 'Allerød', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (20, 210, 'Fredensborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (21, 217, 'Helsingør', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (22, 219, 'Hillerød', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (23, 223, 'Hørsholm', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (24, 230, 'Rudersdal', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (25, 240, 'Egedal', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (26, 250, 'Frederikssund', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (27, 253, 'Greve', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (28, 259, 'Køge', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (29, 260, 'Halsnæs', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (30, 265, 'Roskilde', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (31, 269, 'Solrød', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (32, 270, 'Gribskov', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (33, 306, 'Odsherred', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (34, 316, 'Holbæk', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (35, 320, 'Faxe', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (36, 326, 'Kalundborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (37, 329, 'Ringsted', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (38, 330, 'Slagelse', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (39, 336, 'Stevns', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (40, 340, 'Sorø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (41, 350, 'Lejre', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (42, 360, 'Lolland', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (43, 370, 'Næstved', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (44, 376, 'Guldborgsund', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (45, 390, 'Vordingborg', 11644);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (46, 400, 'Bornholm', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (47, 410, 'Middelfart', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (48, 411, 'Christiansø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (49, 420, 'Assens', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (50, 430, 'Faaborg-Midtfyn', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (51, 440, 'Kerteminde', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (52, 450, 'Nyborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (53, 461, 'Odense', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (54, 479, 'Svendborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (55, 480, 'Nordfyns', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (56, 482, 'Langeland', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (57, 492, 'Ærø', 7597);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (58, 510, 'Haderslev', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (59, 530, 'Billund', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (60, 540, 'Sønderborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (61, 550, 'Tønder', 8840);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (62, 561, 'Esbjerg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (63, 563, 'Fanø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (64, 573, 'Varde', 13312);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (65, 575, 'Vejen', 8771);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (66, 580, 'Aabenraa', 9750);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (67, 607, 'Fredericia', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (68, 615, 'Horsens', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (69, 621, 'Kolding', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (70, 630, 'Vejle', 16343);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (71, 657, 'Herning', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (72, 661, 'Holstebro', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (73, 665, 'Lemvig', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (74, 671, 'Struer', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (75, 706, 'Syddjurs', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (76, 707, 'Norddjurs', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (77, 710, 'Favrskov', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (78, 727, 'Odder', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (79, 730, 'Randers', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (80, 740, 'Silkeborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (81, 741, 'Samsø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (82, 746, 'Skanderborg', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (83, 751, 'Aarhus', 30544);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (84, 756, 'Ikast-Brande', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (85, 760, 'Ringkøbing-Skjern', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (86, 766, 'Hedensted', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (87, 773, 'Morsø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (88, 779, 'Skive', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (89, 787, 'Thisted', 9842);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (90, 791, 'Viborg', 12787);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (91, 810, 'Brønderslev', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (92, 813, 'Frederikshavn', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (93, 820, 'Vesthimmerlands', 9010);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (94, 825, 'Læsø', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (95, 840, 'Rebild', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (96, 846, 'Mariagerfjord', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (97, 849, 'Jammerbugt', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (98, 851, 'Aalborg', 17525);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (99, 860, 'Hjørring', NULL);

INSERT INTO ecomodel_data.kvmpris (id, komkode, komnavn, kvmpris)
VALUES (100, 999, 'Danmark', 13897);

ALTER TABLE ecomodel_data.kvmpris DROP COLUMN id;
