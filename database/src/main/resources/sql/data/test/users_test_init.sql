--liquibase formatted sql
--changeset yourProjectName:users_test_init runOnChange:false context:test

INSERT INTO users  (id, email, password, money) VALUES

(1, 'petro@gmail.com', '1', 0),
(2, 'andry@gmail.com', '2', 0),
(3, 'tony@gmail.com',  '3', 0)

ON CONFLICT DO NOTHING;
