-- CHAPTER 03. 오라클 함수

-- 함수 (Funtion) 란 ?
-- 입력 값을 넣어 특정한 기능을 통해 결과 값을 출력

-- 사용자 정의함수 : 사용자가 필요에 의해 직접 정의한 함수
-- 내장 함수 : 오라클에서 미리 만들어 놓은 함수. 필요할 때마다 호출.
-- 내장 함수는 문자형, 숫자형, 날짜형, 변환형, NULL관련 함수, 조건 함수

-- 함수이름()
-- 함수를 실행할 때 사용하는 입력 값 : 매개변수, 인자 값

-- 문자열 함수

-- UPPER() : 괄호 안 문자 데이터를 모두 대문자로 변환하여 출력
-- LOWER() : 괄호 안 문자 데이터를 모두 소문자로 변환하여 출력

select UPPER('abcd123')
from dual;
-- dual 테이블은 임시 연산이나 함수의 결과 값 확인 용도의 테스트용 테이블

-- 실습)
select UPPER(first_name), LOWER(email)
from employees;

-- LENGTH() : 괄호 안 문자 데이터의 길이를 구하는 함수

select length('hello world')
from dual;

-- 직원의 first_name, 길이도 출력
select first_name,length(first_name)
from employees;

-- first_name의 길이 5 이상 직원 id, 이름 출력
select employee_id,first_name, length(first_name)
from employees
where length(first_name) >= 5;

-- SUBSTR() : 문자열 추출하는 함수
-- 1) SUBSTR(입력값, 시작위치, 추출길이)
-- 문자열 데이터의 시작위치부터 추출길이 만큼 출력

-- 2) SUBSTR(입력값, 시작위치)
-- 추출길이 생략시 문자열 데이터의 시작위치부터 끝까지 출력

select substr('인공지능사관학교', 5) as 사관학교
from dual;

-- 실습) 입사날짜를 연도, 월, 일 별로 잘라서 출력
select substr(hire_date, 1, 2) as 연도, substr(hire_date, 4, 2) as 월,
substr(hire_date, 7, 2) as 일
from employees;

-- Replace () : 특정 문자를 다른 문자로 바꾸어 주는 함수
-- 1) REPLACE(문자열데이터, 찾을 문자열, 치환 문자열)
-- 2) REPLACE(문자열데이터, 찾을 문자열)
-- 치환 문자열 생략 시 찾을 문자열 삭제

select replace('인공지능##사관학교', '#')
from dual;

--실습) 입사날짜 '/' 를 '-' 로, 삭제하여 출력
select replace(hire_date, '/', '-')
from employees;
select replace(hire_date, '/')
from employees;

-- CONCAT() : 두 문자열 데이터를 합치는 함수
-- 매개변수로 2개만 가능. 2개의 문자열만 합치는 함수.
-- 합성연산자 '||' 이용하면 무한대로 문자열 연결 가능

select concat('인공지능', '사관학교' || '최고')
from dual;

-- TRIM() : 입력받은 문자형 데이터의 양 끝의 공백 제거
select trim(' 여러분은 최고입니다. ')
from dual;

select replace(trim('    여 러 분 최 고    '), ' ')
from dual;

-- 숫자형 함수
-- ROUND() : 특정 위치에서 반올림하는 함수
-- 1) ROUND(대상 숫자, 반올림 위치)
-- 2) 반올림 위치 생략 시, 소수점 첫째 자리에서 반올림

select ROUND(1234.56789, 2)
from dual;

-- TRUNC () : 특정 위치에서 내림해주는 함수
-- TRUNC (대상 숫자, 내림 위치)
-- 내림 위치 생략시 소숫점 첫째 자리에서 내림

select TRUNC(1234.56789, 2)
from dual;

-- MOD () : 숫자를 나눈 나머지 값을 구하는 함수
-- MOD(대상 숫자, 나눌 숫자)
-- 홀수, 짝수 구분할 때 유용하게 사용

select MOD(10, 3) from dual;

-- 날짜형 함수
-- SYSDATE : 현재 날짜와 시간을 출력해주는 함수
-- 입력 시 바로 출력, 현재 시간을 초다누이까지 출력 가능.
-- 날짜형 함수는 연산이 가능.
-- 날짜 데이터끼리는 연산 불가.

select sysdate
from dual;

-- 날짜 형식 세팅
-- 도구 > 환경설정 > 데이터베이스 > NLS > 날짜형식 > YYYY-MM-DD HH24:MI:SS

select sysdate as 현재, sysdate -1 as 어제
-- sysdate + sysdate -> 날짜 데이터끼리는 연산 불가.
from dual;

-- 날짜데이터 활용 ( 실무 )
select sysdate as 현재,
sysdate + 1 as 내일,
sysdate + 1 / 24 as 한시간더함,
sysdate + 1 / 24 / 60 as 일분더함,
sysdate + 1 / 24 / 60 / 60 as 일초더함
from dual;

-- ADD_MONTHS () : 몇 개월 이후 날짜를 구하는 함수
-- ADD_MONTHS (날짜데이터, 더하거나 뺄 개월수)

select sysdate as now, ADD_MONTHS(sysdate, -1) as "1개월 전",
ADD_MONTHS(sysdate, 6) as "6개월 후"
from dual;

-- 변환형 함수
-- 형변환 형태 종류

-- 암시적 형변환 : 데이터베이스가 자동으로 형변환을 해주는 것
select salary * 12
from employees;

-- 명시적 형변환 : 데이터 변환 형 함수를 사용해서 사용자가 직접 자료형 지정

-- TO_CHAR () : 날짜, 숫자 데이터를 문자 데이터로 변환
-- TO_CHAR( 변환할 데이터, 출력 형태 )
select salary as 급여정보, TO_CHAR(salary, 'L999,999')
from employees;

-- TO_NUMBER () : 문자 데이터를 숫자 데이터로 변환하는 함수
-- TO_NUMBER (문자열 데이터, 인식 될 숫자 형태)

select TO_NUMBER('1,000', '9999') + 500
from dual;

-- TO_DATE () : 문자 데이터를 날짜 데이터로 변환하는 함수
-- TO_date(문자열 데이터, 인식될 날짜 형태)
select TO_DATE('2024/05/31', 'YYYY-MM-DD')
from dual;

-- NULL 처리 함수
-- NVL() / NVL2() : NULL 값을 대체할 수 있는 함수
-- 1) NVL(NULL인지 여부 검사할 데이터<1>, <1>이 NULL인 경우 반환할 데이터<2>)
select first_name, department_id from employees;

select first_name, department_id, NVL(department_id, 0)
, NVL2(department_id, '있음', '없음')
from employees;

-- 2) NVL2(NULL인지 여부 검사할 데이터<1>, <1>이 NULL이 아닌 경우 반환할 데이터<2>
-- , <1>이 NULL인 경우 반환할 데이터<3>)

-- 실습) 보너스가 null인 경우 숫자 0으로 출력
select commission_pct, NVL(commission_pct, 0)
from employees;

-- 실습2) 직원id, first_name, manager_id 출력. 매니저 없으면 '대표' 있으면 '직원'
select employee_id, first_name, manager_id ,NVL2(manager_id, '직원', '대표')
from employees;









