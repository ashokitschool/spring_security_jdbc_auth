-- Create users table

CREATE TABLE `users` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(120) NOT NULL,
  `enabled` TINYINT(1) NOT NULL,
  PRIMARY KEY (`username`)
);


-- Create authorities table 

CREATE TABLE `authorities` (
  `username` VARCHAR(50) NOT NULL,
  `authority` VARCHAR(50) NOT NULL,
  KEY `username` (`username`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`)
  REFERENCES `users` (`username`)
);


-- insert below records into table

insert into users values ('admin', '$2a$12$0l.1TapVc7dR9mRwoCuWCO3GP4ekxrmfvtYVxx8VhXRbOznIrwNfu',  1);
insert into users values ('user', '$2a$12$mZlgVUBTMMfZKQNhxvq4PO1u7syQ40RkVUzCDSSbwJmEr09KcJybW',  1);

insert into authorities values ('admin', 'ROLE_ADMIN');
insert into authorities values ('admin', 'ROLE_USER');
insert into authorities values ('user', 'ROLE_USER');