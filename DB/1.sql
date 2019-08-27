CREATE SCHEMA `bitcamp` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
-- 회원
CREATE TABLE `bitcamp`.`mem_c` (
	`idx_m`   INT(7)      NOT NULL, -- 회원번호
	`id`      VARCHAR(12) NOT NULL, -- 아이디
	`pw`      VARCHAR(16) NOT NULL, -- 비밀번호
	`name`    VARCHAR(20) NOT NULL, -- 이름
	`phone`   INT(15)     NOT NULL, -- 전화번호
	`regdate` DATETIME    NULL      -- 가입날짜
);

-- 회원
ALTER TABLE `bitcamp`.`mem_c`
	ADD CONSTRAINT `PK_mem_c` -- 회원 기본키
		PRIMARY KEY (
			`idx_m` -- 회원번호
		);
        
ALTER TABLE `bitcamp`.`mem_c` 
CHANGE COLUMN `idx_m` `idx_m` INT(7) NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `regdate` `regdate` DATETIME NULL DEFAULT NOW() ;

        
-- 관리자
CREATE TABLE `bitcamp`.`admin` (
	`idx_a`   INT(7)      NOT NULL, -- 회원번호
	`id`      VARCHAR(12) NOT NULL, -- 아이디
	`pw`      VARCHAR(16) NOT NULL, -- 비밀번호
	`name`    VARCHAR(20) NOT NULL, -- 이름
	`regdate` DATETIME    NULL      -- 가입날짜
);

-- 관리자
ALTER TABLE `bitcamp`.`admin`
	ADD CONSTRAINT `PK_admin` -- 관리자 기본키
		PRIMARY KEY (
			`idx_a` -- 회원번호
		);        
        
ALTER TABLE `bitcamp`.`admin` 
CHANGE COLUMN `idx_a` `idx_a` INT(7) NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `regdate` `regdate` DATETIME NULL DEFAULT NOW() ;


        
-- 회원_탈퇴
CREATE TABLE `bitcamp`.`mem_o` (
	`idx_mem` INT(7)      NOT NULL, -- 회원번호
	`id`      VARCHAR(12) NOT NULL, -- 아이디
	`pw`      VARCHAR(16) NOT NULL, -- 비밀번호
	`name`    VARCHAR(20) NOT NULL, -- 이름
	`phone`   INT(15)     NULL,     -- 전화번호
	`regdate` DATETIME    NULL,     -- 가입날짜
	`outdate` DATETIME    NULL      -- 탈퇴날짜
);

-- 회원_탈퇴
ALTER TABLE `bitcamp`.`mem_o`
	ADD CONSTRAINT `PK_mem_o` -- 회원_탈퇴 기본키
		PRIMARY KEY (
			`idx_mem` -- 회원번호
		);    
        
ALTER TABLE `bitcamp`.`mem_o` 
CHANGE COLUMN `outdate` `outdate` DATETIME NULL DEFAULT NOW() ;

drop table `bitcamp`.`mem_c`;
drop table `bitcamp`.`mem_o`;
drop table `bitcamp`.`mem`;

-- 회원
CREATE TABLE `bitcamp`.`mem` (
	`idx_m`   INT(7)      NOT NULL, -- 회원번호
	`id`      VARCHAR(50) NOT NULL, -- 아이디
	`pw`      VARCHAR(45) NOT NULL, -- 비밀번호
	`name`    VARCHAR(20) NOT NULL, -- 이름
	`phone`   INT(15)     NOT NULL, -- 전화번호
	`code`    VARCHAR(45) NULL,     -- 코드
	`verify`  VARCHAR(1)  NULL     DEFAULT 'N', -- 인증여부
	`regdate` DATETIME    NULL     DEFAULT NOW(), -- 가입날짜
	`out`     VARCHAR(1)  NULL     DEFAULT 'N' -- 탈퇴여부
);

-- 회원
ALTER TABLE `bitcamp`.`mem`
	ADD CONSTRAINT `PK_mem` -- 회원 기본키
		PRIMARY KEY (
			`idx_m` -- 회원번호
		);

ALTER TABLE `bitcamp`.`mem`
	MODIFY COLUMN `idx_m` INT(7) NOT NULL AUTO_INCREMENT;
    
ALTER TABLE `bitcamp`.`mem`
	AUTO_INCREMENT = 1;
ALTER TABLE `bitcamp`.`admin`
	AUTO_INCREMENT = 1;    
-- Alter TABLE `bitcamp`.`admin` varchar(20)으로 변경함.

select * from bitcamp.mem;
     
select * from bitcamp.admin;
