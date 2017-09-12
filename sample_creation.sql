\c postgres
drop database restuarant_find;
create database restuarant_find;
\c restuarant_find
create table customer(
	name	varchar(20),
	phone	numeric(10),
	cid	varchar(10),
	email	varchar(30),
	area	varchar(20),
	address	varchar(50),
	type	integer,
	range decimal(4,2),
	primary key(cid)
);

create table restuarant(
	rid	varchar(10),
	address varchar(50),
	name	varchar(30),
	description	varchar(512),
	type	integer,
	contact	numeric(11),
	area	varchar(20),

	primary key(rid)
);

create table cuisine(
	rid	varchar(10),
	type	integer,
	cuisine_name	varchar(20),

	primary key(rid,type),
	foreign key(rid) references restuarant(rid)
	 --foreign key(type) references restuarant(type)
);
--
-- create table feedback(
-- 	r_rating	numeric(3,1),
-- 	c_rating	numeric(3,1),
-- 	c_review	var	primary key(cid,rid),char(50),
-- 	r_review	varchar(50),
-- 	cid	varchar(10),
-- 	rid	varchar(10),
--
--
-- 	foreign key(cid) references customer(cid),
-- 	foreign key(rid) references restuarant(rid)
-- );

create table restuarant_info(
	rating	numeric(3,1),
	review	varchar(50),
	cid	varchar(10),
	rid	varchar(10),

	primary key(cid,rid),
	foreign key(cid) references customer,
	foreign key(rid) references restuarant
);

create table range (
	from_add varchar(50),
	to_add varchar(50),
	range decimal(4,2),

	primary key(from_add,range),
	foreign key(from_add) references customer(area),
	foreign key(range) references customer(range)

);


-- create table distance(
-- 	cid	varchar(10),
-- 	rid	varchar(10),
-- 	cust_input	varchar(50),
-- 	cust_rest_address	varchar(50),
-- 	range	integer,
--
-- 	primary key(cid,rid,cust_input,cust_rest_address),
--
-- 	foreign key(cid) references customer,
-- 	foreign key(rid) references restuarant
-- );

/*create table distance_btw(
	cust_input	varchar(50),
	rest_address	varchar(50),
	distance	numeric(5),

	primary key(cust_input,rest_address),
	foreign key(cust_input) references distance(cust_input),
	foreign key(rest_address) references distance(cust_rest_address)
);*/


/*insert into customer values('Arpit Sharma',9488800011,'1','arpit.sharma@gmail.com','Vijaynagar','House No.1',0);
insert into customer values('Yash Shah',9988770022,'2','yash.shah@gmail.com','Yeshwantpur','House No.2','1');
insert into customer values('Darshit Serna',8795533033,'3','darshit.serna@gmail.com','Banashankari','House No.3','0');
insert into customer values('Aditya Sharma',7944757505,'4','aditya.sharma@gmail.com','Malleshwaram','House No.1','1');
insert into customer values('Pallav Shah',9343892369,'5','pallav.shah@gmail.com','Jayanagar','House No.2','0');
insert into customer values('Rahul Bharadwaj',8023360868,'6','rajat.bharadwaj@gmail.com','J.P.Nagar','House No.3','1');
insert into customer values('Achintya Madhav',8022750741,'7','achintya.madhav@gmail.com','Indiranagar','House No.4','0');

insert into restuarant values('1','Rarea1','Hotel 1','Good','0','8022443311','Vijaynagar');
insert into restuarant values('2','Rarea2','Hotel 2','Average','1','8023907191','Banashankari');
insert into restuarant values('3','Rarea3','Hotel 3','Excellent','0','8022203686','Jayanagar');
insert into restuarant values('4','Rarea4','Hotel 4','Good','0','8033344466','Yeshwantpur');
insert into restuarant values('5','Rarea5','Hotel 5','Poor','1','9976468551','J.P.Nagar');
insert into restuarant values('6','Rarea6','Hotel 6','Good','0','9467836763','Malleshwaram');
insert into restuarant values('7','Rarea7','Hotel 7','Average','1','9483245423','Indiranagar');

insert into cuisine values('1','0','South Indian');
insert into cuisine values('2','1','Chinese');
insert into cuisine values('3','1','Italian');
insert into cuisine values('4','0','North Indian');
insert into cuisine values('5','1','South Indian');
insert into cuisine values('6','1','North Indian');
insert into cuisine values('7','0','Mexican');*/

