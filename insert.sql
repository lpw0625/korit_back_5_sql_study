use `db_study`; #데이터 베이스를 선택하는 명령어.  세미클론을 찍어줘야함.

insert into student_tb(student_id, name, age, address)  values(0,'이평원', 30,'양산시 물금읍'); #매개변수라고 생각하자.
insert into student_tb(address, name, age, student_id)  values('양산시 물금읍', '이평투' ,30, 1); 
insert into student_tb( name, address )  values('이평투'); 
insert into student_tb values(0,'이평쓰리', null,null);
insert into student_tb values(0,'이평쓰리', null,null), (0,'이평쓰리', null,null);

insert into 
	student_tb 
    (student_id, name, age, address)
values
	(0,'이평쓰리', null,null), 
	(0,'이평쓰리', null,null);

 
-- 컴포지드 프라이머리 키 -- 프라이머리 키가 두개가 있을 경우 두개의 키가 하나의 프라이머리 키로 합친다.