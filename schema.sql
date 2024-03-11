create database product_details;
use product_details;
create table product(
id  int not null primary key ,
name varchar(15),
description text,
SKU varchar(15),
category_id int,
inventory_id int,
price decimal,
discount_id int,
created_at timestamp,
modified_at timestamp,
deleted_at timestamp,
foreign key (category_id) references product_category(id),
foreign key (inventory_id) references product_inventory(id),
foreign key (discount_id) references discount(id)
);

create table product_category(
id int  primary key,
name varchar(15),
description text,
created_at timestamp,
modified_at timestamp,
deleted_at timestamp

);

create table product_inventory(
id int primary key unique key,
quantity int,
created_at timestamp,
modified_at timestamp,
deleted_at timestamp

);

create table discount(
id  int primary key ,
name varchar(15),
description text,
discount_percent decimal,
active boolean,
created_at timestamp,
modified_at timestamp,
deleted_at timestamp
);