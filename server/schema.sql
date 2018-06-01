DROP DATABASE IF EXISTS stylishDB;

CREATE DATABASE stylishDB;

USE stylishDB;

CREATE TABLE products (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  brand varchar(20) NOT NULL,
  imgLink varchar(50) NOT NULL,
  price int,
  style varchar(25),
  type varchar(10),
  gender varchar (1),
  starCount int,
  PRIMARY KEY (id)
);

CREATE TABLE colors (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product_color (
  FOREIGN KEY product_id
    REFERENCES products(id),
  FOREIGN KEY color_id
    REFERENCES colors(id)
);

CREATE TABLE sizes (
  id int NOT NULL AUTO_INCREMENT,
  size varchar(5) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product_size (
  FOREIGN KEY products_id
    REFERENCES products(id),
  FOREIGN KEY size_id
    REFERENCES sizes(id)
)
