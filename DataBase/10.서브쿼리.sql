-- CHAPTER 10. ��������

-- ���������� ?
--> SQL���� �����ϴµ� �־ �ʿ��� �����͸� �߰��� ��ȸ�ϱ� ����
-- SQL ���ο��� ����ϴ� SELECT ��.

-- ���������� �������� �ȿ� ���Ե� �������� ����

-- �������� : ���������� ������� ����Ͽ� ����� ����
-- �������� : ���������� ���ǽĿ� ���� ���� �ǹ�

-- �ǽ�) firstname�� jack�� ������ �޿� ���
select first_name, salary
from employees
where first_name = 'Jack';

-- Jack�� �޿����� ���� ������ �̸��� �޿��� ���
-- �������� �̿�
select first_name, salary
from employees
where salary < ( select salary
                 from employees
                 where first_name = 'Jack' ) ;
        
select first_name, salary
from employees
where first_name = 'James';


select first_name, salary
from employees
where salary <= ( select salary
                 from employees
                 where first_name = 'James' ) ;
-- ORA-01427 : single-row subquery returns more than one row
-- ������ ���������� �ϳ��� �ุ ��� �� �� ����.

-- ���������� Ư¡
-- 1. ���������� �����ڿ� ���� �� �Ǵ� ��ȸ ����� �����ʿ� ���̸� ()�� ��� ���
-- 2. ���������� SELECT ���� ����� �÷���
-- ���������� �� ���� ���� �ڷ����� ������ �����ؾ� ��.
-- 3. ���������� �ִ� SELECT ���� ��� �� ���� �Բ� ����ϴ� ���������� ������ ������
-- ȣȯ �����ؾ� �Ѵ�.
--> �� �� �ϳ��� �����ͷθ� ������ ������ �����ڶ�� ���������� ��� �� ���� �ϳ����� ��.
--> �����ڿ� �Բ� ��ȣ �ۿ��ϴ� ��Ŀ� ���� ������ ���������� ������ ���������� ������.

-- ������ ���������� ?
-- ���� ����� �� �ϳ��� ���� ��������
-- =, >, >=, <, <=, <>, !=, ^= (������ ������)

-- �ǽ�) Nancy���� ���� �Ի��� ������ �̸��� �Ի��� ��ȸ
select first_name, hire_date
from employees
where hire_date < (select hire_date from employees where first_name = 'Nancy');


-- �ǽ�) ��� �޿����� ���� �޿��� �޴� ������ �̸��� �޿� ���� ��ȸ
select first_name, salary 
from employees
where salary > (select AVG(salary) from employees);

-- ������ �����ڷδ� �ϳ��� ��� ���� �񱳰� �ȴ�.
-- ���������� ��� ���� 2�� �̻��̸� ������ �����ڷδ� �񱳰� �ȵȴ�.
-- �׷��� ������ �����ڷ� �� �ؾ� �Ѵ�.

-- ������ ���������� ?
-- ���� ��� ���� �������� ������ ��������.
-- ������ ������ ���Ұ�. ������ ������ ���.

-- ������ �������� ����
-- IN : ���������� �����Ͱ� ���������� ��� �� �ϳ��� ��ġ�� �����Ͱ� ������ True ��ȯ.
--> IN (��������)
-- ANY : ���������� ���ǽ��� �����ϴ� ���������� ����� �ϳ� �̻��̸� True.
--> �񱳿����� ANY (��������)
-- ALL : ���������� ���ǽ��� ���������� ��� ��ΰ� �����ϸ� True.
--> �񱳿����� ALL (��������)
-- EXISTS : �������� ��� ���� �����ϴ��� ���θ� Ȯ��. (�� ���� �ϳ� �̻��̸� True)
--> EXISTS (��������)

-- �ǽ�) �� �μ��� �ְ� �޿� ���� ���
select department_id, MAX(salary)
from employees
group by department_id;

-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ���� ������ ���� ���
-- (�μ�id, first_name, �޿� ����)
select department_id, first_name, salary
from employees
where salary IN (select MAX(salary)
from employees
group by department_id);

-- �μ��� �ְ� �޿��� ���� �޿��� ������ ��� ������ ��µ� ��.
-- IN �������� ����� �����ϴ� ���� �� ��ġ�ؾ� �Ѵ�.

-- ANY ������ Ȱ��
select department_id, first_name, salary 
from employees
where salary = ANY (select MAX(salary) from employees group by department_id);

-- IN �����ڿ� ���� ��� ���� ���´�.
-- ������ �����ϴ� ����� �ϳ��� True�� True.
--> ANY�� ���ٶ�� �� �����ڸ� ����ϸ� IN �����ڿ� ���� ��� �� ���

-- �μ��� �ְ� �޿��� �ϳ��� True�� True.
-- ���������� ���� �� � �ϳ��� ������ ���������� ���� ū ���� ������
-- ��� ���� ����� �ȴ�.
-- �� �μ��� �ְ� �޿��� �� �ּҰ����� ���� ���� �� ����� �ȴ�.

-- ALL ���
select department_id, first_name, salary 
from employees
where salary >= ALL (select MAX(salary) from employees group by department_id);

-- ALL : ���� ������ ����� �����ϴ� ��� ���鿡 ���� ������ �����ؾ� ��.
-- ���������� ���������� ��� ��� ���� �����ؾ� ��.
-- ���������� ��� ���� ���� ū ���� 24000�� ���ؼ� ũ�ų� ���� ������ ���

-- EXISTS �����ڴ� ���� ���θ� Ȯ��
select first_name, department_id from employees
where EXISTS (select first_name from employees where department_id = 110);

-- �����ϸ� �������� ��� �� ���. �������� ������ ������� ����.
