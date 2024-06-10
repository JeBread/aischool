-- ��ü (object)

-- View�� ?
-- �ϳ� �̻��� ���̺��� ���� ������ ���� ��������� '���� ���̺�'.
-- ��� ����
-- ���� : ���� ����ϴ� SELECT ������ �����ϱ� ���� ���.
-- ���ȼ� : ���̺��� Ư�� �����͸� �����Ű�� �ʱ� ���� ���.

-- �� ���� �ϴ� ���
-- CREATE VIEW �� �̸�
-- AS ������ SELECT ��

-- ������� ���� (����ID, �̸�, �̸���, �������̵�, �޿�)
select employee_id, first_name, last_name, email, job_id, salary
from employees where employee_id = 100;

-- �� ���� : VIEW_EMP100

CREATE VIEW VIEW_EMP100
AS select employee_id, first_name, last_name, email, job_id, salary
from employees where employee_id = 100;

-- �� ��ȸ
select * from VIEW_EMP100;

-- SEQUENCE �������� ?
-- Ư�� ��Ģ�� �´� ���� ���ڸ� �����ϴ� ��ü
-- ��� ����ǥó�� ��� ���� ��ȣ�� ������ִ� ������ �Ѵ�.
-- �ַ� PK �÷����� ������ ���� ���� �� Ȱ��

-- ������ �����
-- �������̸�.CURRVAL : ������ ���� ��ȣ�� ��ȯ
-- �������̸�.NEXTVAL : ���� ��ȣ�� ��ȯ

-- ������ ����
CREATE SEQUENCE SEQ_DBJUN
INCREMENT BY 1 -- 1�� �����ϴ� �ɼ�.
START WITH 10 -- ���۹�ȣ�� 10����
MAXVALUE 20 -- 20������ ��ȣ�ްڴ�.
MINVALUE 0 -- �ּҰ��� 0
NOCYCLE; -- 20���� �����ϸ� �ߴ�.

-- ������ ��ȸ
select * from USER_SEQUENCES;

CREATE TABLE JUN_SEQUENCE (
    ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(10),
    CLASS VARCHAR2(50)
    );
    
-- ������ Ȱ���غ���
INSERT INTO JUN_SEQUENCE (ID, NAME, CLASS)
VALUES (SEQ_DBJUN.NEXTVAL, '���ؿ�', '����ݽ�����');

select * from JUN_SEQUENCE;





