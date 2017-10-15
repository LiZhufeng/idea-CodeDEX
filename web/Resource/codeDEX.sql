use company;
SET FOREIGN_KEY_CHECKS = 0;
set unique_checks=0;

drop table if exists Question;
drop table if exists CodeDEX;
drop table if exists Question_CodeDEX;

# �������
# ���⡢����
create table Question(
	qid int primary key auto_increment,
	question varchar(20) not null,
	description varchar(300) not null
);

# codeDEX ��
# ���⡢�������������������
create table CodeDEX(
	cid int primary key auto_increment,
	question varchar(25) not null UNIQUE,
	description varchar(300) not null,
	solution varchar(300) not null,
	code varchar(400)
);

# �����codeDEX���
create table Question_CodeDEX(
	qid int,
	cid int,
	foreign key(qid) references Question(qid)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	foreign key(cid) references CodeDEX(cid)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

insert into Question values(1, '�û����밲ȫ����', '����Ŀ�У����ǿ���Ҫִ��ָ���ѯ���ݿ�ȡ�����Щ���������Ǳ����ȼ���û������룬�����ִ�л����Σ��');
insert into CodeDEX(question, description, solution, code) values('Command Injection', '����ע�룬ִ�е�ָ��û�о�����ȫУ��', 
	'����ָ�������', 'Runtime.getRuntime().exec(command);');
insert into Question_CodeDEX values(1, 1);

SET FOREIGN_KEY_CHECKS = 1;
set unique_checks=1;