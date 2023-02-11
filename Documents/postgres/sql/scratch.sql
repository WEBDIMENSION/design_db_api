
explain
select *
from users;

explain
select *
from users
where id = 50;

explain
select *
from users
where lastname = '江古田';

explain
select u.lastname, u.firstname, r.name
from users u
         left join user_ranks r
                   on u.user_ranks_id = r.id;


explain
select count(*)
from orders;

explain
select o.orders_id, o.users_id, o.lastname, o.firstname, ur.name
from orders o
         left join user_ranks ur
                   ON o.users_id = ur.id
;


select *
from users u
where u.user_ranks_id is null
;

select *
from users u
where u.user_ranks_id is not null
;


explain
select o.orders_id, o.users_id, o.lastname, o.firstname, ur.name
from orders o
         inner join users u
                    on o.users_id = u.id
         inner join user_ranks ur
                    on u.user_ranks_id = ur.id
where name = 'premium'
;

explain
select o.orders_id, u.id, ur.name
from user_ranks ur
         inner join users u
                    on ur.id = u.user_ranks_id
                        and ur.name = 'premium'
         inner join orders o
                    on u.id = o.users_id
;



explain
select ur.name
from user_ranks ur
         left join users u
                   on ur.id = u.user_ranks_id
where ur.name = 'premium'
;

explain
select ot.orders_id, ot.shipping_name, s.name
from order_total ot
         left join shipping s on ot.shipping_id = s.id
where ot.shipping_id = 1
;


explain
select ot.orders_id, ot.shipping_name, s.name
from shipping s
         inner join order_total ot on s.id = ot.shipping_id
    and s.id = 1
;


select count(*) from order_total ot where ot.shipping_id = 1
;