INSERT INTO customer VALUES ('Gulzar','9155180860', 101, 'Jus.BEN4905@yahoo.com', 'Basavanagudi', 'HouseNo1', 1, 31.63);
INSERT INTO customer VALUES ('Savitendra','9181613715', 102, 'Victo.HODGE9169@hotmail.com', 'MG Road', 'HouseNo1', 1, 22.73);
INSERT INTO customer VALUES ('Tamonash','9867516285', 103, 'Domi.HA3982@yahoo.com', 'Rajajinagar', 'HouseNo1', 1, 42.15);
INSERT INTO customer VALUES ('Suryakanti','9133481400', 104, 'Aro.MO8245@mail2web.com', 'Banashankari', 'HouseNo1', 1, 37.46);
INSERT INTO customer VALUES ('Mamata','9164263306', 105, 'Isha.RU7804@mail2web.com', 'Lalbagh Main Road', 'HouseNo1', 0, 21.10);
INSERT INTO customer VALUES ('Nidhi','9135675076', 106, 'Haylie.BALDWI7964@hotmail.com', 'Vijayanagar', 'HouseNo1', 0, 30.00);
INSERT INTO customer VALUES ('Ranya','9821039931', 107, 'Dar.HOW1436@yahoo.com', 'BTM Layout', 'HouseNo1', 0, 22.09);
INSERT INTO customer VALUES ('Ilandevan','9608968368', 108, 'Kae.FRYE8646@mail2web.com', 'HSR Layout', 'HouseNo1', 1, 33.99);
INSERT INTO customer VALUES ('Harshal','9179292701', 109, 'Em.WATE9638@gmail.com', 'Malleshwaram', 'HouseNo1', 0, 22.81);
INSERT INTO customer VALUES ('Anshu','9077448320', 110, 'Colin.NOR7512@yahoo.com', 'Yeshwantpur', 'HouseNo1', 0, 21.91);
INSERT INTO customer VALUES ('Arunvihari','9129252478', 111, 'Re.AGUI2814@mail2web.com', 'Indiranagar', 'HouseNo1', 1, 26.23);
INSERT INTO customer VALUES ('Faiyaz','9733250058', 112, 'Ami.HERRI3395@yahoo.com', 'Jayanagar', 'HouseNo1', 0, 36.53);
INSERT INTO customer VALUES ('Sudevi','9194090282', 113, 'An.RI8540@hotmail.com', 'Frazer Town', 'HouseNo2', 0, 34.20);
INSERT INTO customer VALUES ('Ragini','9572532664', 114, 'Jayli.WINTER2682@yahoo.com', 'Shivajinagar', 'HouseNo2', 0, 29.47);
INSERT INTO customer VALUES ('Sadguna','9606611523', 115, 'Hect.VINCE7650@yahoo.com', 'Marathahalli', 'HouseNo2', 0, 44.59);
INSERT INTO customer VALUES ('Dharmaditya','9363874037', 116, 'Br.CLA9132@hotmail.com', 'Basavanagudi', 'HouseNo2', 0, 41.65);
INSERT INTO customer VALUES ('Janitha','9055278863', 117, 'Tes.MCCA5849@hotmail.com', '560001', 'HouseNo2', 1, 20.64);
INSERT INTO customer VALUES ('Nripesh','9434823581', 118, 'Bri.FARRELL3884@mail2web.com', 'Rajajinagar', 'HouseNo2', 1, 47.92);
INSERT INTO customer VALUES ('Mannan','9346090160', 119, 'Madelin.BE1843@hotmail.com', 'Banashankari', 'HouseNo2', 1, 28.36);
INSERT INTO customer VALUES ('Shabana','9764440923', 120, 'A.G3623@live.com', '560001', 'HouseNo2', 0, 25.72);
INSERT INTO customer VALUES ('Sananda','9074371898', 121, 'Kamill.MANNIN1569@live.com', 'Vijayanagar', 'HouseNo2', 1, 25.76);
INSERT INTO customer VALUES ('Prabal','9769716962', 122, 'Maken.BLACK6720@mail2web.com', 'BTM Layout', 'HouseNo2', 0, 35.04);
INSERT INTO customer VALUES ('Lochan','9204541620', 123, 'Arm.HAL1944@yahoo.com', 'HSR Layout', 'HouseNo2', 0, 24.75);
INSERT INTO customer VALUES ('Saras','9156978009', 124, 'Nikol.HOW5302@live.com', 'Malleshwaram', 'HouseNo2', 1, 44.51);
INSERT INTO customer VALUES ('Naina','9171988729', 125, 'Lyric.BARLOW2713@yahoo.com', 'Yeshwantpur', 'HouseNo2', 1, 34.44);
INSERT INTO customer VALUES ('Trishanku','9628503167', 126, 'Fi.BO8589@hotmail.com', 'Indiranagar', 'HouseNo3', 0, 25.89);
INSERT INTO customer VALUES ('Thirumalai','9695162365', 127, 'Giov.BO8525@gmail.com', 'Jayanagar', 'HouseNo3', 0, 41.84);
INSERT INTO customer VALUES ('Shorashi','9139944026', 128, 'Jordyn.WEBER5436@live.com', '560001', 'HouseNo3', 0, 36.79);
INSERT INTO customer VALUES ('Hemaraj','9025482263', 129, 'Adr.FOWL9902@hotmail.com', 'Shivajinagar', 'HouseNo3', 0, 23.39);
INSERT INTO customer VALUES ('Harishchandra', '9211729990', 130, 'Adel.MERCE6047@gmail.com', 'Sheshadripurum', 'HouseNo3', 0, 48.90);
INSERT INTO customer VALUES ('Acalesvara','9151353909', 131, 'Dea.HESTER3275@mail2web.com', 'Basavanagudi', 'HouseNo3', 0, 48.65);
INSERT INTO customer VALUES ('Shreeparna','9388260417', 132, 'Ali.TRUJI2188@yahoo.com', '560001', 'HouseNo3', 1, 36.64);
INSERT INTO customer VALUES ('Yogesh','9547728958', 133, 'Aliso.JOHNS6256@yahoo.com', 'Nandini Layout', 'HouseNo3', 1, 34.35);
INSERT INTO customer VALUES ('Abhijit','9196623701', 134, 'Kyl.GAIN5572@gmail.com', 'Banashankari', 'HouseNo3', 1, 38.31);
INSERT INTO customer VALUES ('Prabhakar','9782664468', 135, 'Je.BUCHANAN8400@gmail.com', '560001', 'HouseNo3', 1, 35.25);
INSERT INTO customer VALUES ('Rupak','9303013620', 136, 'Helen.FUEN1186@yahoo.com', 'Vijayanagar', 'HouseNo3', 1, 29.81);
INSERT INTO customer VALUES ('Rajan','9125797551', 137, 'Howar.WALKE3026@mail2web.com', 'Kormangala', 'HouseNo3', 1, 44.93);
INSERT INTO customer VALUES ('Fahad','9086079969', 138, 'Ryd.MER8636@yahoo.com', 'Ulsoor', 'HouseNo3', 0, 28.01);
INSERT INTO customer VALUES ('Diksha','9322802354', 139, 'Jab.MCC6795@mail2web.com', 'Infantry Road', 'HouseNo4', 1, 28.02);
INSERT INTO customer VALUES ('Neeta','9057064054', 140, 'Aver.CA4787@yahoo.com', 'Commercial Street', 'HouseNo4', 0, 38.76);
INSERT INTO customer VALUES ('Vimala','9791839468', 141, 'Ken.ROTH5030@gmail.com', 'Indiranagar', 'HouseNo4', 1, 42.03);
INSERT INTO customer VALUES ('Mahanidhi','9541798414', 142, 'Th.CALDE2425@live.com', 'Banashankari', 'HouseNo4', 1, 41.70);
INSERT INTO customer VALUES ('Trilochan','9353146313', 143, 'Uli.PAY9786@yahoo.com', 'Indiranagar', 'HouseNo4', 0, 45.06);
INSERT INTO customer VALUES ('Prithvi','9195191800', 144, 'Chr.EW5445@yahoo.com', 'Malleshwaram', 'HouseNo4', 0, 31.74);
INSERT INTO customer VALUES ('Madhushri','9784186853', 145, 'Elisabe.HARR8573@mail2web.com', 'Jayanagar', 'HouseNo4', 1, 42.92);
INSERT INTO customer VALUES ('Sweta','9311812636', 146, 'Layn.POOLE8173@yahoo.com', 'Basavangudi', 'HouseNo4', 1, 24.49);
INSERT INTO customer VALUES ('Tarika','9166888481', 147, 'Sidne.RICHAR3722@live.com', 'Rajajinagar', 'HouseNo4', 0, 36.63);
INSERT INTO customer VALUES ('Adil','9106734523', 148, 'Deric.PE5603@hotmail.com', '560001', 'HouseNo4', 0, 30.56);
INSERT INTO customer VALUES ('Nishant','9129255846', 149, 'Lilian.TOD1430@gmail.com', 'Indiranagar', 'HouseNo4', 0, 48.91);
INSERT INTO customer VALUES ('Nirmala','9703744208', 150, 'Broo.BUC6124@hotmail.com', 'Indiranagar', 'HouseNo4', 1, 40.79);


