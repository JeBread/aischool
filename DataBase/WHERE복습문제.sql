-- WHERE 절 복습 문제 -- 

/*
정 리
가볍게 읽어보세요

-- [ WHERE 절 기본 사용방법 ]
-- 3. SELECT   조회할 컬럼 명1 ...
-- 1. FROM     조회할 테이블 명
-- 2. WHERE    조회할 행을 선별하기 위한 조건식

SQL에서 사용할수 있는 연산자들

1. 산술연산자 < +, -, *, / >

2. 비교연산자 
    >  : 크다 (초과)
    >= : 크거나 같다 (이상)
    <  : 작다
    <= : 작거나 같다 (이하)
    
3. 등가연산자 ( 같거나 같지않거나 )
    = : 같다
    != , <>, ^= : 같지 않다.
    NOT A = B   : 같지 않다.
    
4. 논리 연산자
    AND(그리고) : 조건을 모두 만족하는 경우 TRUE 
    OR  (혹은)  : 하나의 조건이라도 만족하는 경우 TRUE
    
5. NULL 관련 연산자
    IS NULL  : 데이터 값이 NULL 인 값을 조회
    IS NOT NULL : 데이터 값이 NULL 이 아닌 값을 조회
    
*/

-- < 문제 > 


-- 문제 1) 직원테이블에서 보너스를 0.2를 받는 직원의 이름과 급여의 정보를 출력
select first_name, salary from employees where commission_pct = 0.2;

-- 문제 2) 직원테이블에서 급여를 9000 이상 받는 직원의 EMAIL 정보만 출력
select email from employees where salary >= 9000;

-- 문제 3) 직원테이블에서 급여가 7000 이상이면서 JOB_ID가 'SA_REP'인 직원의 직원ID와 이름 출력
select employee_id, first_name from employees where salary >= 7000 AND job_id = 'SA_REP';

-- 문제 4) 부서테이블에서 매니저ID가 200, 201, 203이 아닌 직원의 부서이름을 출력
select department_id, first_name, manager_id from employees where manager_id NOT IN (200, 201, 203);

-- 문제 5) 직원테이블에서 부서ID가 없는 직원의 이름을 출력 하세요
select first_name, department_id from employees where department_id IS NULL;

-- 문제 6) 직원 테이블에서 급여가 10000 대인 직원의 이름과 급여 정보를 출력
select first_name, salary from employees where salary LIKE '1____';

-- 문제 7) JOB_ID가  IT_PROG와 FI_ACCOUNT가 아닌 직원의 이름과 JOB_ID를 출력 
select first_name, job_id from employees where job_id NOT IN ('IT_PROG', 'FI_ACCOUNT');

-- 문제 8) 급여가 10000미만이 아닌 직원의 ID와 이름을 출력
select employee_id, first_name ,salary from employees where salary >= 10000;

-- 문제 9) 직원테이블에서 부서ID가 90이고, 급여가 5000이상인 직원의 ID와 이름을 출력하기
select employee_id, first_name from employees where department_id = 90 AND salary >= 5000;

-- 문제 10) 부서가 50부서이고, 직종이 'ST_MAN'인 직원의 정보출력
-- 출력할 직원의 정보 (부서ID, FIRST_NAME, JOB_ID, SALARY)
select department_id, first_name, job_id, salary from employees
where department_id = 50 AND job_id = 'ST_MAN';
   
-- 문제 11) 직종이(JOB_ID)가 IT_PROG, AD_PRES인 직원중에서
--         급여(SALARY)가 8000이상인 직원들의 정보만 출력 
-- 출력할 직원의 정보 ( FIRST_NAME, JOB_ID, SALARY)
select first_name, job_id, salary from employees
where job_id IN ('IT_PROG', 'AD_PRES') AND salary >= 8000;

-- ** 추가문제
-- <서브쿼리>
-- 전체 직원의 평균 급여보다 급여를 많이 받는 직원 이름, job_id, 급여 조회
select first_name, job_id, salary from employees
where salary > (select AVG(salary) from employees);

-- <JOIN 문제>
-- 부서테이블, 위치테이블, 나라테이블을 INNER JOIN 하여
-- 각 부서의 부서이름, 도시, 나라이름 출력

select d.department_name, l.city, c.country_name
from departments d JOIN locations l
ON (d.location_id = l.location_id)
JOIN countries c
ON (l.country_id = c.country_id);


