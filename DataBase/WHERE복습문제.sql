-- WHERE �� ���� ���� -- 

/*
�� ��
������ �о����

-- [ WHERE �� �⺻ ����� ]
-- 3. SELECT   ��ȸ�� �÷� ��1 ...
-- 1. FROM     ��ȸ�� ���̺� ��
-- 2. WHERE    ��ȸ�� ���� �����ϱ� ���� ���ǽ�

SQL���� ����Ҽ� �ִ� �����ڵ�

1. ��������� < +, -, *, / >

2. �񱳿����� 
    >  : ũ�� (�ʰ�)
    >= : ũ�ų� ���� (�̻�)
    <  : �۴�
    <= : �۰ų� ���� (����)
    
3. ������� ( ���ų� �����ʰų� )
    = : ����
    != , <>, ^= : ���� �ʴ�.
    NOT A = B   : ���� �ʴ�.
    
4. �� ������
    AND(�׸���) : ������ ��� �����ϴ� ��� TRUE 
    OR  (Ȥ��)  : �ϳ��� �����̶� �����ϴ� ��� TRUE
    
5. NULL ���� ������
    IS NULL  : ������ ���� NULL �� ���� ��ȸ
    IS NOT NULL : ������ ���� NULL �� �ƴ� ���� ��ȸ
    
*/

-- < ���� > 


-- ���� 1) �������̺��� ���ʽ��� 0.2�� �޴� ������ �̸��� �޿��� ������ ���
select first_name, salary from employees where commission_pct = 0.2;

-- ���� 2) �������̺��� �޿��� 9000 �̻� �޴� ������ EMAIL ������ ���
select email from employees where salary >= 9000;

-- ���� 3) �������̺��� �޿��� 7000 �̻��̸鼭 JOB_ID�� 'SA_REP'�� ������ ����ID�� �̸� ���
select employee_id, first_name from employees where salary >= 7000 AND job_id = 'SA_REP';

-- ���� 4) �μ����̺��� �Ŵ���ID�� 200, 201, 203�� �ƴ� ������ �μ��̸��� ���
select department_id, first_name, manager_id from employees where manager_id NOT IN (200, 201, 203);

-- ���� 5) �������̺��� �μ�ID�� ���� ������ �̸��� ��� �ϼ���
select first_name, department_id from employees where department_id IS NULL;

-- ���� 6) ���� ���̺��� �޿��� 10000 ���� ������ �̸��� �޿� ������ ���
select first_name, salary from employees where salary LIKE '1____';

-- ���� 7) JOB_ID��  IT_PROG�� FI_ACCOUNT�� �ƴ� ������ �̸��� JOB_ID�� ��� 
select first_name, job_id from employees where job_id NOT IN ('IT_PROG', 'FI_ACCOUNT');

-- ���� 8) �޿��� 10000�̸��� �ƴ� ������ ID�� �̸��� ���
select employee_id, first_name ,salary from employees where salary >= 10000;

-- ���� 9) �������̺��� �μ�ID�� 90�̰�, �޿��� 5000�̻��� ������ ID�� �̸��� ����ϱ�
select employee_id, first_name from employees where department_id = 90 AND salary >= 5000;

-- ���� 10) �μ��� 50�μ��̰�, ������ 'ST_MAN'�� ������ �������
-- ����� ������ ���� (�μ�ID, FIRST_NAME, JOB_ID, SALARY)
select department_id, first_name, job_id, salary from employees
where department_id = 50 AND job_id = 'ST_MAN';
   
-- ���� 11) ������(JOB_ID)�� IT_PROG, AD_PRES�� �����߿���
--         �޿�(SALARY)�� 8000�̻��� �������� ������ ��� 
-- ����� ������ ���� ( FIRST_NAME, JOB_ID, SALARY)
select first_name, job_id, salary from employees
where job_id IN ('IT_PROG', 'AD_PRES') AND salary >= 8000;

-- ** �߰�����
-- <��������>
-- ��ü ������ ��� �޿����� �޿��� ���� �޴� ���� �̸�, job_id, �޿� ��ȸ
select first_name, job_id, salary from employees
where salary > (select AVG(salary) from employees);

-- <JOIN ����>
-- �μ����̺�, ��ġ���̺�, �������̺��� INNER JOIN �Ͽ�
-- �� �μ��� �μ��̸�, ����, �����̸� ���

select d.department_name, l.city, c.country_name
from departments d JOIN locations l
ON (d.location_id = l.location_id)
JOIN countries c
ON (l.country_id = c.country_id);