INSERT INTO restuarant VALUES (1, 'Rarea1', 'Szechuan Dragon', 'A place that would give you true value for your money. Known for its authentic Chinese food Szechuan Dragon is also a delight for the vegetarians. For people who love spicy food, the place has many options like veg spring rolls. The setting of the restaurant is decent and so is price list.', 1, '08011470302', 'Basavanagudi');
INSERT INTO restuarant VALUES (2, 'Rarea1', 'Gramin', 'A small place with a village like setting, this place will bring tears of joy to someone who enjoys north Indian cuisine. This place is always crowded but makes up the wait worthwhile by taking the order beforehand. So, just reach to your table and enjoy the delicious, mouthwatering range of sabji among the very chirping crowd.', 1, '08005183271', 'Kormangala');
INSERT INTO restuarant VALUES (3, 'Rarea1', 'Shree Sagar(CTR)', 'The place is crowded at any given hour, not just because its popularity, also because it is consistent in delivering delicious food. Easily one of the best places to have South Indian Food in Bangalore.', 1, '08001115408', 'Malleshwaram');
INSERT INTO restuarant VALUES (4, 'Rarea1', 'Dum Pure', 'If you ever want to having ghar ka khana within budget, then blindly follow the map to reach this place. The place serves one o the best north Indian thali and their sabudana khichdi is a must try. It is one of the most affordable restaurants in Bangalore.', 0, '08079482237', 'Infantry Road');
INSERT INTO restuarant VALUES (5, 'Rarea1', 'Tayabbs', 'Tayabbs is among those restaurants in Bangalore that are know for it´s charm. The place is something different from your regular food joints. Apart from the unique setting, Tayabbs is famous for the variety of Rolls and Beda roti.', 1, '08085700191', 'Indiranagar');
INSERT INTO restuarant VALUES (6, 'Rarea1', 'Vasudev Adigas', 'A great south Indian place known for serving the best sambar, this place will make you come back again and again. The place will always be full in the morning with most people having their famous idlivada combination', 0, '08032991974', 'Indiranagar');
INSERT INTO restuarant VALUES (7, 'Rarea1', 'Kabab Magic', 'This place has been very famous for its kebabs and grilled chicken for more than 2 decades now. Serving delicious chunks of chicken in a spicy tikka sauce, their rolls are to die for.', 1, '08085379781', 'Jayanagar');
INSERT INTO restuarant VALUES (8, 'Rarea1', 'Shivaji Military Hotel', 'This place serves one of the best Biryanis in Bangalore. Make sure to reach early as it gets filled up real soon.', 1, '08094304157', 'Jayanagar');
INSERT INTO restuarant VALUES (9, 'Rarea1', 'Hard Rock Cafe', 'Rock n rollthemed chain with a highenergy vibe serving burgers & American classics.', 1, '08035972102', '560001');
INSERT INTO restuarant VALUES (10, 'Rarea1', 'Taaza Thindi', 'Even though the restaurant serves a limited menu, but the taste really makes up for it. The place is known for it´s maintenance and good service. Anyone looking for a decent and affordable place to have Dosas and Idli, must try this place at least once.', 0, '08045468650', 'Jayanagar');
INSERT INTO restuarant VALUES (11, 'Rarea2', 'Smoke House Deli', 'Good', 1, '08029683524', 'Indiranagar');
INSERT INTO restuarant VALUES (12, 'Rarea2', 'Le Jardin', 'Colonialstyle restaurant with lush garden views, known for champagne lunches and gourmet buffets.', 1, '08017381701', 'MG Road');
INSERT INTO restuarant VALUES (13, 'Rarea2', 'Absolute Barbecue', 'Excellent', 1, '08073033702', 'Marathahalli');
INSERT INTO restuarant VALUES (14, 'Rarea2', 'Sunny"s Restaurant', 'Glassfronted, 150seater European/Italian restaurant named after a dog and open since 1995.', 1, '08075442508', '560001');
INSERT INTO restuarant VALUES (15, 'Rarea2', 'New Modern Hotel', 'Fast service, easy on pocket, consistent food and excellent coffee, the place has everything that makes you want to come here again and again. It is said to be  one of the most reliable and old restaurants in Bangalore.', 0, '08062598005', 'Basavanagudi');
INSERT INTO restuarant VALUES (16, 'Rarea2', 'Manjit ka Dhaba', 'Having a limited menu, this place is known for great food in less cash. If you want to have the best Punjabi vegetarian dishes without worrying about the finedine experience, then this is your next stop. One of the most affordable restaurants in Bangalore to have Punjabi food.', 0, '08004691147', 'Frazer Town');
INSERT INTO restuarant VALUES (17, 'Rarea2', 'China Pearl', 'Chinese caligraphy complements the Chinese Hakka cuisine served at this atmospheric restaurant.', 1, '08004148423', 'Kormangala');
INSERT INTO restuarant VALUES (18, 'Rarea2', 'Bangalore Mandarin', 'Good', 1, '08012731626', 'Indiranagar');
INSERT INTO restuarant VALUES (19, 'Rarea2', 'Xian restuarant', 'Oriental art fills this simple dining room specialising in a range of Indianised Chinese dishes.', 1, '08054242084', 'Ulsoor');
INSERT INTO restuarant VALUES (20, 'Rarea2', 'Vidyarthi Bhavan', 'It is one of those restaurants in Bangalore that needs no introduction to the local crowd. The chrispy Masala Dosa of Vidhyarthi is very famous which is complimented by the delicious Chutney. Most Bangaloreans must have tried the Dosas here at least once. Other popular food items here include Poori Saagu, Chow Chow Bath and of course Idly Vada.', 0, '08029336172', 'Basavanagudi');

