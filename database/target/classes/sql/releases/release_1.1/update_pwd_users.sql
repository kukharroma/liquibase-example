--liquibase formatted sql
--changeset yourProjectName:update_pwd_users runOnChange:false


UPDATE users
    SET money = '999999999'
    WHERE email IN ('roma@gmail.com', 'imant@gmail.com', 'vadym@gmail.com');