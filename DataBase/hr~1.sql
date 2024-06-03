DROP TABLE �л��������� ;
DROP TABLE ���������� ; 
DROP TABLE ����ǥ ; 

CREATE TABLE ���������� (
�л�ID   VARCHAR2(9) PRIMARY KEY , 
�л��̸�  VARCHAR2(50) NOT NULL , 
�Ҽӹ�    VARCHAR2(5) 
); 

CREATE TABLE ����ǥ ( 
    �л�ID VARCHAR2(9) , 
    ����   VARCHAR2(30) , 
    ����   NUMBER  , 
    CONSTRAINT PK_����ǥ PRIMARY KEY(�л�ID , ����) , 
    CONSTRAINT FK_����ǥ FOREIGN KEY(�л�ID) REFERENCES ����������(�л�ID) 
)  ; 

INSERT INTO ���������� VALUES ('SMHRD1' , '���ؿ�' , 'A') ; 
INSERT INTO ���������� VALUES ('SMHRD2' , '�ڼ���' , 'A') ; 
INSERT INTO ���������� VALUES ('SMHRD3' , '�ں���' , 'B') ; 
INSERT INTO ���������� VALUES ('SMHRD4' , '�̸���' , 'B') ; 
INSERT INTO ���������� VALUES ('SMHRD5' , '����ȣ' , 'B') ; 
INSERT INTO ���������� VALUES ('SMHRD6' , '����ǥ' , 'C') ; 
INSERT INTO ���������� VALUES ('SMHRD7' , '�ֿ�ȭ' , 'C') ; 
INSERT INTO ���������� VALUES ('SMHRD8' , '����ȣ' , 'C') ; 
INSERT INTO ���������� VALUES ('SMHRD9' , '�ӽ�ȯ' , 'C') ; 

INSERT INTO ����ǥ VALUES('SMHRD1'  ,'JAVA' , 90); 
INSERT INTO ����ǥ VALUES('SMHRD1'  ,'DATABASE' , 85); 
INSERT INTO ����ǥ VALUES('SMHRD1'  ,'PYTHON' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD2'  ,'JAVA' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD2'  ,'DATABASE' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD2'  ,'PYTHON' , 20); 
INSERT INTO ����ǥ VALUES('SMHRD3'  ,'JAVA' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD3'  ,'DATABASE' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD3'  ,'PYTHON' , 20); 
INSERT INTO ����ǥ VALUES('SMHRD4'  ,'JAVA' , 85); 
INSERT INTO ����ǥ VALUES('SMHRD4'  ,'DATABASE' , 40); 
INSERT INTO ����ǥ VALUES('SMHRD4'  ,'PYTHON' , 60); 
INSERT INTO ����ǥ VALUES('SMHRD5'  ,'JAVA' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD5'  ,'DATABASE' , 100); 
INSERT INTO ����ǥ VALUES('SMHRD5'  ,'PYTHON' , 100); 
INSERT INTO ����ǥ VALUES ( 'SMHRD6' , 'JAVA' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'SMHRD6' , 'DATABASE' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'SMHRD6' , 'PYTHON' , NULL ) ; 

COMMIT;

select * from ����������;
select * from ����ǥ;

-- GROUP BY �� Ư�� �÷��� �������� ���� ���(�׷�ȭ) ���� ���������� ǥ��

-- 4. select
-- 1. from
-- 2. where
-- 3. group by
select �Ҽӹ�, COUNT(�Ҽӹ�)
from ����������
group by �Ҽӹ�;

-- �ǽ�) �Ҽӹ� �� �л� �ο��� ��ȸ
select �Ҽӹ�, COUNT(�Ҽӹ�) as �ο���
from ����������
group by �Ҽӹ�;

-- ���蹮��)
-- SQL �ۼ� ����
-- SELECT > FROM > WHERE > GROUP BY > HAVING > ORDER BY

-- ** SQL ���� ����
-- FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY

-- GROUP BY �ǽ� ) ����ǥ ���̺��� ���� �ְ� ������ ���� ���� ���.
select ����, MAX(����), MIN(����)
from ����ǥ
GROUP BY ����;

-- GROUP BY���� ����� �� ������
-- 1. ���� ��µǴ� ���� �����ϱ� ������ GROUP BY�� ���� �ʰ� ����Ǵ�
-- HAVING, SELECT, ORDER BY ������ ����� �� �ִ� ���� ���ѵȴ�.
-- 2. ��� �����Լ��� ó���ϴ� �÷��� ����� ����.

-- �ǽ�) ����ǥ ���̺��� �л��� ��� ���� ��� (�Ҽ��� 1�ڸ�������)
select �л�id, ROUND(AVG(����), 1)
from ����ǥ
group by �л�id;

-- �ǽ�) ����ǥ ���̺��� �л����� JAVA, DATABASE ���� ������ �ո� ���
select �л�id, SUM(����) 
from ����ǥ
where ���� = 'JAVA' OR ���� = 'DATABASE'
group by �л�id
order by �л�id;
-- WHERE ���� in ('JAVA', 'DATABASE')�ε� �� �� ����.

-- HAVING�� : GROUP BY���� ������ ���� ��밡��.
-- ���谡 �Ϸ�� ����� ������ ���� ���͸� �ϴ� ����.
-- ������ ���� ����� ����� �ȴٴ� �������� WHERE ���� ���������,
-- HAVING ���� �׷�ȭ(GROUP BY)�� ��󿡼� ����� �ȴٴ� ������ �ٸ���.

-- �ǽ�) �л��� ��� ������ 75������ �л��鸸 ���
select �л�id, ROUND(AVG(����), 1) as ��ռ���
from ����ǥ
group by �л�id
HAVING ROUND(AVG(����),1) <= 75;
-- WHERE ���� GROUP BY ���� ���� ������ �Ǳ� ������ �����Լ� ��� �Ұ�.
-- �׷�ȭ�� ��󿡼� ������ ã�´�. (HAVING��)

-- �ǽ�) ���������� ���̺��� �Ҽӹ� �� �ο����� 3�� �̻��� �ݸ� ���
select �Ҽӹ�, COUNT(*) as �ο���
from ����������
group by �Ҽӹ�
having COUNT(*) >= 3;

-- �ǽ�)
select * from employees;
select department_id, max(salary*12) as ����
from employees
group by department_id
having max(salary*12) >= 100000
order by max(salary*12) DESC;