INSERT INTO restuarant VALUES (21, 'Rarea3', 'Maiyas Restaurant', 'If you want to enjoy the south Indian meal with perfect filter coffee, then this is your destination. Though this place offers north Indian meals too, but nothing can match the mouthwatering variety of 24 items in the south indian thali.', 0, '08042711010', 'Jayanagar');


INSERT INTO restuarant VALUES (22, 'Rarea3', 'Asha Food Camp', 'The place doesn’t offer anything for the nonvegetarians, but the veggies in town always crowd the place for the delicious North Indian food. The South Indian food at Asha is equally delicious and affordable. It would be only justified if you call Asha, one of the best veg restaurants in Bangalore.', 0, '08014329371', 'Malleshwaram');



INSERT INTO restuarant VALUES (23, 'Rarea3', 'South Kitchen', 'If you live anywhere near Basavanagudi, South Kitchen should be your "Go to" place for daily breakfast. The crispy Vadas are well known in the area. It is one of the most budgetfriendly restaurants in Bangalore.', 0, '08044909930', 'Basavanagudi');

INSERT INTO restuarant VALUES (24, 'Rarea3', 'Gud Dhani', 'Treat your taste buds with authentic rajasthani food in a pocketfriendly place. WIh quick service, this place serves one of the best paneer dishes and gate ki sabzi will remind you of home.', 0, '08053100828', 'BTM Layout');

