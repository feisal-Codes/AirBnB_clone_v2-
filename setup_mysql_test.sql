--  MySQL server 
-- tests should pass even if they do exist (DB and tables)

-- create database hbnb_test_db
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- creates new user
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- grant hbnb_dev all privilege on hbnb_test_db database
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- grant hbnb_test SELECT privilege on performance_schema database
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- enables smooth refresh
FLUSH PRIVILEGES;