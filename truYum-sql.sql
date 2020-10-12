create database truyum;
use truyum;
drop table users;
create table menuitems
(
    itemid int,
	custname varchar(20),
    price int, 
    active1 varchar(5),
    dateoflaunch varchar(10),
    category varchar(20),
    freedelivery varchar(10),
     PRIMARY KEY (ITEMID)
);
create table users
(
	userid int,
    username varchar(10),
     PRIMARY KEY (USERID)
);

create table cart
(
	cartid int,
    userid int,
    itemid int,
    FOREIGN key(userid)  references users(userid),
	foreign key (itemid) references menuitems(itemid)
);
 show tables;
 
 insert into menuitems(itemid,custname,price,active1,dateoflaunch,category,freedelivery)
 values (1,'frenchfires',99,'YES','15/03/2005','MainCourse','YES'),(2,'Brownies',199,'NO','19/04/2008','Desert','NO');
 
 insert into users values(101,'Admin');
 insert into users values(201,'Customer');
 
 insert into cart values(111,201,1);
 insert into cart values(112,201,2);
 describe menuitems; 

  select * from menuitems;
   select * from cart;
    select * from users;
    
select * from menuitems where dateoflaunch<now() and active1='YES';
select custname from menuitems where itemid=1;

update menuitems set custname='Biryani' where itemid=2;

select m.custname from menuitems m inner join cart c on m.itemid=c.itemid;