INSERT INTO restuarant VALUES (25, 'Rarea3', 'Halli Mane', 'This place offers authentic Karnataka food with a village ambience situated in traditional part of Bangalore. Just make this one of your top 3 places to visit once in malleshwaram.', 0, '08062407472', 'Malleshwaram');
INSERT INTO restuarant VALUES (26, 'Rarea3', 'Hotel Nalapaka', 'Nalapaka is a perfect breakfast restaurant that can give your day a perfect start. The coffee and Masala Paddus are quite famous here. It is one of those restaurants in Bangalore that can brag about serving authentic South Indian food, clearly making it a good choice for breakfast.', 0, '08079258900', 'Rajajinagar');
INSERT INTO restuarant VALUES (27, 'Rarea3', 'MTR', 'Good', 0, '08027121585', '560001');
INSERT INTO restuarant VALUES (28, 'Rarea3', 'Vishwa Brahmin"s  Cafe' , 'Excellent', 0, '08053956175', 'Vijayanagar');
INSERT INTO restuarant VALUES (29, 'Rarea3', 'Priyadharshini Grand', 'Good', 0, '08056841316', 'Vijayanagar');
INSERT INTO restuarant VALUES (30, 'Rarea3', 'The Higher Taste', 'Excellent', 1, '08025876405', 'Rajajinagar');
INSERT INTO restuarant VALUES (31, 'Rarea3', 'New Sagar Fast Food', 'Good', 0, '08028765058', 'Rajajinagar');

