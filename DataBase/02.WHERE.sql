-- CHAPTER 02. WHERE

-- WHERE 절 기본 사용방법
-- SELECT 조회할 컬럼명, ... FROM 조회할 테이블 WHERE 조건식

-- 실습 ) 직원 id가 105인 직원의 이름 출력
select first_name, last_name from employees where employee_id = 105;

-- 실습2) 부서테이블에서 매니저 아이디가 100인 부서이름과 부서아이디 출력
select department_name, department_id from departments where manager_id = 100;

-- 실습 ) 직원테이블에서 급여가 9000인 직원의 ID, 직원 이름, 급여 정보 출력
select employee_id, first_name, salary from employees where salary = 9000;

-- 산술 연산자 +, -, *, /
select salary * 2 from employees;

-- 비교 연산자 >, >=, <, <=
-- 급여 5000 이하 직원 이름과 급여 정보
select first_name, salary from employees where salary <= 5000;
-- 연봉 50000 이하 직원 이름과 연봉 정보
select first_name, salary*12 as 연봉 from employees where (salary*12) <= 50000;

-- 등가 비교 연산자
-- = : 같다
-- !=, <>, ^= : 같지 않다
-- NOT a = b : 같지 않다

-- 실습) 직업 아이디가 IT_PROG가 아닌 직원의 이름과 직업 아이디 출력
select first_name, job_id from employees where job_id != 'IT_PROG';

-- 논리연산자 (참이냐 거짓이냐)
-- 2개 이상의 조건이 있을 때
-- AND : 조건을 모두 만족하는 경우 True
-- OR : 하나의 조건이라도 만족하면 True

-- 부서아이디 90 급여 5000 이상인 직원 아이디와 이름 출력
select employee_id, first_name, salary, department_id
from employees where department_id = 90 AND salary >= 5000;

-- 부서 아이디 100이거나 입사일이 06년 02월 02일 이후 입사한 직원 이름과 입사일 출력
select first_name, hire_date, department_id
from employees
where department_id = 100 or hire_date >= '06-02-02';

-- 부서 ID 100이거나 90인 직원 중 직원 ID가 101인 직원의 ID, 이름, 연봉 출력
-- AND 연산자가 OR 연산자보다 우선 순위가 높다.
select employee_id, first_name, (salary*12) as AnnSal
from employees
where (department_id = 100 or department_id = 90) AND employee_id = 101;

-- NULL 관련 연산자
-- is null : 데이터 값이 NULL인 값을 조회
-- is not null : 데이터 값이 NULL이 아닌 값을 조회

select first_name, commission_pct from employees where commission_pct is not null;

-- department_id 가 없는 직원의 이름은 ?
select first_name from employees where department_id is null;

-- SQL 연산자
-- IN, BETWEEN, LIKE

-- IN 연산자 : 특정 컬럼에 포함된 데이터를 여러 개 조회할 때 활용
-- '=' + 'OR'.   IN 에 NULL은 제외.

-- 직원 테이블에서 부서 ID가 30 이거나 50이거나 90인 직원의 모든 정보 출력
select * from employees where department_id in (30, 50, 90);

-- 매니저 아이디 100, 102, 103인 직원의 이름과 매니저 아이디 출력
select first_name, manager_id
from employees
where manager_id in (100, 102, 103);

-- NOT IN
-- IN 뒤에 조건에 해당하지 않는 데이터 출력
-- '!' + 'AND'
-- NOT IN 을 사용할 때는 null 값을 주게 되면 값이 아예 안 나온다.


select first_name, manager_id
from employees
where manager_id not in (100, 120, 121);

-- 실습) 직업아이디 AD_VP이거나 ST_MAN인 직원의 이름과 직업 아이디 출력
select first_name, job_id
from employees
where job_id in ('AD_VP', 'ST_MAN');

-- 실습) 매니저 아이디 145, 146, 147, 148, 149 아닌 직원 이름과 매니저 아이디 출력
select first_name, manager_id
from employees
where manager_id not in (145, 146, 147, 148, 149);

select first_name, manager_id
from employees
where manager_id not between 145 and 149;

-- BETWEEN a AND b
-- 최소값 '이상' 최대값 '미만'
-- 일정 범위 내의 데이터를 조회할 때 사용
-- between 최소값 and 최대값

-- 실습)
select first_name, salary
from employees
where salary between 10000 and 20000;

-- 실습) 05년에 입사한 직원의 이름과 입사일 출력
select first_name, hire_date
from employees
where hire_date between '05-01-01' and '05-12-31';

select first_name, hire_date
from employees
where hire_date like '05%';

-- LIKE 연산자
-- 일부 문자열이 포함된 데이터를 조회할 때 사용.
-- %, _ 라는 와일드 카드를 이용해서 매칭연산 진행.

-- % : 길이와 상관없이 모든 문자 데이터
-- _ : 어떤 값이든 상관 없이 한 개의 문자 데이터

-- 실습)
select first_name, phone_number
from employees
where phone_number LIKE '650%';

--1.
select first_name
from employees
where first_name LIKE 'S%n';

--2. it로 이름끝나는 4글자 직원
select first_name
from employees
where first_name LIKE '__it';

--3. 두번째 글자 e인 직원
select first_name
from employees
where first_name LIKE '_e%';

--4. 1월 입사 직원
select first_name, hire_date
from employees
where hire_date like '___01___';





