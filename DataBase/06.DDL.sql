-- CHAPTER 06. DDL(Data Difinition Language) 

-- DDL이란?
-- 데이터 정의어로 테이블 같은 저장소 객체를 만들거나 수정하는 언어.

-- [DDL 명령어 종류]
-- CREATE : 테이블 같은 객체를 생성하는 명령어
-- ALTER  : 테이블 같은 객체를 변경하는 명령어
-- RENAME : 테이블의 이름을 변경하는 명령어
-- TRUNCATE : 테이블의 데이터를 삭제하는 명령어
-- DROP   : 테이블같은 객체를 삭제하는 명령어

-- [ 테이블 생성시 자주 사용하는 자료형 ]
-- VARCHAR2(N) : 가변형 문자형, N크기만큼 입력 받음
-- NUMMBER(P,S) : 숫자형 값을 P자리만큼 입력받고 S자리 만큼 소수를 입력받음
--> 오라클데이터베이스 에서는 실수와 정수 모두 표현이 가능
--> 소괄호를 생략하게 되면 최대값인 38 크기가 들어감
-- DATE : 혈재 날짜 값을 입력 받음

-- 수강생정보 테이블을 확인해서 TEST_수강생정보 라는 테이블을 만들어보자!!
--> 수강생정보 테이블명을 선택후 SHIFT + F4 눌르면 테이블에 대한 정보 확인 가능

CREATE TABLE TEST_수강생정보 (
    학생ID VARCHAR2(9),
    학생이름 VARCHAR2(50),
    소속반 VARCHAR2(5)
);

SELECT * FROM TEST_수강생정보;

-- 성적표 테이블을 확인해서 TEST_성적표 라는 테이블을 만들어보자 !

CREATE TABLE TEST_성적표(
    학생ID VARCHAR2(9),
    과목 VARCHAR2(30),
    성적 NUMBER 
);

SELECT * FROM TEST_성적표;

CREATE TABLE SMHRD_LOGIN(
    ID VARCHAR2(20), 
    PW VARCHAR2(20),
    EMAIL VARCHAR2(20),
    NAME VARCHAR2(20)
); 

SELECT * FROM SMHRD_LOGIN;

-- 제약조건이란 ?
--> 테이블에 입력 가능한 데이터를 조건으로 제약하는 것
--> 데이터의 정확성을 유지하기 위한 목적으로 사용됨.
--> 제약 조건 지정 방식에 따라서 데이터의 수정이나 삭제 여부에 영향을 받음

-- [ 제약 조건 의 종류 ]
-- PRIMARY KEY(PK) : 기본키, NOT NULL + UNIQUE -> NULL불가 + 중복불가 
-- UNIQUE KEY(UK)  : 유일키, NULL 값 입력 가능, 단 중복은 불가 
-- NOT NULL : NULL값 불가능, 이 데이터는 꼭 들어가야 될 때 사용하는 것
-- CHECK : 지정한 데이터만 입력 가능
-- FOREIGN KEY(FK) : 외래키 , 두 테이블을 연결하는 키 

-- 제약조건 거는 방법
-- ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건이름 제약조건(해당컬럼) ; 

-- 테이블에 PK 제약조건 지정하기 
SELECT * FROM SMHRD_LOGIN ;

ALTER TABLE SMHRD_LOGIN ADD CONSTRAINT SMHRD_ID_PK PRIMARY KEY (ID) ;

-- 테이블의 UK 제약조건 지정하기
ALTER TABLE SMHRD_LOGIN ADD CONSTRAINT EMAIL_UK UNIQUE(EMAIL) ; 

-- 테이블에 CHECK 제약 조건 지정하기
ALTER TABLE SMHRD_LOGIN ADD CONSTRAINT PW_CHECK CHECK(LENGTH(PW) > 3) ;