INSERT INTO cuisine VALUES (1, 1, 'Chinese');
INSERT INTO cuisine VALUES (2, 1, 'North Indian');
INSERT INTO cuisine VALUES (3, 1, 'South Indian');
INSERT INTO cuisine VALUES (4, 0, 'North Indian');
INSERT INTO cuisine VALUES (5, 1, 'North Indian');
INSERT INTO cuisine VALUES (6, 0, 'South Indian');
INSERT INTO cuisine VALUES (7, 1, 'North Indian');
INSERT INTO cuisine VALUES (8, 1, 'Multi');
INSERT INTO cuisine VALUES (9, 1, 'American');
INSERT INTO cuisine VALUES (10, 0, 'South Indian');
INSERT INTO cuisine VALUES (11, 1, 'Continental');
INSERT INTO cuisine VALUES (12, 1, 'Continental');
INSERT INTO cuisine VALUES (13, 1, 'Continental');

INSERT INTO cuisine VALUES (14, 0, 'Fast Food');
INSERT INTO cuisine VALUES (15, 0, 'Punjabi');
INSERT INTO cuisine VALUES (16, 1, 'Chinese');
INSERT INTO cuisine VALUES (17, 1, 'Chinese');
INSERT INTO cuisine VALUES (18, 1, 'Chinese');
INSERT INTO cuisine VALUES (19, 0, 'Fast Food');

INSERT INTO cuisine VALUES (822, 0, 'South Indian');

INSERT INTO cuisine VALUES (825, 0, 'Multi');

INSERT INTO cuisine VALUES (829, 0, 'Fast Food');
INSERT INTO cuisine VALUES (834, 0, 'Rajasthani');

INSERT INTO cuisine VALUES (836, 0, 'South Indian');
INSERT INTO cuisine VALUES (837, 0, 'South Indian');
INSERT INTO cuisine VALUES (838, 0, 'South Indian');
INSERT INTO cuisine VALUES (839, 0, 'South Indian');
INSERT INTO cuisine VALUES (840, 0, 'South Indian');
INSERT INTO cuisine VALUES (841, 1, 'Multi');
INSERT INTO cuisine VALUES (842, 0, 'Fast Food');


