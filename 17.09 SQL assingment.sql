create schema sales;
create table sales.Products(Product_Id int primary key
,Product_name varchar(20) not null
,Price decimal(10,2)
,Descrip text
,Product_type text);
create table sales.Customer_Table(Customer_Id int primary key
,Email varchar(30) unique not null
,Address text
,Phone char(10)
,Age smallint not null
,DOB date);
set sql_safe_updates=0;
create table sales.Orders(Order_Id int primary key auto_increment
,Product_Id int
,Customer_Id int
,Order_date timestamp
,Order_Status varchar (20)
,Shipping_Address text
,Payment_method varchar(30)
,Payment_status varchar(20)
,Tracking_number varchar(50)
,Notes text
,Foreign key (Product_Id) references Products(Product_Id)
,foreign key (Customer_Id) references Customer_Table(Customer_Id));

