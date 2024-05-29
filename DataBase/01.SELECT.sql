-- CHAPTER 01. SELECT
-- SQL 주석은 --

select first_name from employees;

/* 
1. sql문은 대소문자 구분 없음.
2. 띄어쓰기나 줄바꿈 또한 명령어 수행에 영향없음.
3. SQL 문장 끝에는 무조건 ;(세미콜론)
4. SQL 실행 단축키  ctrl + Enter
*/

-- 직원테이블에서 직원의 email --
select email from employees;

-- SELECT절 기본 사용 방법
-- SELECT   조회할 컬럼명1, 컬럼명2, ...
-- FROM     조회할 테이블

-- 직원테이블에서 직원id, firstname, phonenumber, salary 출력
select employee_id, first_name, phone_number, salary from employees;

-- * -> 전체를 의미
-- 직원 테이블의 전체 정보 출력
select * from employees;

-- 부서테이블의 전체 정보 출력하고 행의 갯수가 몇 개입니까?
select * from departments;

-- 실습1) 직원테이블에서 직원ID, firstname, managerID
select employee_id, first_name, manager_id from employees;
-- 실습2) 부서테이블에서 부서ID, 부서명, 위치ID
select department_id, department_name, location_id from departments;

select department_id from employees;

-- 데이터 중복 제거하기
-- distinct
select distinct department_id from employees;

-- 직원 테이블에서 job_id 중복 제거
select distinct job_id from employees;

select distinct job_id, department_id from employees;
-- distinct 뒤에 2개 이상의 컬럼을 적게 되면
-- 한 쪽 컬럼에 중복이 있어도 다른 쪽 컬럼의 값이 다르면 다르게 취급.

-- tip !
-- 컬럼에 숫자 연산 가능 ( +, -, *, / )
select first_name, salary from employees;

select first_name, salary, salary*12 from employees;

-- 별칭 사용하기
-- Alias 라고 하며 한눈에 보기 좋게 설정.
-- AS 키워드로 별칭 지정.

-- 1. SELECT 컬럼 별칭
-- 2. SELECT 컬럼 "별칭"
-- 3. SELECT 컬럼 AS 별칭
-- 4. SELECT 컬럼 AS "별칭"

select first_name as 이름, (salary*12) as "AnnSal" from employees;

-- 직원의 이름과 입사일, 입사일 다음날 정보 출력
select first_name, hire_date ,(hire_date + 1) as 입사일다음날 from employees;

-- order by 절
-- 특정 컬럼을 기준으로 정렬된 상태로 출력.
-- SQL 실행순서에서 가장 마지막에 실행.
-- 별도로 정렬방식 지정하지 않으면 기본적으로 오름차순(ASC).

select * from employees order by salary ASC;

-- 최근 입사한 날짜 기준 직원 이름과 입사날짜 출력
select first_name, hire_date from employees order by hire_date DESC;

-- 직원ID, 부서ID, 이름, 급여 순으로 출력. 단 부서ID는 오름차순, 급여는 내림차순.
select employee_id, department_id, first_name, salary from employees
order by department_id ASC, salary DESC;

-- NULL 이란 ?
-- 데이터의 값이 완전히 비어있는 상태.
-- 값이 존재하지 않거나 정해지지 않은 것을 의미함.
-- 숫자 0 과 빈 문자열 ""은 NULL 값이 아님.
-- NULL과 연산하면 결과 값은 무조건 NULL.
-- NULL 과 비교하면 무조건 false.

select employee_id, commission_pct, (commission_pct * 2) as up_bonus from employees;
-- 값이 존재하지 않기 때문에 연산 불가.





