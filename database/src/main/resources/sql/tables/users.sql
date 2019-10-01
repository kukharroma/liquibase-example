--liquibase formatted sql
--changeset yourProjectName:users runOnChange:true

CREATE TABLE IF NOT EXISTS users
(
    id                      BIGSERIAL PRIMARY KEY,
    email                   VARCHAR(100)    UNIQUE                             NOT NULL,
    password                VARCHAR(100)                                       NOT NULL,
    money                   NUMERIC(32, 10) DEFAULT 0                          NOT NULL,
    created                 TIMESTAMP(3)    DEFAULT (now() AT TIME ZONE 'UTC') NOT NULL
);
