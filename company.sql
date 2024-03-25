-- Створення таблиць

CREATE TABLE department (
		id INTEGER,
		name VARCHAR(255),
		PRIMARY KEY (id)
);

CREATE TABLE employees (
        id INTEGER,
        department_id INTEGER,
        name VARCHAR(255),
        PRIMARY KEY (id)
);

CREATE TABLE customer (
        id INTEGER,
        customer_name VARCHAR(255),
        location VARCHAR(255),
        PRIMARY KEY (id)
);

CREATE TABLE contract (
        id INTEGER,
        customer_id INTEGER,
        amount INTEGER,
        PRIMARY KEY (id)
);

CREATE TABLE executor (
		tab_no INTEGER,
		contract_id INTEGER
);

-- Наповнення таблиць

INSERT INTO department(
	id, name)
	VALUES(1,'Manufacturing');
INSERT INTO department(
	id, name)
	VALUES(2,'Logistic');
INSERT INTO department(
	id, name)
	VALUES(3,'Sales');



INSERT INTO employees(
	id, department_id, name) 
    VALUES(1,1,'John Smith');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(2,1,'Michael Johnson');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(3,2,'Robert Brown');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(4,2,'William Clark');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(5,3,'David Taylor');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(6,3,'Jennifer Martinez');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(7,1,'Jessica Wilson');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(8,2,'Richard Anderson');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(9,3,'Daniel Miller');
INSERT INTO employees(
	id, department_id, name) 
    VALUES(10,3,'Elizabeth Thompson');



INSERT INTO customer(
	id, customer_name, location) 
    VALUES(1,'James Brown','Kyiv');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(2,'Sarah Johnson','Lviv');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(3,'Matthew Davis','Odesa');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(4,'Emily Harris','Kharkiv');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(5,'Christopher Wilson','Dnipro');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(6,'Jessica Taylor','Zaporizhzhia');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(7,'David Martinez','Khmelnytskyi');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(8,'Amanda Green','Vinnytsia');
INSERT INTO customer(
	id, customer_name, location) 
    VALUES(9,'Daniel White','Ivano-Frankivsk');


  
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(1,1,20000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(2,2,10000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(3,5,50000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(4,7,150000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(5,8,200000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(6,9,14000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(7,5,26000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(8,4,60000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(9,3,30000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(10,1,32000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(11,2,30000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(12,8,40000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(13,7,50000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(14,9,60000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(15,5,70000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(16,4,80000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(17,3,90000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(18,4,100000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(19,2,110000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(20,1,120000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(21,2,130000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(22,7,140000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(23,8,150000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(24,9,160000);
INSERT INTO contract(
	id, customer_id, amount)
	VALUES(25,3,170000);
  
  
  
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(1,1);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(2,2);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(3,3);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(4,4);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(5,5);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(7,6);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(2,7);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(3,8);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(5,9);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(6,10);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(7,11);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(9,12);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(10,13);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(1,14);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(2,15);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(5,16);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(2,17);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(3,18);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(7,19);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(8,20);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(5,21);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(4,22);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(3,23);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(4,24);
INSERT INTO executor(
	tab_no, contract_id)
	VALUES(5,25);
  
-- Додавання відносин між таблицями

ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES department (id);
ALTER TABLE executor ADD FOREIGN KEY (tab_no) REFERENCES employees (id);
ALTER TABLE executor ADD FOREIGN KEY (contract_id) REFERENCES contract (id);
ALTER TABLE contract ADD FOREIGN KEY (customer_id) REFERENCES customer (id);

-- Поєднання таблиць

SELECT ex.tab_no, dp.name, em.name, ct.amount, cs.customer_name, cs.location FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
	JOIN customer cs ON cs.id = ct.customer_id;

-- Задача 1. Знайти інформацію про всі контракти, які пов'язані з працівниками з департаменту «Logistic». 
-- Показати contract_id, employee_name

SELECT ex.contract_id, em.name AS employee_name FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
WHERE dp.name = 'Logistic';


-- Задача 2. Знайти середню вартість контрактів, укладених зі співробітником John Smith. 
-- Показати середнє значення amount

SELECT ROUND(AVG(ct.amount), '2') AS amount_average FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN contract ct ON ct.id = ex.contract_id
WHERE em.name = 'John Smith';

-- Задача 3. Знайти локацію, яка найчастіше зустрічається серед замовников. 
-- Показати location, count

SELECT location, COUNT(location) FROM customer
GROUP BY (location)
HAVING COUNT(location) = (SELECT COUNT(location) FROM customer
GROUP BY (location)
ORDER BY COUNT(location)
DESC
LIMIT 1);

-- Задача 4. Знайти контракти однакової вартості.
-- Показати count, amount

SELECT COUNT(amount), amount FROM contract
GROUP BY (amount)
HAVING COUNT(amount) >= 2;

-- Задача 5. Знайти замовника з найменшою середньою вартістю контрактів. 
-- Показати customer_name, среднее значение amount

SELECT cs.customer_name, ROUND(AVG(ct.amount), '2') AS amount_average FROM contract ct
	JOIN customer cs ON cs.id = ct.customer_id
GROUP BY cs.customer_name
HAVING AVG(ct.amount) = (SELECT AVG(ct.amount) FROM contract ct
	JOIN customer cs ON cs.id = ct.customer_id
GROUP BY (cs.customer_name)
ORDER BY AVG(ct.amount)
ASC
LIMIT 1);

-- Задача 6. Знайти відділ, який уклав контрактів на найбільшу суму.
-- Показати: department_name, sum

SELECT dp.name AS department_name, SUM(ct.amount) FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
GROUP BY dp.name
HAVING SUM(ct.amount) = 
(SELECT SUM(ct.amount) FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
GROUP BY dp.name
ORDER BY SUM(ct.amount)
DESC
LIMIT 1);
