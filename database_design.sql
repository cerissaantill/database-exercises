CREATE DATABASE adlister;


CREATE TABLE users(
                    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    first_name VARCHAR(155) NOT NULL,
                    last_name VARCHAR(155) NOT NULL,
                    user_email VARCHAR(155) NOT NULL,
                    user_password VARCHAR(155) NOT NULL,
                    UNIQUE(first_name, last_name),
                    UNIQUE(user_email),
                    PRIMARY KEY(user_id)
);


CREATE TABLE ads(
                  ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                  description TEXT NOT NULL,
                  created_on
                    cat_id,
                  user_id,


);


CREATE TABLE categories(
                         cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         categories VARCHAR(155)
);


CREATE TABLE user_ad(
                      user_id,
                      ad_id,
                      cat_id
);