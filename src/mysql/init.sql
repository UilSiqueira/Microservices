-- CREATE USER 'auth_user'@'%.auth.default.svc.cluster.local' IDENTIFIED BY 'Auth123';
CREATE USER IF NOT EXISTS 'auth_user'@'%.auth.default.svc.cluster.local' IDENTIFIED BY 'Auth123';

-- CREATE DATABASE auth;
CREATE DATABASE IF NOT EXISTS auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'%.auth.default.svc.cluster.local';

USE auth;

CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('admin@gmail.com', 'Admin123');