insert into feedback values('8.5','9','','','101','801');
insert into feedback values('8.6','8.9','','','102','802');
insert into feedback values('8','8.4','','','103','803');
insert into feedback values('9','8.9','','','104','804');
insert into feedback values('8.5','8.4','','','105','805');
insert into feedback values('7','8.1','','','106','806');
insert into feedback values('7.5','8','','','107','807');

-- insert into restuarant_info values('8.5','','101','801');
-- insert into restuarant_info values('8.6','','102','802');
-- insert into restuarant_info values('8','','103','803');
-- insert into restuarant_info values('9','','104','804');
-- insert into restuarant_info values('8.5','','105','805');
-- insert into restuarant_info values('7','','106','806');
-- insert into restuarant_info values('7.5','','107','807');

/*insert into range values ('Malleshwaram','Marathahalli',5);
insert into range values ('Malleshwaram','Jayanagar',3);
insert into range values ('Malleshwaram','MG Road',8);
insert into range values ('Malleshwaram','Frazer Town',6);
insert into range values ('Malleshwaram','Ulsoor',4);
insert into range values ('Malleshwaram','Rajajinagar',3);
insert into range values ('Malleshwaram','BTM Layout',4);
insert into range values ('Malleshwaram','Kormangala',5);
insert into range values ('Malleshwaram','Infantry Road',6);
insert into range values ('Malleshwaram','Basavanagudi',7);
insert into range values ('Malleshwaram','560001',3);
insert into range values ('Malleshwaram','Indiranagar',8);
insert into range values ('Malleshwaram','Vijayanagar',6);
insert into range values ('Marathahalli','Malleshwaram',5);
insert into range values ('Marathahalli','Jayanagar',6);
insert into range values ('Marathahalli','MG Road',7);
insert into range values ('Marathahalli','Frazer Town',4);
insert into range values ('Marathahalli','Ulsoor',4);*/

insert into distance values('101','801','HouseNo1','Rarea1',4);
insert into distance values('102','802','HouseNo2','Rarea2',3);
insert into distance values('103','803','HouseNo3','Rarea3',3);
insert into distance values('104','804','HouseNo4','Rarea4',2);
insert into distance values('105','805','HouseNo1','Rarea1',3);
insert into distance values('106','805','HouseNo2','Rarea1',4);
insert into distance values('107','803','HouseNo3','Rarea1',4);
insert into distance values('108','820','HouseNo4','Rarea1',6);
insert into distance values('109','810','HouseNo1','Rarea1',7);
insert into distance values('110','813','HouseNo2','Rarea2',7);
insert into distance values('111','813','HouseNo3','Rarea2',6);
insert into distance values('112','819','HouseNo4','Rarea2',3);
insert into distance values('113','816','HouseNo1','Rarea2',2);
insert into distance values('114','816','HouseNo2','Rarea3',9);
insert into distance values('115','815','HouseNo1','Rarea3',3);
insert into distance values('116','814','HouseNo4','Rarea3',8);
insert into distance values('118','801','HouseNo3','Rarea3',1);
insert into distance values('119','801','HouseNo4','Rarea4',5);
insert into distance values('120','804','HouseNo2','Rarea4',3);
insert into distance values('121','803','HouseNo1','Rarea4',2);
insert into distance values('122','812','HouseNo2','Rarea4',6);
insert into distance values('123','811','HouseNo3','Rarea1',3);
insert into distance values('124','808','HouseNo2','Rarea1',2);
insert into distance values('125','807','HouseNo3','Rarea1',1);

/*insert into distance_btw values('HouseNo1','Rarea1','12345');
insert into distance_btw values('HouseNo2','Rarea2','2345');
insert into distance_btw values('HouseNo3','Rarea3','3445');
insert into distance_btw values('HouseNo4','Rarea4','5434');
insert into distance_btw values('HouseNo5','Rarea5','12345');*/
