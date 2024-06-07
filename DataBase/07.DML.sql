-- CHAPTER 07. DML (Data Manipulation Language) 

-- DML�̶�?
--> ������ ���۾�� ���̺� �����͸� ��ȸ, �߰�, ����, ���� �Ҷ� ����ϴ� ���Ǿ��̴�.
--> ���̺��� ���ϴ� �����͸� �Է�, ����, ���� �Ѵ�.

-- DML�� ���� - ���ξ��� (������ ���� ������)
-- SELECT : ������ ��ȸ
-- INSERT : ������ �߰�
-- UPDATE : ������ ����
-- DELETE : ������ ����

-- INSERT �����
-- INSERT INTO ���̺� �� (�÷�1, �÷�2,....�÷�N)
-- VALUES (��1, ��2,....��N) 
--> INSERT�� �Է��� �÷��� VALUES�� �Է��� ���� ������ �ڷ����� �°� ��ߵȴ�!

-- INSERT INTO ���̺� �� 
-- VALUES (��,...)
--> INSERT �� �÷�����Ʈ ������ DBMS�� �ش� ���̺��� �÷��� �� �ۼ��Ѱ����� �����ؼ�
--> �� ���̺� �÷� ������ �ڷ����� �°� �� �ۼ��� �ؾ��Ѵ�!!

SELECT * FROM SMHRD_JOIN ; 

-- 1. ���� ������ �ֱ�
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
VALUES ('SMHRD03','12345','���ؿ�',SYSDATE, 28 ,'010-3568-3904','rtcho3904@naver.com') ;

-- 2. ���� ¦���� ������ �ֱ� (null���� ��������� �Է�)
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
VALUES ('SMHRD02', '11111','�ֿ�ȭ',SYSDATE, 24, NULL, '' );

-- 3. ���� ģ���� ������ �ֱ�
-- ��ȭ��ȣ�� �̸��� null������ �Է�.
-- null���� �Ͻ������� �Է�.
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE)
VALUES ('SMHRD4', '22222', '�̵���', SYSDATE, 22 );

select * from SMHRD_JOIN;

-- ���̺� ������ �Է½� ���� ����Ʈ 

-- 1. �÷�����Ʈ�� �Է� ���� ������ �ٸ� ���
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM', 'N');
 
--  SQL ����: ORA-00913: too many values 
--> �÷� ����Ʈ�� ������ �Է� �� ������ ��ġ�ؾ� �Ѵ�!

-- 2. �ĺ��ڿ� NULL�� �Է��� ���
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
 VALUES (NULL, '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."ID")
--> �÷��� ���� �������ǿ� �°� �ۼ� �ؾ��� (�ĺ��ڴ� NOT NULL + UNIQUE �ߺ��Ұ�)

-- 3. NOT NULL�� �÷��� NULL�� ���� ���
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', NULL , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."NAME")
--> �÷��� ���� �������ǿ� �°� �ۼ� �ؾ��� ( NOT NULL ���� )

-- 4. �ڷ����� ���� �ʰ� �Է� ���� ���� ���
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, '29��', '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01722: invalid number
--> �÷��� ���� �ڷ����� �°� �ۼ��� �Ǿ� �Ѵ�. (AGE�� ������ �ڷ���)

-- 5. �ĺ��� �÷��� �ߺ� ���� ���� ���� ���
INSERT INTO SMHRD_JOIN (ID, PW, NAME, JOIN_DATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');
 
-- unique constraint (HR.SYS_C007110) violated
--> ���� �� ���¿��� �ѹ��� ������ �Ǹ� �ĺ��ڰ� ���� �ߺ��� �Ǽ� ������ ��

SELECT * FROM SMHRD_JOIN;

-- �÷�����Ʈ ���� �ʰ� INSERT �ϴ� ���
INSERT INTO SMHRD_JOIN
VALUES ('SMHRD05', '44444', '�λ米', SYSDATE, 20, '010-1234-1234', 'insagyo@naver.com');

-- �ǽ�)
CREATE TABLE �����_SONGLIST (
    NO NUMBER(3) PRIMARY KEY,
    TITLE VARCHAR2(20) NOT NULL,
    SINGER VARCHAR2(20),
    GENDER VARCHAR2(10),
-- GENDER VARCHAR2(10) CHECK (GENDER IN ('����', '����')) ����
    CONSTRAINT GENDER_CK CHECK (GENDER IN ('����', '����'))
    );
    
-- ALTER TABLE �����_SONGLIST ADD CONSTRAINT NO_PK PRIMARY KEY(NO);
-- ALTER TABLE �����_SONGLIST ADD CONSTRAINT GENDER_CK CHECK (GENDER IN ('����','����'));

select * from �����_SONGLIST;
--drop table �����_SONGLIST;

desc �����_SONGLIST;

insert into �����_SONGLIST
VALUES ( 1,'������ ������', '�ʵ�Ŀ�ؼ�', '����');
insert into �����_SONGLIST
VALUES ( 2,'nobody knows', 'Ű����', '����');
insert into �����_SONGLIST
VALUES ( 3,'�ӹ�����', 'onthedal', '����');

-- UPDATE : ���̺��� �����͸� ����

-- UPDATE ���̺��
-- SET    ������ �÷� = �����Ͱ�, ...
-- WHERE  �����͸� ������ ���� �����ϱ� ���� ���ǽ�;
--> WHERE�� ������ ���̺� �� ����� ��� �÷��� �����Ͱ� ������ �ȴ�.

select * from SMHRD_JOIN;

UPDATE SMHRD_JOIN
SET age = 29
WHERE ID = 'SMHRD02';

-- ������ �� ���� PK�� �÷��� �Ŵ� ���� �ùٸ� ���;

-- DELETE : �����͸� ������ �� ����ϴ� ��ɾ�

-- DELETE FROM ���̺��
-- WHERE ������ ��� ���� �����ϱ� ���� ���ǽ�;
-- ** WHERE �������� ������ ��� ���̺��� ��� ������ ������.

-- 28�� ������ ȸ������ ������ ����
DELETE FROM SMHRD_JOIN
WHERE age <= 28;

select * from SMHRD_JOIN;





