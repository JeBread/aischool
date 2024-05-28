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

