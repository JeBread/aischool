-- CHAPTER 10. 서브쿼리

-- 서브쿼리란 ?
--> SQL문을 실행하는데 있어서 필요한 데이터를 추가로 조회하기 위해
-- SQL 내부에서 사용하는 SELECT 문.

-- 서브쿼리는 메인쿼리 안에 포함된 종속적인 관계

-- 메인쿼리 : 서브쿼리의 결과값을 사용하여 기능을 수행
-- 서브쿼리 : 메인쿼리의 조건식에 들어가는 값을 의미

-- 실습) firstname이 jack인 직원의 급여 출력
select first_name, salary
from employees
where first_name = 'Jack';

-- Jack의 급여보다 낮은 직원의 이름과 급여를 출력
-- 서브쿼리 이용
select first_name, salary
from employees
where salary < ( select salary
                 from employees
                 where first_name = 'Jack' ) ;
        
select first_name, salary
from employees
where first_name = 'James';


select first_name, salary
from employees
where salary <= ( select salary
                 from employees
                 where first_name = 'James' ) ;
-- ORA-01427 : single-row subquery returns more than one row
-- 단일행 서브쿼리는 하나의 행만 출력 할 수 있음.

-- 서브쿼리의 특징
-- 1. 서브쿼리는 연산자와 같은 비교 또는 조회 대상의 오른쪽에 놓이며 ()로 묶어서 사용
-- 2. 서브쿼리의 SELECT 절에 명시한 컬럼은
-- 메인쿼리의 비교 대상과 같은 자료형과 개수를 지정해야 함.
-- 3. 서브쿼리에 있는 SELECT 문의 결과 행 수는 함께 사용하는 메인쿼리의 연산자 종류와
-- 호환 가능해야 한다.
--> 즉 단 하나의 데이터로만 연산이 가능한 연산자라면 서브쿼리의 결과 행 수도 하나여야 함.
--> 연산자와 함께 상호 작용하는 방식에 따라서 단일행 서브쿼리와 다중행 서브쿼리로 나뉜다.

-- 단일행 서브쿼리란 ?
-- 실행 결과가 단 하나의 행인 서브쿼리
-- =, >, >=, <, <=, <>, !=, ^= (단일행 연산자)

-- 실습) Nancy보다 빨리 입사한 직원의 이름과 입사일 조회
select first_name, hire_date
from employees
where hire_date < (select hire_date from employees where first_name = 'Nancy');


-- 실습) 평균 급여보다 높은 급여를 받는 직원의 이름과 급여 정보 조회
select first_name, salary 
from employees
where salary > (select AVG(salary) from employees);

-- 단일행 연산자로는 하나의 결과 값만 비교가 된다.
-- 서브쿼리의 결과 값이 2개 이상이면 단일행 연산자로는 비교가 안된다.
-- 그래서 다중행 연산자로 비교 해야 한다.

-- 다중행 서브쿼리란 ?
-- 실행 결과 행이 여러개로 나오는 서브쿼리.
-- 단일행 연산자 사용불가. 다중행 연산자 사용.

-- 다중행 연산자의 종류
-- IN : 메인쿼리의 데이터가 서브쿼리의 결과 중 하나라도 일치한 데이터가 있으면 True 반환.
--> IN (서브쿼리)
-- ANY : 메인쿼리의 조건식을 만족하는 서브쿼리의 결과가 하나 이상이면 True.
--> 비교연산자 ANY (서브쿼리)
-- ALL : 메인쿼리의 조건식을 서브쿼리의 결과 모두가 만족하면 True.
--> 비교연산자 ALL (서브쿼리)
-- EXISTS : 서브쿼리 결과 값이 존재하는지 여부를 확인. (즉 행이 하나 이상이면 True)
--> EXISTS (서브쿼리)

-- 실습) 각 부서별 최고 급여 정보 출력
select department_id, MAX(salary)
from employees
group by department_id;

-- 각 부서별 최고 급여와 동일한 급여를 받는 직원 누군지 정보 출력
-- (부서id, first_name, 급여 정보)
select department_id, first_name, salary
from employees
where salary IN (select MAX(salary)
from employees
group by department_id);

-- 부서별 최고 급여와 같은 급여를 가지는 모든 직원이 출력된 것.
-- IN 서브쿼리 결과에 존재하는 값들 중 일치해야 한다.

-- ANY 연산자 활용
select department_id, first_name, salary 
from employees
where salary = ANY (select MAX(salary) from employees group by department_id);

-- IN 연산자와 같은 결과 값이 나온다.
-- 조건을 만족하는 결과가 하나라도 True면 True.
--> ANY에 같다라는 비교 연산자를 사용하면 IN 연산자와 같은 결과 값 출력

-- 부서별 최고 급여가 하나라도 True면 True.
-- 서브쿼리의 값들 중 어떤 하나의 값보다 메인쿼리의 값이 큰 값을 가지면
-- 모든 값이 출력이 된다.
-- 즉 부서별 최고 급여들 중 최소값보다 높은 값은 다 출력이 된다.

-- ALL 사용
select department_id, first_name, salary 
from employees
where salary >= ALL (select MAX(salary) from employees group by department_id);

-- ALL : 서브 쿼리의 결과에 존재하는 모든 값들에 대해 조건을 만족해야 함.
-- 메인쿼리는 서브쿼리의 모든 결과 값을 만족해야 함.
-- 서브쿼리의 결과 값중 가장 큰 값인 24000과 비교해서 크거나 같은 데이터 출력

-- EXISTS 연산자는 존재 여부만 확인
select first_name, department_id from employees
where EXISTS (select first_name from employees where department_id = 110);

-- 존재하면 메인쿼리 결과 값 출력. 존재하지 않으면 출력하지 않음.
