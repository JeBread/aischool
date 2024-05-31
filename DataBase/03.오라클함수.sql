-- CHAPTER 03. ����Ŭ �Լ�

-- �Լ� (Funtion) �� ?
-- �Է� ���� �־� Ư���� ����� ���� ��� ���� ���

-- ����� �����Լ� : ����ڰ� �ʿ信 ���� ���� ������ �Լ�
-- ���� �Լ� : ����Ŭ���� �̸� ����� ���� �Լ�. �ʿ��� ������ ȣ��.
-- ���� �Լ��� ������, ������, ��¥��, ��ȯ��, NULL���� �Լ�, ���� �Լ�

-- �Լ��̸�()
-- �Լ��� ������ �� ����ϴ� �Է� �� : �Ű�����, ���� ��

-- ���ڿ� �Լ�

-- UPPER() : ��ȣ �� ���� �����͸� ��� �빮�ڷ� ��ȯ�Ͽ� ���
-- LOWER() : ��ȣ �� ���� �����͸� ��� �ҹ��ڷ� ��ȯ�Ͽ� ���

select UPPER('abcd123')
from dual;
-- dual ���̺��� �ӽ� �����̳� �Լ��� ��� �� Ȯ�� �뵵�� �׽�Ʈ�� ���̺�

-- �ǽ�)
select UPPER(first_name), LOWER(email)
from employees;

-- LENGTH() : ��ȣ �� ���� �������� ���̸� ���ϴ� �Լ�

select length('hello world')
from dual;

-- ������ first_name, ���̵� ���
select first_name,length(first_name)
from employees;

-- first_name�� ���� 5 �̻� ���� id, �̸� ���
select employee_id,first_name, length(first_name)
from employees
where length(first_name) >= 5;

-- SUBSTR() : ���ڿ� �����ϴ� �Լ�
-- 1) SUBSTR(�Է°�, ������ġ, �������)
-- ���ڿ� �������� ������ġ���� ������� ��ŭ ���

-- 2) SUBSTR(�Է°�, ������ġ)
-- ������� ������ ���ڿ� �������� ������ġ���� ������ ���

select substr('�ΰ����ɻ���б�', 5) as ����б�
from dual;

-- �ǽ�) �Ի糯¥�� ����, ��, �� ���� �߶� ���
select substr(hire_date, 1, 2) as ����, substr(hire_date, 4, 2) as ��,
substr(hire_date, 7, 2) as ��
from employees;

-- Replace () : Ư�� ���ڸ� �ٸ� ���ڷ� �ٲپ� �ִ� �Լ�
-- 1) REPLACE(���ڿ�������, ã�� ���ڿ�, ġȯ ���ڿ�)
-- 2) REPLACE(���ڿ�������, ã�� ���ڿ�)
-- ġȯ ���ڿ� ���� �� ã�� ���ڿ� ����

select replace('�ΰ�����##����б�', '#')
from dual;

--�ǽ�) �Ի糯¥ '/' �� '-' ��, �����Ͽ� ���
select replace(hire_date, '/', '-')
from employees;
select replace(hire_date, '/')
from employees;

-- CONCAT() : �� ���ڿ� �����͸� ��ġ�� �Լ�
-- �Ű������� 2���� ����. 2���� ���ڿ��� ��ġ�� �Լ�.
-- �ռ������� '||' �̿��ϸ� ���Ѵ�� ���ڿ� ���� ����

select concat('�ΰ�����', '����б�' || '�ְ�')
from dual;

-- TRIM() : �Է¹��� ������ �������� �� ���� ���� ����
select trim(' �������� �ְ��Դϴ�. ')
from dual;

select replace(trim('    �� �� �� �� ��    '), ' ')
from dual;

-- ������ �Լ�
-- ROUND() : Ư�� ��ġ���� �ݿø��ϴ� �Լ�
-- 1) ROUND(��� ����, �ݿø� ��ġ)
-- 2) �ݿø� ��ġ ���� ��, �Ҽ��� ù° �ڸ����� �ݿø�

select ROUND(1234.56789, 2)
from dual;

