-- CHAPTER 01. SELECT
-- SQL �ּ��� --

select first_name from employees;

/* 
1. sql���� ��ҹ��� ���� ����.
2. ���⳪ �ٹٲ� ���� ��ɾ� ���࿡ �������.
3. SQL ���� ������ ������ ;(�����ݷ�)
4. SQL ���� ����Ű  ctrl + Enter
*/

-- �������̺��� ������ email --
select email from employees;

-- SELECT�� �⺻ ��� ���
-- SELECT   ��ȸ�� �÷���1, �÷���2, ...
-- FROM     ��ȸ�� ���̺�

-- �������̺��� ����id, firstname, phonenumber, salary ���
select employee_id, first_name, phone_number, salary from employees;

-- * -> ��ü�� �ǹ�
-- ���� ���̺��� ��ü ���� ���
select * from employees;

-- �μ����̺��� ��ü ���� ����ϰ� ���� ������ �� ���Դϱ�?
select * from departments;

-- �ǽ�1) �������̺��� ����ID, firstname, managerID
select employee_id, first_name, manager_id from employees;
-- �ǽ�2) �μ����̺��� �μ�ID, �μ���, ��ġID
select department_id, department_name, location_id from departments;

select department_id from employees;

-- ������ �ߺ� �����ϱ�
-- distinct
select distinct department_id from employees;

-- ���� ���̺��� job_id �ߺ� ����
select distinct job_id from employees;

select distinct job_id, department_id from employees;
-- distinct �ڿ� 2�� �̻��� �÷��� ���� �Ǹ�
-- �� �� �÷��� �ߺ��� �־ �ٸ� �� �÷��� ���� �ٸ��� �ٸ��� ���.

-- tip !
-- �÷��� ���� ���� ���� ( +, -, *, / )
select first_name, salary from employees;

select first_name, salary, salary*12 from employees;

-- ��Ī ����ϱ�
-- Alias ��� �ϸ� �Ѵ��� ���� ���� ����.
-- AS Ű����� ��Ī ����.

-- 1. SELECT �÷� ��Ī
-- 2. SELECT �÷� "��Ī"
-- 3. SELECT �÷� AS ��Ī
-- 4. SELECT �÷� AS "��Ī"

select first_name as �̸�, (salary*12) as "AnnSal" from employees;

-- ������ �̸��� �Ի���, �Ի��� ������ ���� ���
select first_name, hire_date ,(hire_date + 1) as �Ի��ϴ����� from employees;

-- order by ��
-- Ư�� �÷��� �������� ���ĵ� ���·� ���.
-- SQL ����������� ���� �������� ����.
-- ������ ���Ĺ�� �������� ������ �⺻������ ��������(ASC).

select * from employees order by salary ASC;

-- �ֱ� �Ի��� ��¥ ���� ���� �̸��� �Ի糯¥ ���
select first_name, hire_date from employees order by hire_date DESC;

-- ����ID, �μ�ID, �̸�, �޿� ������ ���. �� �μ�ID�� ��������, �޿��� ��������.
select employee_id, department_id, first_name, salary from employees
order by department_id ASC, salary DESC;

-- NULL �̶� ?
-- �������� ���� ������ ����ִ� ����.
-- ���� �������� �ʰų� �������� ���� ���� �ǹ���.
-- ���� 0 �� �� ���ڿ� ""�� NULL ���� �ƴ�.
-- NULL�� �����ϸ� ��� ���� ������ NULL.
-- NULL �� ���ϸ� ������ false.

select employee_id, commission_pct, (commission_pct * 2) as up_bonus from employees;
-- ���� �������� �ʱ� ������ ���� �Ұ�.





