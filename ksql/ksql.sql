SET 'auto.offset.reset' = 'earliest';
--DEFINE oracle_db_name = 'ORAHOM';

CREATE STREAM IF NOT EXISTS STR_USER_ (
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

CREATE STREAM IF NOT EXISTS USER_ AS SELECT 
    after -> ID AS ID,
    after -> USER_NAME AS USER_NAME,
    after -> E_MAIL AS E_MAIL,
    after -> USER_PASSWORD AS USER_PASSWORD,
    after -> CPF AS CPF,
    after -> USER_ESPA AS USER_ESPA
FROM STR_USER_ WHERE op = 'c';