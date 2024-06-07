-- CHAPTER 08. TCL (Transaction Control Language)

-- 트랜잭션이란 ?
--> 데이터베이스의 상태를 변화시키기 위해서 수행하는 최소 수행 단위.
-- 업무를 처리하기 위한 최소 수행 단위.

-- 트랜잭션의 4가지 특성 - ACID
-- Atomicity (원자성) : All or Nothing, 모두 실행되거나 전혀 실행되지 않거나
-- Consistency (일관성) : 언제나 일관성있는 상태로 유지 하는 것.
-- Isolation (고립성) : 트랜잭션 실행 시 다른 트랜잭션은 영향을 받지 않는 것.
-- Durability (지속성) : 성공적으로 수행된 트랜잭션은 영원히 반영되는 것.

-- TCL 명령어
-- COMMIT : DB에 영구적으로 저장, 마지막 COMMIT 시점 이후의 트랜잭션 결과 저장.
-- ROLLBACK : 트랜잭션 취소, 마지막 COMMIT 시점까지만 복구.
-- SAVEPOINT : 하나의 트랜잭션을 작게 분할하여 저장하는 기능을 수행.

-- 테이블 복사
CREATE TABLE TCL_EMP AS SELECT * FROM employees;
-- 제약조건 PK, FK 까지는 복사 안됨.
-- 오로지 데이터만 복사.

select * from TCL_EMP;

DELETE FROM TCL_EMP
WHERE employee_id = 100;

ROLLBACK; -- 되돌리는 명령어
COMMIT;
ROLLBACK;

DELETE FROM TCL_EMP
WHERE employee_id = 101;

select * from TCL_EMP;
COMMIT;

-- 읽기 일관성이란 ?
-- 트랜잭션이 완료되기 전까지 데이터를 직접 조작하는 세션 외에
-- 다른 세션에서는 데이터 조작 전 상태의 데이터만 조회 가능.
-- 확정된 데이터만 검색 가능.
-- 이것을 '읽기 일관성을 보장한다' 라고 합니다.

-- LOCK 이란 ?
-- 세션에서 조작중인 데이터는 트랜잭션이 완료 (COMMIT, ROLLBACK)이 되기 전까지는
-- 다른 세션에서는 해당 데이터를 조작할 수 없는 상태
--> 둘 이상의 세션이 같은 행을 조작하려고 할 때 충돌하는 현상.

-- 테이블 복사
CREATE TABLE TCL_DEP AS SELECT * from departments;

select * from TCL_DEP;

UPDATE TCL_DEP SET department_name = 'BigData'
where department_id = 100;

-- 두 개 세션이 접속을 했을 때 서로 다른 세션에서 같은 행을 조작을 하게 되면
-- 먼저 조작을 하게 되는 친구가 커밋하기 전에는 작업 불가.

-- 같은 부서에서 일을 하는데 커밋 안하고 퇴근하면
-- 다른 사람은 야근해도 아무것도 반영 불가.

-- 커밋을 잘 반영해줘야 한다.

select * from TCL_DEP;




