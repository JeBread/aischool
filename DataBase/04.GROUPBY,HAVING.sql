-- CHAPTER 04. GROUP BY / HAVING

-- 내장 함수의 종류
-- 단일행 함수 : 입력된 하나의 행당 결과가 하나씩 나오는 함수
--> 문자형, 숫자형, 날짜형, 변환형, NULL관련 함수, 조건함수
-- 다중행 함수 : 여러 행을 입력받아 하나의 결과 값으로 출력되는 함수
--> "집계함수"라고 부름.

-- 집계함수의 특징
-- 1. NULL값을 제외.
-- 2. 그룹화(GROUP BY) 가 되어있는 상태에서만 사용 가능.

-- 집계함수의 종류
-- COUNT() : 지정 데이터의 개수 반환
-- SUM() : 지정 데이터의 총합 반환
-- MAX() : 지정 데이터의 최대값 반환
-- MIN() : 지정 데이터의 최소값 반환
-- AVG() : 지정 데이터의 평균값 반환

-- 실습)
select COUNT(employee_id) from employees
GROUP BY ();
--> employees 테이블을 하나의 그룹으로 묶은 것으로 인식 하는 것.

-- 도구 > 환경설정 > 코드편집기 > 행여백

-- 실습) 부서id의 행의 갯수
select COUNT(department_id)
from employees;

-- COUNT 함수는 * 를 사용할 수 있다. null값 포함 출력 가능.
select COUNT(*) from employees;

-- 실습1) 총 급여
select SUM(salary)
from employees;

-- 실습2) 최대/최소 급여
select MAX(salary),MIN(salary)
from employees;

-- 실습3) 부서id가 100인 직원 평균급여, 소숫점 1의 자리까지만.
select ROUND(AVG(salary), 1)
from employees
where department_id = 100;












