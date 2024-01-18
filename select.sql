select * from student_tb;

select 
	student_id, 
    name,
    age

from 
	student_tb
where 
	not name = '이평원'
    or name = '이평투'; # from >> where >> select 순으로 
    
select
	*
from
	student_td
where
	name in ('이평원','이평투');

select
	*
from 
	student_tb
where
	student_id in(1,2,3);
    
    truncate table student_tb;
    
    /* 문제 
    10명의 학생 정보 추가 
    김도균 27 부산 금정구
    김도훈 25 부산 부산진구
    김상현 33 부산 금정구
    이재영 26 부산 남구 
    이정찬 29 부산 서구
    이지언 26 부산 부산진구
    이평원 30 경상남도 양산시
    전주환 30 부산 부산진구
    심재원 29 부산 남구
    */
    
insert into 
    student_tb 
    (student_id, name,age, address)
        
	values
        (0,'김도균',27,'부산 금정구'),
        (0,'김도훈',25,'부산 부산진구'),
        (0,'김범수',33,'부산 금정구'),
        (0,'김상현',33,'부산 금정구'),
        (0,'이재영',26,'부산 남구'),
        (0,'이정찬',29,'부산 서구'),
        (0,'이지언',29,'부산 동래구'),
        (0,'이평원',30,'경상남도 양산시'),
        (0,'전주환',30,'부산 부산진구'),
        (0,'심재원',29,'부산 남구');
        
        
select 
        *
	from 
		student_tb
            
	where
		age between 20 and 29;  # 날짜나 숫자를 넣을 때 사용.
		
	select
	*
	from 
		student_tb
	where
		age >= 30
		and age <= 39;
		
				# name like '이___'; # 글자수를 맞출때 언더바를 씀. 상관없다면 이% 로 쓴다. __%원 끝자리가 원으로 끝나는 것만 뽐아냄 %김% 이글자만 들어있는경우 
			
	select
		*
		from
			student_tb
            
		where
			name like '%도%'
			or name like '%원';
                
                #집계(그룹화)
                
select 
	address,
	count(*) as address_count
                -- count(*) : 필드 갯수가 몇개?
                #from >> where >> group by >> having >> selcet >> order by
from
	student_tb
group by
	name,
	address
                        
	#이름과 어드레스가 같이 묶인다.
                        
	# having
	-- having  
-- count(*) >= 2
                      
order by  # 제일 마지막 
	address_count desc,
	address desc;
                        
                        
	# address_count desc; : 숫자 내림차순.
	# adress desc : 글자 내림차순 
                        
                         
                
                         
               
          
                
                
                

    
    
