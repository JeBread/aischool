-- CHAPTER 06. DDL(Data Difinition Language) 

-- DDL�̶�?
-- ������ ���Ǿ�� ���̺� ���� ����� ��ü�� ����ų� �����ϴ� ���.

-- [DDL ��ɾ� ����]
-- CREATE : ���̺� ���� ��ü�� �����ϴ� ��ɾ�
-- ALTER  : ���̺� ���� ��ü�� �����ϴ� ��ɾ�
-- RENAME : ���̺��� �̸��� �����ϴ� ��ɾ�
-- TRUNCATE : ���̺��� �����͸� �����ϴ� ��ɾ�
-- DROP   : ���̺��� ��ü�� �����ϴ� ��ɾ�

-- [ ���̺� ������ ���� ����ϴ� �ڷ��� ]
-- VARCHAR2(N) : ������ ������, Nũ�⸸ŭ �Է� ����
-- NUMMBER(P,S) : ������ ���� P�ڸ���ŭ �Է¹ް� S�ڸ� ��ŭ �Ҽ��� �Է¹���
--> ����Ŭ�����ͺ��̽� ������ �Ǽ��� ���� ��� ǥ���� ����
--> �Ұ�ȣ�� �����ϰ� �Ǹ� �ִ밪�� 38 ũ�Ⱑ ��
-- DATE : ���� ��¥ ���� �Է� ����

-- ���������� ���̺��� Ȯ���ؼ� TEST_���������� ��� ���̺��� ������!!
--> ���������� ���̺���� ������ SHIFT + F4 ������ ���̺� ���� ���� Ȯ�� ����

CREATE TABLE TEST_���������� (
    �л�ID VARCHAR2(9),
    �л��̸� VARCHAR2(50),
    �Ҽӹ� VARCHAR2(5)
);

SELECT * FROM TEST_����������;

-- ����ǥ ���̺��� Ȯ���ؼ� TEST_����ǥ ��� ���̺��� ������ !

CREATE TABLE TEST_����ǥ(
    �л�ID VARCHAR2(9),
    ���� VARCHAR2(30),
    ���� NUMBER 
);

SELECT * FROM TEST_����ǥ;

CREATE TABLE SMHRD_LOGIN(
    ID VARCHAR2(20), 
    PW VARCHAR2(20),
    EMAIL VARCHAR2(20),
    NAME VARCHAR2(20)
); 

SELECT * FROM SMHRD_LOGIN;

-- ���������̶� ?
--> ���̺� �Է� ������ �����͸� �������� �����ϴ� ��
--> �������� ��Ȯ���� �����ϱ� ���� �������� ����.
--> ���� ���� ���� ��Ŀ� ���� �������� �����̳� ���� ���ο� ������ ����

-- [ ���� ���� �� ���� ]
-- PRIMARY KEY(PK) : �⺻Ű, NOT NULL + UNIQUE -> NULL�Ұ� + �ߺ��Ұ� 
-- UNIQUE KEY(UK)  : ����Ű, NULL �� �Է� ����, �� �ߺ��� �Ұ� 
-- NOT NULL : NULL�� �Ұ���, �� �����ʹ� �� ���� �� �� ����ϴ� ��
-- CHECK : ������ �����͸� �Է� ����
-- FOREIGN KEY(FK) : �ܷ�Ű , �� ���̺��� �����ϴ� Ű 

-- �������� �Ŵ� ���
-- ALTER TABLE ���̺�� ADD CONSTRAINT ���������̸� ��������(�ش��÷�) ; 

-- ���̺� PK �������� �����ϱ� 
SELECT * FROM SMHRD_LOGIN ;

ALTER TABLE SMHRD_LOGIN ADD CONSTRAINT SMHRD_ID_PK PRIMARY KEY (ID) ;

-- ���̺��� UK �������� �����ϱ�
ALTER TABLE SMHRD_LOGIN ADD CONSTRAINT EMAIL_UK UNIQUE(EMAIL) ; 

-- ���̺� CHECK ���� ���� �����ϱ�
ALTER TABLE SMHRD_LOGIN ADD CONSTRAINT PW_CHECK CHECK(LENGTH(PW) > 3) ;

