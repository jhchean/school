grant all privilege on DB��.*to ���̵�@'%' identified by '��й�ȣ';

-- �б�
DROP SCHEMA IF EXISTS school;

-- �б�
CREATE SCHEMA school;

-- �л�
CREATE TABLE school.student (
	STUD_ID INT(11)     NOT NULL COMMENT '�й�', -- �й�
	NAME    VARCHAR(50) NOT NULL COMMENT '����', -- ����
	EMAIL   VARCHAR(50) NOT NULL COMMENT '����', -- ����
	DOB     DATE        NULL     COMMENT '��������' -- ��������
)
COMMENT '�л�';
+
-- �л�
ALTER TABLE school.student
	ADD CONSTRAINT PK_student -- �л� �⺻Ű
		PRIMARY KEY (
			STUD_ID -- �й�
		);
		
		
insert into student values(1,'����','ksb@test.co.kr','1970-1-1');
insert into student values(2,'������','dsg@test.co.kr','2000-12-12');
insert into student values(3,'�����','kky@test.co.kr','1999-12-06');
						  
select * from student;

select stud_id as student, name, email, dob
from student
where STUD_ID=2;

update student
set NAME ='����'	,EMAIL='ky@test.co.kr',DOB='1977-09-07';

delete from student where STUD_ID=2;