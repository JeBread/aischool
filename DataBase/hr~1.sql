DROP TABLE 학생인적사항 ;
DROP TABLE 수강생정보 ; 
DROP TABLE 성적표 ; 

CREATE TABLE 수강생정보 (
학생ID   VARCHAR2(9) PRIMARY KEY , 
학생이름  VARCHAR2(50) NOT NULL , 
소속반    VARCHAR2(5) 
); 

CREATE TABLE 성적표 ( 
    학생ID VARCHAR2(9) , 
    과목   VARCHAR2(30) , 
    성적   NUMBER  , 
    CONSTRAINT PK_성적표 PRIMARY KEY(학생ID , 과목) , 
    CONSTRAINT FK_성적표 FOREIGN KEY(학생ID) REFERENCES 수강생정보(학생ID) 
)  ; 

INSERT INTO 수강생정보 VALUES ('SMHRD1' , '조준용' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD2' , '박수현' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD3' , '박병관' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD4' , '이명훈' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD5' , '나예호' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD6' , '선영표' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD7' , '최영화' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD8' , '송찬호' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD9' , '임승환' , 'C') ; 

INSERT INTO 성적표 VALUES('SMHRD1'  ,'JAVA' , 90); 
INSERT INTO 성적표 VALUES('SMHRD1'  ,'DATABASE' , 85); 
INSERT INTO 성적표 VALUES('SMHRD1'  ,'PYTHON' , 100); 
INSERT INTO 성적표 VALUES('SMHRD2'  ,'JAVA' , 100); 
INSERT INTO 성적표 VALUES('SMHRD2'  ,'DATABASE' , 100); 
INSERT INTO 성적표 VALUES('SMHRD2'  ,'PYTHON' , 20); 
INSERT INTO 성적표 VALUES('SMHRD3'  ,'JAVA' , 100); 
INSERT INTO 성적표 VALUES('SMHRD3'  ,'DATABASE' , 100); 
INSERT INTO 성적표 VALUES('SMHRD3'  ,'PYTHON' , 20); 
INSERT INTO 성적표 VALUES('SMHRD4'  ,'JAVA' , 85); 
INSERT INTO 성적표 VALUES('SMHRD4'  ,'DATABASE' , 40); 
INSERT INTO 성적표 VALUES('SMHRD4'  ,'PYTHON' , 60); 
INSERT INTO 성적표 VALUES('SMHRD5'  ,'JAVA' , 100); 
INSERT INTO 성적표 VALUES('SMHRD5'  ,'DATABASE' , 100); 
INSERT INTO 성적표 VALUES('SMHRD5'  ,'PYTHON' , 100); 
INSERT INTO 성적표 VALUES ( 'SMHRD6' , 'JAVA' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'SMHRD6' , 'DATABASE' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'SMHRD6' , 'PYTHON' , NULL ) ; 

COMMIT;

select * from 수강생정보;
select * from 성적표;

-- GROUP BY 는 특정 컬럼을 기준으로 행을 묶어서(그룹화) 각각 단일행으로 표현

-- 4. select
-- 1. from
-- 2. where
-- 3. group by
select 소속반, COUNT(소속반)
from 수강생정보
group by 소속반;

-- 실습) 소속반 별 학생 인원수 조회
select 소속반, COUNT(소속반) as 인원수
from 수강생정보
group by 소속반;

-- 시험문제)
-- SQL 작성 순서
-- SELECT > FROM > WHERE > GROUP BY > HAVING > ORDER BY

-- ** SQL 실행 순서
-- FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY

-- GROUP BY 실습 ) 성적표 테이블에서 과목별 최고 성적과 최저 성적 출력.
select 과목, MAX(성적), MIN(성적)
from 성적표
GROUP BY 과목;

-- GROUP BY절을 사용할 때 유의점
-- 1. 실제 출력되는 행이 감소하기 때문에 GROUP BY절 보다 늦게 실행되는
-- HAVING, SELECT, ORDER BY 절에는 출력할 수 있는 행이 제한된다.
-- 2. 대신 집계함수로 처리하는 컬럼은 사용이 가능.

-- 실습) 성적표 테이블에서 학생별 평균 점수 출력 (소수점 1자리까지만)
select 학생id, ROUND(AVG(성적), 1)
from 성적표
group by 학생id;

-- 실습) 성적표 테이블에서 학생별로 JAVA, DATABASE 과목 성적의 합만 출력
select 학생id, SUM(성적) 
from 성적표
where 과목 = 'JAVA' OR 과목 = 'DATABASE'
group by 학생id
order by 학생id;
-- WHERE 과목 in ('JAVA', 'DATABASE')로도 쓸 수 있음.

-- HAVING절 : GROUP BY절이 존재할 때만 사용가능.
-- 집계가 완료된 대상을 조건을 통해 필터링 하는 문법.
-- 조건이 참인 결과만 출력이 된다는 점에서는 WHERE 절과 비슷하지만,
-- HAVING 절은 그룹화(GROUP BY)된 대상에서 출력이 된다는 점에서 다르다.

-- 실습) 학생별 평균 성적이 75이하인 학생들만 출력
select 학생id, ROUND(AVG(성적), 1) as 평균성적
from 성적표
group by 학생id
HAVING ROUND(AVG(성적),1) <= 75;
-- WHERE 절은 GROUP BY 보다 먼저 실행이 되기 때문에 집계함수 사용 불가.
-- 그룹화된 대상에서 조건을 찾는다. (HAVING절)

-- 실습) 수강생정보 테이블에서 소속반 별 인원수가 3명 이상인 반만 출력
select 소속반, COUNT(*) as 인원수
from 수강생정보
group by 소속반
having COUNT(*) >= 3;

-- 실습)
select * from employees;
select department_id, max(salary*12) as 연봉
from employees
group by department_id
having max(salary*12) >= 100000
order by max(salary*12) DESC;








