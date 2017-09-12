\c restaurant_find
--vegetarian restaurants
select * from cuisine where type='0';

--non veg restaurants
select * from cuisine where type='1';

-- name of restaurants with rating >8.5
select name from restuarant where rid in( select rid from restuarant_info where rating>8.5);

--select name of restaurants in an area.
select * from restuarant where area='Vijayanagar';

--select restaurants which match customer are matches with restuarant area.
select name from restuarant where area in (select area from customer where area='Vijayanagar');


--select restaurants which lie within the range of 2 kms
select name,address from restuarant where address in (select cust_rest_address from distance where range <4 and cust_input = 'HouseNo3');


--selecting all restuarants with  a specific cuisine
select name from restuarant where rid in(select rid from cuisine where name = 'North Indian');


--selecting customers who have given feedback greater than 7
select name from customer where cid in (select cid from feedback where r_rating > 7);

--select name from restuarant where area in (select from_add in range where range <6);

--selecting restuarants which have description as Good
select r.name,f.r_rating from restuarant r,feedback f where description='Good';


--selecting restuarant where it is near to House-No-4
select name from restuarant where rid = (select rid from distance where range = 2 and cust_input='HouseNo4');
