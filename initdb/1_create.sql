CREATE TABLE users
(
  user_id bigserial,
  password text,
  insert_date timestamp with time zone,
  update_date timestamp with time zone,
  PRIMARY KEY(user_id)
);