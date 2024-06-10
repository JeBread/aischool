-- 객체 (object)

-- View란 ?
-- 하나 이상의 테이블에서 여러 정보를 토대로 만들어지는 '가상 테이블'.
-- 사용 목적
-- 편리성 : 자주 사용하는 SELECT 문장을 저장하기 위해 사용.
-- 보안성 : 테이블의 특정 데이터를 노출시키지 않기 위해 사용.

-- 뷰 생성 하는 방법
-- CREATE VIEW 뷰 이름
-- AS 저장할 SELECT 문

-- 사장님의 정보 (직원ID, 이름, 이메일, 직업아이디, 급여)
select employee_id, first_name, last_name, email, job_id, salary
from employees where employee_id = 100;

-- 뷰 생성 : VIEW_EMP100

CREATE VIEW VIEW_EMP100
AS select employee_id, first_name, last_name, email, job_id, salary
from employees where employee_id = 100;

-- 뷰 조회
select * from VIEW_EMP100;

-- SEQUENCE 시퀀스란 ?
-- 특정 규칙에 맞는 연속 숫자를 생성하는 객체
-- 대기 순번표처럼 계속 다음 번호를 만들어주는 역할을 한다.
-- 주로 PK 컬럼들의 유일한 값을 만들 때 활용

-- 시퀀스 사용방법
-- 시퀀스이름.CURRVAL : 마지막 생성 번호를 반환
-- 시퀀스이름.NEXTVAL : 다음 번호를 반환

-- 시퀀스 생성
CREATE SEQUENCE SEQ_DBJUN
INCREMENT BY 1 -- 1씩 증가하는 옵션.
START WITH 10 -- 시작번호는 10부터
MAXVALUE 20 -- 20까지만 번호받겠다.
MINVALUE 0 -- 최소값은 0
NOCYCLE; -- 20까지 도달하면 중단.

-- 시퀀스 조회
select * from USER_SEQUENCES;

CREATE TABLE JUN_SEQUENCE (
    ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(10),
    CLASS VARCHAR2(50)
    );
    
-- 시퀀스 활용해보기
INSERT INTO JUN_SEQUENCE (ID, NAME, CLASS)
VALUES (SEQ_DBJUN.NEXTVAL, '조준용', '웹기반스프링');

select * from JUN_SEQUENCE;





