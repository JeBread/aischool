-- CHAPTER 02. WHERE

-- WHERE 절 기본 사용방법
-- SELECT 조회할 컬럼명, ... FROM 조회할 테이블 WHERE 조건식

-- 실습 ) 직원 id가 105인 직원의 이름 출력
select first_name, last_name from employees where employee_id = 105;

