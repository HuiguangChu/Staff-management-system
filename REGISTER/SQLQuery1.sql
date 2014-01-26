--建立数据库名称为REGISTER
CREATE DATABASE REGISTER
GO

USE REGISTER
GO

--一共需要建立以下几张基本表

--1.建立班级分类表CLASS
CREATE TABLE CLASS
(
C_category varchar(20),
C_frequent int ,
C_total int 
)
GO
--删除CLASS表
drop TABLE CLASS

--查询CLASS表中的所有内容
SELECT * FROM CLASS



--2.建立员工表EMP
CREATE TABLE EMP
(

  员工号 int not null primary key  ,
  员工姓名  varchar(30),
  星级数  int ,
参与评比的项目 varchar(30),
  任教班级 varchar(30) ,

  奖品兑换方式 varchar(20),
  可兑换的金额  int  ,
  本次兑换的金额 int  ,
  剩余可兑换的金额 int ,

)
GO


drop table EMP
--查询表EMP中的所有内容
SELECT * FROM EMP




--3.建立评比项目分类表
CREATE TABLE PROP
(
es varchar(20),
ms varchar(20),
ds varchar(20),
mars varchar(20)
)
GO
--查询表PROP中所有内容
SELECT * FROM PROP





--4.建立奖品分类表PC
CREATE TABLE PC
(
电子产品 varchar(50)not null,
旅游 varchar(50)not null ,
健身产品 varchar(50) not null
)
go
drop table pc



insert into pc(电子产品,旅游,健身产品)values ('iphone','双人澳门游','健身年卡')

insert into pc(电子产品,旅游,健身产品)values ('ipod','双人香港游','健身器材')
insert into pc(电子产品,旅游,健身产品)values ('touch','双人台湾游','健身装备')

--查询表PC中所有内容





SELECT * FROM PC

select name from syscolumns where id = object_id('pc')

--建立表PC_C
create table PC_C
(
c_name varchar(50),
)
go
select * from pc_c


--建立表pc_d
create table pc_d
(
d_name varchar(50),
s_name varchar(50),

)
go
insert into pc_d values('健身产品' ,'健身年卡')
insert into pc_d values('健身产品' ,'健身装备')
insert into pc_d values('健身产品' ,'健身器材')
insert into pc_d values('电子产品' ,'ipod')
insert into pc_d values('电子产品' ,'iphone')
insert into pc_d values('电子产品' ,'touch')
insert into pc_d values('旅游' ,'双人澳闷游')
insert into pc_d values('旅游' ,'双人香港游')
insert into pc_d values('旅游' ,'双人台湾游')
drop table pc_d
select * from pc_d





--5.建立奖励额度表PT
CREATE TABLE PT
(
sa int not null primary key,
p_money int 
)
GO


--6.建立评比项目表
create table PB
(
 se varchar(50)
)
GO
DROP TABLE PB
--7.创建会员注册表
create table mem
(
m_name varchar(50),
m_id varchar(50),
m_sex varchar(50),
m_tel varchar(50),


)
go
drop table mem
select * from mem

select * from PB


INSERT INTO PB values ('教学质量之星')
INSERT INTO PB VALUES ('混合式教学之星')
INSERT INTO PB VALUES ('研发之星')
INSERT INTO PB VALUES ('市场支持之星')


GO
--查询表PT中的所有内容
SELECT * FROM PT

--建立添加的存储过程

--1.课程分类表的存储过程
CREATE PROC ADD_CLASS
@C_category varchar(20),
@C_frequent int ,
@C_total int
AS
INSERT INTO CLASS VALUES (@C_category ,@C_frequent,@C_total)

--2.建立员工表的存储过程
CREATE PROC ADD_EMP
@emp_id int ,
@emp_name varchar(30),
@emp_star int ,
@emp_class varchar(30),
@emp_acq varchar(20),
@emp_allow int ,
@emp_actual int ,
@emp_remain int
AS 
INSERT INTO EMP VALUES(@emp_id ,@emp_name ,@emp_star  ,@emp_class ,@emp_acq ,@emp_allow ,@emp_actual ,@emp_remain)

-- 3.建立评比项目的存储过程
CREATE PROC ADD_PROP
 @es varchar(20),
@ms varchar(20),
@ds varchar(20),
@mars varchar(20)
AS
INSERT INTO PROP VALUES(@es ,@ms ,@ds ,@mars )

--4.建立奖品分类的存储过程
CREATE PROC ADD_PC
@tour varchar(20),
@exe varchar(20),
@ele varchar(20)
AS
INSERT INTO PC VALUES(@tour ,@exe ,@ele )

--5.建立奖励额度的存储过程
CREATE PROC ADD_PT
@sa int,
@p_money int
AS 
INSERT INTO PT VALUES(@sa ,@p_money )
--建立更新的存储过程
--1.建立员工表的更新存储过程


CREATE PROC UP_EMP
@emp_id int ,
@emp_name varchar(30),
@emp_star int ,
@emp_class varchar(30),
@emp_acq varchar(20),
@emp_allow int ,
@emp_actual int ,
@emp_remain int
AS
UPDATE EMP SET  emp_name=@emp_name ,emp_star=@emp_star,emp_class=@emp_class ,emp_acq=@emp_acq ,emp_allow=@emp_allow ,emp_actual=@emp_actual ,emp_remain=@emp_remain where emp_id=@emp_id


drop proc UP_EMP




员工号 员工姓名  星级数 参与评比的项目 任教班级 奖品兑换方式 可兑换的金额  本次兑换的金额 剩余可兑换的金额 