-- 테이블에 FK 제약조건을 지정하기
-- ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건이름 제약조건(해당컬럼)
-- REFERENCES 참조할 테이블명(참조할 컬럼) ; 

ALTER TABLE TEST_성적표 ADD CONSTRAINT 학생ID_FK FOREIGN KEY(학생ID)
REFERENCES 수강생정보(학생ID) ;

-- 제약조건 변경
-- ALTER TABLE 테이블명 MODIFY 컬럼 명 바꿀 제약조건 ;
SELECT * FROM SMHRD_LOGIN;

ALTER TABLE SMHRD_LOGIN MODIFY NAME NOT NULL ; 

-- 제약조건 삭제
-- ALTER TABLE 테이블 명 DROP CONSTRAINT 제약조건 이름;
ALTER TABLE SMHRD_LOGIN DROP CONSTRAINT PW_CHECK ;

-- 데이터 무결성이란?
--> 데이터의 결함이 없는 상태를 의미
--> 즉 데이터가 정확하고 유효하게 유지 된 상태 

-- 무결성 제약조건 종류
-- 개체 무결성(PK) : 기본키 제약이라고 하며, 하나의 테이블에 중복된 행이 존재하지 않도록 규정

-- 참조 무결성(FK) : 행을 입력, 수정, 삭제 할때 연관되는 다 른 테이블과의 데이터가 
-- 정확하게 유지 되도록 규정
-- 참조 관계에 있는 두 테이블의 데이터가 항상 일관된 값을 가져야 하는 것

SELECT * FROM SMHRD_LOGIN;

-- 테이블의 컬럼 추가 하기
-- ALTER TABLE 테이블명 ADD 컬럼명 자료형(크기) ; 
ALTER TABLE SMHRD_LOGIN ADD PHONE_NUMBER VARCHAR2(10); 

-- 컬럼 이름 변경하기
-- ALTER TABLE 테이블 명 RENAME COLUMN 기존 컬러명 TO 바꿀 컬럼 명 ;
ALTER TABLE SMHRD_LOGIN RENAME COLUMN PHONE_NUMBER TO TEL; 

-- 컬럼의 자료형을 변경하기 
-- ALTER TABLE 테이블명 MODIFY 컬럼명 바꿀 제약조건(길이) ;
ALTER TABLE SMHRD_LOGIN MODIFY TEL VARCHAR(20) ; 

-- 특정 컬럼 삭제하기
-- ALTER TABLE 테이블 명 DROP COLUMN 컬럼 명 ;
ALTER TABLE SMHRD_LOGIN DROP COLUMN TEL ;

-- 테이블의 이름 변경하기
-- RENAME 기존 테이블 이름 TO 바꿀 테이블 이름 ;
RENAME SMHRD_LOGIN TO JUN_LOGIN ; 

SELECT * FROM JUN_LOGIN ; 

-- 테이블 삭제
-- DROP TABLE 테이블이름 ;

DROP TABLE TEST_수강생정보 ; 
SELECT * FROM TEST_수강생정보;


CREATE TABLE SMHRD_JOIN (
    ID VARCHAR2(20) PRIMARY KEY,
    PW VARCHAR2(20) NOT NULL,
    NAME VARCHAR2(10) NOT NULL,
    JOIN_DATE DATE ,
    AGE NUMBER(3),
    TEL VARCHAR2(20),
    EMAIL VARCHAR2(50) UNIQUE 
);


-- TRUNCATE : 데이터를 영구 삭제
-- TRUNCATE TABLE 테이블이름 ; 

-- DELETE : 데이터 삭제
-- DELETE TABLE 테이블이름 ;

-- 테이블 복사하는 쿼리문
CREATE TABLE DROP_성적표 AS SELECT * FROM 성적표 ; 
SELECT * FROM DROP_성적표 ;



DELETE DROP_성적표 ;

ROLLBACK ; -- 되돌리는 명령어

TRUNCATE TABLE DROP_성적표; 

ROLLBACK;


























