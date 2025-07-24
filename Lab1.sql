--Northwind
--��ͧ������ʾ�ѡ�ҹ �ӹ�˹�� ���� ���ʡ�� �ͧ��ѡ�ҹ�������㹻���� USA
SELECT EmployeeID, TitleOfCourtesy, FirstName, LastName
FROM Employees
WHERE Country = 'USA';

--��ͧ��â������Թ��ҷ�������ʻ����� 1,2,4,8 ������Ҥ� ��ǧ 100$-200$
SELECT *
FROM Products
WHERE CategoryID IN (1, 2, 4, 8)
  AND UnitPrice BETWEEN 100 AND 200;

--3. ��ͧ��û���� ���ͧ ���ͺ���ѷ�١��� ���ͼ��Դ��� ������ �ͧ�١��ҷ����� ���������Ҥ WA ��� WY
SELECT Country, City, CompanyName, ContactName, Phone
FROM Customers
WHERE Region = 'WA' or Region = 'WY' --WA ��� WY 

--4. �����Ţͧ�Թ������ʻ�������� 1 �Ҥ�����Թ 20 �����Թ������ʻ�������� 8 �Ҥҵ���� 150 ����
SELECT ProductID, ProductName, CategoryID, UnitPrice
FROM Products
WHERE (CategoryID = 1 AND UnitPrice <= 20) 
   or (CategoryID = 8 AND UnitPrice >= 50);

--5. ���ͺ���ѷ�١��� �������� ����� USA �������������Ţ FAX  ���§����ӴѺ���ͺ���ѷ
SELECT CompanyName
FROM Customers
WHERE Fax IS NULL
order by CompanyName

--6. ��ͧ��â������١��ҷ����ͺ���ѷ��դ���� Com
SELECT *
FROM Customers
WHERE CompanyName like '%com%'