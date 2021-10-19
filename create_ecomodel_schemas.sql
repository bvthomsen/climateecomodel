/*

  How to execute this template script:

  1) open it in a text editor that support UTF-8 Character set

  2) Search for every instance of {ecomodel_admin} and replace it with the chosen name for the "admin" schema

  3) Search for every instance of {ecomodel_data} and replace it with the chosen name for the "data" schema

  4) Search for every instance of {ecomodel_results} and replace it with the chosen name for the "results" schema

  5) Save it under another name thanCreate a new database in your Postgres database system and  

*/



CREATE EXTENSION IF NOT EXISTS postgis;

DROP SCHEMA IF EXISTS {ecomodel_admin} CASCADE;
CREATE SCHEMA {ecomodel_admin};

DROP SCHEMA IF EXISTS {ecomodel_data} CASCADE;
CREATE SCHEMA {ecomodel_data};

DROP SCHEMA IF EXISTS {ecomodel_results} CASCADE;
CREATE SCHEMA {ecomodel_results};

SET SEARCH PATH {ecomodel_admin}, pg_catalog;



