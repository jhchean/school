grant all privilege on DB명.*to 아이디@'%' identified by '비밀번호';

-- 학교
DROP SCHEMA IF EXISTS school;

-- 학교
CREATE SCHEMA school;

-- 학생
CREATE TABLE school.student (
	STUD_ID INT(11)     NOT NULL COMMENT '학번', -- 학번
	NAME    VARCHAR(50) NOT NULL COMMENT '성명', -- 성명
	EMAIL   VARCHAR(50) NOT NULL COMMENT '메일', -- 메일
	DOB     DATE        NULL     COMMENT '입학일자' -- 입학일자
)
COMMENT '학생';
+
-- 학생
ALTER TABLE school.student
	ADD CONSTRAINT PK_student -- 학생 기본키
		PRIMARY KEY (
			STUD_ID -- 학번
		);
		
		
insert into student values(1,'김사부','ksb@test.co.kr','1970-1-1');
insert into student values(2,'도깨비','dsg@test.co.kr','2000-12-12');
insert into student values(3,'김고은','kky@test.co.kr','1999-12-06');
						  
select * from student;

select stud_id as student, name, email, dob
from student
where STUD_ID=2;

update student
set NAME ='공유'	,EMAIL='ky@test.co.kr',DOB='1977-09-07';

delete from student where STUD_ID=2;