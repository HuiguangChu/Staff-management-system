--�������ݿ�����ΪREGISTER
CREATE DATABASE REGISTER
GO

USE REGISTER
GO

--һ����Ҫ�������¼��Ż�����

--1.�����༶�����CLASS
CREATE TABLE CLASS
(
C_category varchar(20),
C_frequent int ,
C_total int 
)
GO
--ɾ��CLASS��
drop TABLE CLASS

--��ѯCLASS���е���������
SELECT * FROM CLASS



--2.����Ա����EMP
CREATE TABLE EMP
(

  Ա���� int not null primary key  ,
  Ա������  varchar(30),
  �Ǽ���  int ,
�������ȵ���Ŀ varchar(30),
  �ν̰༶ varchar(30) ,

  ��Ʒ�һ���ʽ varchar(20),
  �ɶһ��Ľ��  int  ,
  ���ζһ��Ľ�� int  ,
  ʣ��ɶһ��Ľ�� int ,

)
GO


drop table EMP
--��ѯ��EMP�е���������
SELECT * FROM EMP




--3.����������Ŀ�����
CREATE TABLE PROP
(
es varchar(20),
ms varchar(20),
ds varchar(20),
mars varchar(20)
)
GO
--��ѯ��PROP����������
SELECT * FROM PROP





--4.������Ʒ�����PC
CREATE TABLE PC
(
���Ӳ�Ʒ varchar(50)not null,
���� varchar(50)not null ,
�����Ʒ varchar(50) not null
)
go
drop table pc



insert into pc(���Ӳ�Ʒ,����,�����Ʒ)values ('iphone','˫�˰�����','�����꿨')

insert into pc(���Ӳ�Ʒ,����,�����Ʒ)values ('ipod','˫�������','��������')
insert into pc(���Ӳ�Ʒ,����,�����Ʒ)values ('touch','˫��̨����','����װ��')

--��ѯ��PC����������





SELECT * FROM PC

select name from syscolumns where id = object_id('pc')

--������PC_C
create table PC_C
(
c_name varchar(50),
)
go
select * from pc_c


--������pc_d
create table pc_d
(
d_name varchar(50),
s_name varchar(50),

)
go
insert into pc_d values('�����Ʒ' ,'�����꿨')
insert into pc_d values('�����Ʒ' ,'����װ��')
insert into pc_d values('�����Ʒ' ,'��������')
insert into pc_d values('���Ӳ�Ʒ' ,'ipod')
insert into pc_d values('���Ӳ�Ʒ' ,'iphone')
insert into pc_d values('���Ӳ�Ʒ' ,'touch')
insert into pc_d values('����' ,'˫�˰�����')
insert into pc_d values('����' ,'˫�������')
insert into pc_d values('����' ,'˫��̨����')
drop table pc_d
select * from pc_d





--5.����������ȱ�PT
CREATE TABLE PT
(
sa int not null primary key,
p_money int 
)
GO


--6.����������Ŀ��
create table PB
(
 se varchar(50)
)
GO
DROP TABLE PB
--7.������Աע���
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


INSERT INTO PB values ('��ѧ����֮��')
INSERT INTO PB VALUES ('���ʽ��ѧ֮��')
INSERT INTO PB VALUES ('�з�֮��')
INSERT INTO PB VALUES ('�г�֧��֮��')


GO
--��ѯ��PT�е���������
SELECT * FROM PT

--������ӵĴ洢����

--1.�γ̷����Ĵ洢����
CREATE PROC ADD_CLASS
@C_category varchar(20),
@C_frequent int ,
@C_total int
AS
INSERT INTO CLASS VALUES (@C_category ,@C_frequent,@C_total)

--2.����Ա����Ĵ洢����
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

-- 3.����������Ŀ�Ĵ洢����
CREATE PROC ADD_PROP
 @es varchar(20),
@ms varchar(20),
@ds varchar(20),
@mars varchar(20)
AS
INSERT INTO PROP VALUES(@es ,@ms ,@ds ,@mars )

--4.������Ʒ����Ĵ洢����
CREATE PROC ADD_PC
@tour varchar(20),
@exe varchar(20),
@ele varchar(20)
AS
INSERT INTO PC VALUES(@tour ,@exe ,@ele )

--5.����������ȵĴ洢����
CREATE PROC ADD_PT
@sa int,
@p_money int
AS 
INSERT INTO PT VALUES(@sa ,@p_money )
--�������µĴ洢����
--1.����Ա����ĸ��´洢����


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




Ա���� Ա������  �Ǽ��� �������ȵ���Ŀ �ν̰༶ ��Ʒ�һ���ʽ �ɶһ��Ľ��  ���ζһ��Ľ�� ʣ��ɶһ��Ľ�� 