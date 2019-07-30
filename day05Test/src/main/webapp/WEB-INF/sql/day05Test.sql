drop table day05user;
drop table day05list;

CREATE TABLE `day05user` (
	`num` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`password` VARCHAR(50) NOT NULL,
	`email` TINYTEXT NULL,
	PRIMARY KEY (`num`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `day05list` (
	`num` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`sub` TINYTEXT NOT NULL,
	`content` TEXT NULL,
	`nalja` DATETIME NOT NULL,
	PRIMARY KEY (`num`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

--dummy
insert into day05User (name,email,password) values ('admin','admin@naver.com',1234);
insert into day05User (name,email,password) values ('user01','user01@naver.com',1234);
commit;
select * from day05User;



--dummy
insert into day05list (name,sub,content,nalja) values ('admin','test1','test1',now());
insert into day05list (name,sub,content,nalja) values ('admin','test2','test2',now());
insert into day05list (name,sub,content,nalja) values ('admin','test3','test3',now());
commit;
select * from day05list;