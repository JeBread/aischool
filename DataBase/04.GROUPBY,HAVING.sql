-- CHAPTER 04. GROUP BY / HAVING

-- ���� �Լ��� ����
-- ������ �Լ� : �Էµ� �ϳ��� ��� ����� �ϳ��� ������ �Լ�
--> ������, ������, ��¥��, ��ȯ��, NULL���� �Լ�, �����Լ�
-- ������ �Լ� : ���� ���� �Է¹޾� �ϳ��� ��� ������ ��µǴ� �Լ�
--> "�����Լ�"��� �θ�.

-- �����Լ��� Ư¡
-- 1. NULL���� ����.
-- 2. �׷�ȭ(GROUP BY) �� �Ǿ��ִ� ���¿����� ��� ����.

-- �����Լ��� ����
-- COUNT() : ���� �������� ���� ��ȯ
-- SUM() : ���� �������� ���� ��ȯ
-- MAX() : ���� �������� �ִ밪 ��ȯ
-- MIN() : ���� �������� �ּҰ� ��ȯ
-- AVG() : ���� �������� ��հ� ��ȯ

-- �ǽ�)
select COUNT(employee_id) from employees
GROUP BY ();
--> employees ���̺��� �ϳ��� �׷����� ���� ������ �ν� �ϴ� ��.

-- ���� > ȯ�漳�� > �ڵ������� > �࿩��

-- �ǽ�) �μ�id�� ���� ����
select COUNT(department_id)
from employees;

-- COUNT �Լ��� * �� ����� �� �ִ�. null�� ���� ��� ����.
select COUNT(*) from employees;

-- �ǽ�1) �� �޿�
select SUM(salary)
from employees;

-- �ǽ�2) �ִ�/�ּ� �޿�
select MAX(salary),MIN(salary)
from employees;

-- �ǽ�3) �μ�id�� 100�� ���� ��ձ޿�, �Ҽ��� 1�� �ڸ�������.
select ROUND(AVG(salary), 1)
from employees
where department_id = 100;












