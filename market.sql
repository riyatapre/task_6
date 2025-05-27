create domain product_name as varchar(50)
check (value in ('milk', 'apple','egge'));

create table market(
  product_id int primary key,
    product_name product_name,
    category varchar(30),
    price int,
    stock int 
)
ALTER DOMAIN product_name DROP CONSTRAINT product_name_check;

insert into market(product_id ,product_name,category ,price )values
(1,'milk','dairy',2),
(3,'eggs','dairy',3),
(5,'apple','fruits',2);
select * from market

update market set price=4 where product_id=1 ;


Create view market_view AS 
SELECT product_id ,product_name FROM market 
WHERE  product_name like '%e';

select *from market_view

select product_name, 
	case when product_name  = 'egge'
		 then 'dairy'
		 else 'fruits'
	end as category
from market

alter table market rename product_name to new_product_type

select * from market ;
