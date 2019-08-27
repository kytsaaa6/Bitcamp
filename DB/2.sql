-- 19-08-26 Monday

SELECT * FROM bitcamp.admin;
desc bitcamp.admin;
insert into bitcamp.admin (id, pw, name) 
values ('test', 1111, 'tester')
;

delete from bitcamp.admin;

-- dummy data for member
insert into bitcamp.mem (id, pw, name, phone, code, verify) 
values ('test', 1111, 'tester', '010-1234-5678', 'testttt', 'Y')
;
select * from bitcamp.mem;
desc bitcamp.mem;

ALTER TABLE `bitcamp`.`mem` 
CHANGE COLUMN `regdate` `regdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ;

delete from bitcamp.mem where id like '%at%';

update `bitcamp`.`mem` 
set verify = 'N'
where idx_m=5;