-- ���̺� FK ���������� �����ϱ�
-- ALTER TABLE ���̺�� ADD CONSTRAINT ���������̸� ��������(�ش��÷�)
-- REFERENCES ������ ���̺��(������ �÷�) ; 

ALTER TABLE TEST_����ǥ ADD CONSTRAINT �л�ID_FK FOREIGN KEY(�л�ID)
REFERENCES ����������(�л�ID) ;

-- �������� ����
-- ALTER TABLE ���̺�� MODIFY �÷� �� �ٲ� �������� ;
SELECT * FROM SMHRD_LOGIN;

ALTER TABLE SMHRD_LOGIN MODIFY NAME NOT NULL ; 

-- �������� ����
-- ALTER TABLE ���̺� �� DROP CONSTRAINT �������� �̸�;
ALTER TABLE SMHRD_LOGIN DROP CONSTRAINT PW_CHECK ;

-- ������ ���Ἲ�̶�?
--> �������� ������ ���� ���¸� �ǹ�
--> �� �����Ͱ� ��Ȯ�ϰ� ��ȿ�ϰ� ���� �� ���� 

-- ���Ἲ �������� ����
-- ��ü ���Ἲ(PK) : �⺻Ű �����̶�� �ϸ�, �ϳ��� ���̺� �ߺ��� ���� �������� �ʵ��� ����

-- ���� ���Ἲ(FK) : ���� �Է�, ����, ���� �Ҷ� �����Ǵ� �� �� ���̺���� �����Ͱ� 
-- ��Ȯ�ϰ� ���� �ǵ��� ����
-- ���� ���迡 �ִ� �� ���̺��� �����Ͱ� �׻� �ϰ��� ���� ������ �ϴ� ��

SELECT * FROM SMHRD_LOGIN;

-- ���̺��� �÷� �߰� �ϱ�
-- ALTER TABLE ���̺�� ADD �÷��� �ڷ���(ũ��) ; 
ALTER TABLE SMHRD_LOGIN ADD PHONE_NUMBER VARCHAR2(10); 

-- �÷� �̸� �����ϱ�
-- ALTER TABLE ���̺� �� RENAME COLUMN ���� �÷��� TO �ٲ� �÷� �� ;
ALTER TABLE SMHRD_LOGIN RENAME COLUMN PHONE_NUMBER TO TEL; 

-- �÷��� �ڷ����� �����ϱ� 
-- ALTER TABLE ���̺�� MODIFY �÷��� �ٲ� ��������(����) ;
ALTER TABLE SMHRD_LOGIN MODIFY TEL VARCHAR(20) ; 

-- Ư�� �÷� �����ϱ�
-- ALTER TABLE ���̺� �� DROP COLUMN �÷� �� ;
ALTER TABLE SMHRD_LOGIN DROP COLUMN TEL ;

-- ���̺��� �̸� �����ϱ�
-- RENAME ���� ���̺� �̸� TO �ٲ� ���̺� �̸� ;
RENAME SMHRD_LOGIN TO JUN_LOGIN ; 

SELECT * FROM JUN_LOGIN ; 

-- ���̺� ����
-- DROP TABLE ���̺��̸� ;

DROP TABLE TEST_���������� ; 
SELECT * FROM TEST_����������;


CREATE TABLE SMHRD_JOIN (
    ID VARCHAR2(20) PRIMARY KEY,
    PW VARCHAR2(20) NOT NULL,
    NAME VARCHAR2(10) NOT NULL,
    JOIN_DATE DATE ,
    AGE NUMBER(3),
    TEL VARCHAR2(20),
    EMAIL VARCHAR2(50) UNIQUE 
);


-- TRUNCATE : �����͸� ���� ����
-- TRUNCATE TABLE ���̺��̸� ; 

-- DELETE : ������ ����
-- DELETE TABLE ���̺��̸� ;

-- ���̺� �����ϴ� ������
CREATE TABLE DROP_����ǥ AS SELECT * FROM ����ǥ ; 
SELECT * FROM DROP_����ǥ ;



DELETE DROP_����ǥ ;

ROLLBACK ; -- �ǵ����� ��ɾ�

TRUNCATE TABLE DROP_����ǥ; 

ROLLBACK;


























