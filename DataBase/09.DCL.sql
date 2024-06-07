-- CHAPTER 09. DCL (Data Control Language)

-- DCL�̶� ?
--> �����ͺ��̽��� ������ �ϰų� ��ü�� ������ �ִ� ���� ������ �ϴ� ���

-- DCL ��ɾ� ����
-- GRANT : ������ �ο��ϴ� ��ɾ�
-- REVOKE : ������ ȸ���ϴ� ��ɾ�
-- ROLE : ������ ��� �ο��� �� ����ϴ� ��ɾ�

-- ����ڶ�(USER)?
-- �����ͺ��̽��� �����Ͽ� �����͸� �����ϴ� '����'�� �����(USER)��� ��.

-- �����(USER) ���� ���
-- CREATE USER ����ڸ�
-- IDENTIFIED BY �н�����

-- ���Ѻο�
-- GRANT �ý��۱��� TO ����;

-- ����ȸ��
-- REVOKE �ý��۱��� FROM ����;

create table TEST_TB (
    ID VARCHAR2(10)  
  ) ;
  
-- ORA-01031 : insufficient privileges
-- ���� �����

-- ROLE �̶� ?
--> ���� ������ �� ���� �ο��ϱ� ���� ���.
--> ����� ������ ���ѳ��� ��� ���� ROLE�̶�� �������� �� ���� ��� ���

-- ROLE�� ����
-- CONNECT : �����ͺ��̽� ���ӿ� �ʿ��� ������ ���� ���� ��.
-- RESOURCE : ���̺�, ������ ���� ��ü�� ������ �� �ִ� ������ ���� ���� ��.
-- DBA : �����ͺ��̽��� �����ϴ� ��κ��� �ý��� ����. *�Ժη� �ǵ�� �ȵ�!

-- �������� ������ �ִ� ���
-- GRANT CONNECT, RESOURCE to ����;

select * from TEST_TB;

-- ��ü �����̶� ?
-- Ư�� ������� ��ü(���̺�, ������, �� ��)�� ������ �ִ� ��.
-- HR ������ ���̺��� DCLTEST ����ڰ� SELECT�� UPDATE��� DML �۾��� �����ϵ��� ���.

select * from HR.employees;

-- ��ü ���� �����
-- GRANT �ý��۱��� ON ��Ű��.��ü�̸� TO ����;

update hr.employees set first_name = '��', last_name = '����'
where employee_id = 100;

select * from hr.employees;
COMMIT;
select * from employees;











