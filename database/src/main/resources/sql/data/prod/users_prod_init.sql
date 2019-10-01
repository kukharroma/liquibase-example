--liquibase formatted sql
--changeset yourProjectName:users_prod_init runOnChange:false context:prod

INSERT INTO users  (id, email, password, money) VALUES

(1, 'roma@gmail.com',  '1', 0),
(2, 'imant@gmail.com', '2', 0),
(3, 'vadym@gmail.com', '3', 0)

ON CONFLICT DO NOTHING;