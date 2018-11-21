-- PSQL dump 10.13  Distrib 5.6.20, for osx10.9 (x86_64)
--
-- Host: localhost    Database: jitbit
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `jitbit`
--

/*!40000 DROP DATABASE IF EXISTS `jitbit`*/;

DROP DATABASE IF EXISTS jitbit;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ jitbit /*!40100 DEFAULT CHARACTER SET utf8 */;

\c jitbit;


--
-- Table structure for table `cakes`
--
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments(DepartmentID INTEGER PRIMARY KEY, Name VARCHAR);
CREATE TABLE Employees(EmployeeID INTEGER PRIMARY KEY, DepartmentID INTEGER, BossID INTEGER, Name VARCHAR, Salary INTEGER);

ALTER TABLE Employees ADD FOREIGN KEY (BossID) REFERENCES Employees(EmployeeID);
ALTER TABLE Employees ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

INSERT INTO Departments(DepartmentID, Name)
                 VALUES(1, 'Exec'),
                       (2, 'Legal'),
                       (3, 'IT'),
                       (4, 'Admin'),
                       (5, 'Nobody');

INSERT INTO Employees(EmployeeID, DepartmentID, BossID, Name,    Salary)
               VALUES(         1,            1,      1, 'Chief',    100),
                     (         2,            3,      1, 'CTO',       95),
                     (         3,            2,      1, 'CFO',      100),
                     (         4,            3,      2, 'IT 1',      90),
                     (         5,            3,      2, 'IT 2',      90),
                     (         6,            4,      1, 'Adm 1',     20),
                     (         7,            4,      1, 'Adm 2',    110),
                     (         8,            3,      2, 'IT 3',      50),
                     (         9,            3,      1, 'IT 4',      60),
                     (        10,            2,      3, 'Legal 1',  110),
                     (        11,            3,      3, 'IT 5',      80),
                     (        12,            3,      1, 'IT 6',     200);
