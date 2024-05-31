-- CHAPTER 02. WHERE

-- WHERE �� �⺻ �����
-- SELECT ��ȸ�� �÷���, ... FROM ��ȸ�� ���̺� WHERE ���ǽ�

-- �ǽ� ) ���� id�� 105�� ������ �̸� ���
select first_name, last_name from employees where employee_id = 105;

-- �ǽ�2) �μ����̺��� �Ŵ��� ���̵� 100�� �μ��̸��� �μ����̵� ���
select department_name, department_id from departments where manager_id = 100;

-- �ǽ� ) �������̺��� �޿��� 9000�� ������ ID, ���� �̸�, �޿� ���� ���
select employee_id, first_name, salary from employees where salary = 9000;

-- ��� ������ +, -, *, /
select salary * 2 from employees;

-- �� ������ >, >=, <, <=
-- �޿� 5000 ���� ���� �̸��� �޿� ����
select first_name, salary from employees where salary <= 5000;
-- ���� 50000 ���� ���� �̸��� ���� ����
select first_name, salary*12 as ���� from employees where (salary*12) <= 50000;

-- � �� ������
-- = : ����
-- !=, <>, ^= : ���� �ʴ�
-- NOT a = b : ���� �ʴ�

-- �ǽ�) ���� ���̵� IT_PROG�� �ƴ� ������ �̸��� ���� ���̵� ���
select first_name, job_id from employees where job_id != 'IT_PROG';

-- �������� (���̳� �����̳�)
-- 2�� �̻��� ������ ���� ��
-- AND : ������ ��� �����ϴ� ��� True
-- OR : �ϳ��� �����̶� �����ϸ� True

-- �μ����̵� 90 �޿� 5000 �̻��� ���� ���̵�� �̸� ���
select employee_id, first_name, salary, department_id
from employees where department_id = 90 AND salary >= 5000;

-- �μ� ���̵� 100�̰ų� �Ի����� 06�� 02�� 02�� ���� �Ի��� ���� �̸��� �Ի��� ���
select first_name, hire_date, department_id
from employees
where department_id = 100 or hire_date >= '06-02-02';

-- �μ� ID 100�̰ų� 90�� ���� �� ���� ID�� 101�� ������ ID, �̸�, ���� ���
-- AND �����ڰ� OR �����ں��� �켱 ������ ����.
select employee_id, first_name, (salary*12) as AnnSal
from employees
where (department_id = 100 or department_id = 90) AND employee_id = 101;

-- NULL ���� ������
-- is null : ������ ���� NULL�� ���� ��ȸ
-- is not null : ������ ���� NULL�� �ƴ� ���� ��ȸ

select first_name, commission_pct from employees where commission_pct is not null;

-- department_id �� ���� ������ �̸��� ?
select first_name from employees where department_id is null;

-- SQL ������
-- IN, BETWEEN, LIKE

-- IN ������ : Ư�� �÷��� ���Ե� �����͸� ���� �� ��ȸ�� �� Ȱ��
-- '=' + 'OR'.   IN �� NULL�� ����.

-- ���� ���̺��� �μ� ID�� 30 �̰ų� 50�̰ų� 90�� ������ ��� ���� ���
select * from employees where department_id in (30, 50, 90);

-- �Ŵ��� ���̵� 100, 102, 103�� ������ �̸��� �Ŵ��� ���̵� ���
select first_name, manager_id
from employees
where manager_id in (100, 102, 103);

-- NOT IN
-- IN �ڿ� ���ǿ� �ش����� �ʴ� ������ ���
-- '!' + 'AND'
-- NOT IN �� ����� ���� null ���� �ְ� �Ǹ� ���� �ƿ� �� ���´�.


select first_name, manager_id
from employees
where manager_id not in (100, 120, 121);

-- �ǽ�) �������̵� AD_VP�̰ų� ST_MAN�� ������ �̸��� ���� ���̵� ���
select first_name, job_id
from employees
where job_id in ('AD_VP', 'ST_MAN');

-- �ǽ�) �Ŵ��� ���̵� 145, 146, 147, 148, 149 �ƴ� ���� �̸��� �Ŵ��� ���̵� ���
select first_name, manager_id
from employees
where manager_id not in (145, 146, 147, 148, 149);

select first_name, manager_id
from employees
where manager_id not between 145 and 149;

-- BETWEEN a AND b
-- �ּҰ� '�̻�' �ִ밪 '�̸�'
-- ���� ���� ���� �����͸� ��ȸ�� �� ���
-- between �ּҰ� and �ִ밪

-- �ǽ�)
select first_name, salary
from employees
where salary between 10000 and 20000;

-- �ǽ�) 05�⿡ �Ի��� ������ �̸��� �Ի��� ���
select first_name, hire_date
from employees
where hire_date between '05-01-01' and '05-12-31';

select first_name, hire_date
from employees
where hire_date like '05%';

-- LIKE ������
-- �Ϻ� ���ڿ��� ���Ե� �����͸� ��ȸ�� �� ���.
-- %, _ ��� ���ϵ� ī�带 �̿��ؼ� ��Ī���� ����.

-- % : ���̿� ������� ��� ���� ������
-- _ : � ���̵� ��� ���� �� ���� ���� ������

-- �ǽ�)
select first_name, phone_number
from employees
where phone_number LIKE '650%';

--1.
select first_name
from employees
where first_name LIKE 'S%n';

--2. it�� �̸������� 4���� ����
select first_name
from employees
where first_name LIKE '__it';

--3. �ι�° ���� e�� ����
select first_name
from employees
where first_name LIKE '_e%';

--4. 1�� �Ի� ����
select first_name, hire_date
from employees
where hire_date like '___01___';





