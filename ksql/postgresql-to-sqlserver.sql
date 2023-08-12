SET 'auto.offset.reset' = 'earliest';
--DEFINE oracle_db_name = 'ORAHOM';

CREATE STREAM IF NOT EXISTS STR_USER_POSTGRESQL (
    after STRUCT <
        ID VARCHAR,
        USER_NAME VARCHAR,
        E_MAIL VARCHAR,
        USER_PASSWORD VARCHAR,
        CPF VARCHAR,
        USER_ESPA VARCHAR
    >,
    op VARCHAR
) WITH (KAFKA_TOPIC='postgresql.public.user_', VALUE_FORMAT='JSON');

CREATE STREAM IF NOT EXISTS USER_POSTGRESQL AS SELECT 
    after -> ID AS ID,
    after -> USER_NAME AS USER_NAME,
    after -> E_MAIL AS E_MAIL,
    after -> USER_PASSWORD AS USER_PASSWORD,
    after -> CPF AS CPF,
    after -> USER_ESPA AS USER_ESPA
FROM STR_USER_POSTGRESQL WHERE op = 'c';

CREATE STREAM IF NOT EXISTS STR_USER_ADDRESS_POSTGRESQL (
    after STRUCT <
        ID VARCHAR,
        CEP VARCHAR,
        COUNTRY VARCHAR,
        REGION VARCHAR,
        CITY VARCHAR,
        DISTRICT VARCHAR,
        STREET VARCHAR,
        STREET_NUMBER VARCHAR,
        USER_ADDRESS_ESPA VARCHAR,
        USER_ID VARCHAR
    >,
    op VARCHAR
) WITH (KAFKA_TOPIC='postgresql.public.user_', VALUE_FORMAT='JSON');

CREATE STREAM IF NOT EXISTS USER_ADDRESS_POSTGRESQL AS SELECT 
    after -> ID AS ID,
    after -> CEP AS CEP,
    after -> COUNTRY AS COUNTRY,
    after -> REGION AS REGION,
    after -> CITY AS CITY,
    after -> DISTRICT AS DISTRICT,
    after -> STREET AS STREET,
    after -> STREET_NUMBER AS STREET_NUMBER,
    after -> USER_ADDRESS_ESPA AS USER_ADDRESS_ESPA,
    after -> USER_ID AS USER_ID
FROM STR_USER_ADDRESS_POSTGRESQL WHERE op = 'c';

CREATE STREAM IF NOT EXISTS STR_USER_PURCHASE_POSTGRESQL (
    after STRUCT <
        ID VARCHAR,
        VALUE_PURCHASE VARCHAR,
        USER_PURCHASE_ESPA VARCHAR,
        USER_ADDRESS_ID VARCHAR
    >,
    op VARCHAR
) WITH (KAFKA_TOPIC='postgresql.public.user_', VALUE_FORMAT='JSON');

CREATE STREAM IF NOT EXISTS USER_PURCHASE_POSTGRESQL AS SELECT 
    after -> ID AS ID,
    after -> VALUE_PURCHASE AS VALUE_PURCHASE,
    after -> USER_PURCHASE_ESPA AS USER_PURCHASE_ESPA,
    after -> USER_ADDRESS_ID AS USER_ADDRESS_ID
FROM STR_USER_PURCHASE_POSTGRESQL WHERE op = 'c';