-- TRUNC () : Ư�� ��ġ���� �������ִ� �Լ�
-- TRUNC (��� ����, ���� ��ġ)
-- ���� ��ġ ������ �Ҽ��� ù° �ڸ����� ����

select TRUNC(1234.56789, 2)
from dual;

-- MOD () : ���ڸ� ���� ������ ���� ���ϴ� �Լ�
-- MOD(��� ����, ���� ����)
-- Ȧ��, ¦�� ������ �� �����ϰ� ���

select MOD(10, 3) from dual;

-- ��¥�� �Լ�
-- SYSDATE : ���� ��¥�� �ð��� ������ִ� �Լ�
-- �Է� �� �ٷ� ���, ���� �ð��� �ʴٴ��̱��� ��� ����.
-- ��¥�� �Լ��� ������ ����.
-- ��¥ �����ͳ����� ���� �Ұ�.

select sysdate
from dual;

-- ��¥ ���� ����
-- ���� > ȯ�漳�� > �����ͺ��̽� > NLS > ��¥���� > YYYY-MM-DD HH24:MI:SS

select sysdate as ����, sysdate -1 as ����
-- sysdate + sysdate -> ��¥ �����ͳ����� ���� �Ұ�.
from dual;

-- ��¥������ Ȱ�� ( �ǹ� )
select sysdate as ����,
sysdate + 1 as ����,
sysdate + 1 / 24 as �ѽð�����,
sysdate + 1 / 24 / 60 as �Ϻд���,
sysdate + 1 / 24 / 60 / 60 as ���ʴ���
from dual;

-- ADD_MONTHS () : �� ���� ���� ��¥�� ���ϴ� �Լ�
-- ADD_MONTHS (��¥������, ���ϰų� �� ������)

select sysdate as now, ADD_MONTHS(sysdate, -1) as "1���� ��",
ADD_MONTHS(sysdate, 6) as "6���� ��"
from dual;

-- ��ȯ�� �Լ�
-- ����ȯ ���� ����

-- �Ͻ��� ����ȯ : �����ͺ��̽��� �ڵ����� ����ȯ�� ���ִ� ��
select salary * 12
from employees;

-- ����� ����ȯ : ������ ��ȯ �� �Լ��� ����ؼ� ����ڰ� ���� �ڷ��� ����

-- TO_CHAR () : ��¥, ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_CHAR( ��ȯ�� ������, ��� ���� )
select salary as �޿�����, TO_CHAR(salary, 'L999,999')
from employees;

-- TO_NUMBER () : ���� �����͸� ���� �����ͷ� ��ȯ�ϴ� �Լ�
-- TO_NUMBER (���ڿ� ������, �ν� �� ���� ����)

select TO_NUMBER('1,000', '9999') + 500
from dual;

-- TO_DATE () : ���� �����͸� ��¥ �����ͷ� ��ȯ�ϴ� �Լ�
-- TO_date(���ڿ� ������, �νĵ� ��¥ ����)
select TO_DATE('2024/05/31', 'YYYY-MM-DD')
from dual;

-- NULL ó�� �Լ�
-- NVL() / NVL2() : NULL ���� ��ü�� �� �ִ� �Լ�
-- 1) NVL(NULL���� ���� �˻��� ������<1>, <1>�� NULL�� ��� ��ȯ�� ������<2>)
select first_name, department_id from employees;

select first_name, department_id, NVL(department_id, 0)
, NVL2(department_id, '����', '����')
from employees;

-- 2) NVL2(NULL���� ���� �˻��� ������<1>, <1>�� NULL�� �ƴ� ��� ��ȯ�� ������<2>
-- , <1>�� NULL�� ��� ��ȯ�� ������<3>)

-- �ǽ�) ���ʽ��� null�� ��� ���� 0���� ���
select commission_pct, NVL(commission_pct, 0)
from employees;

-- �ǽ�2) ����id, first_name, manager_id ���. �Ŵ��� ������ '��ǥ' ������ '����'
select employee_id, first_name, manager_id ,NVL2(manager_id, '����', '��ǥ')
from employees;









