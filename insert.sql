\c tourist;

delete from user_details;
/* email_id, age, Number_of_trips, name, fellow_tourist, username, password, city */ 
insert into user_details values('sindhubhagavatha@gmail.com',	19, 	5, 	'Sindhu', 	6, 	'Simpu',	'123', 		'Udupi'); 
insert into user_details values('shravanya.g17@gmail.com', 	19, 	20, 	'Shravanya G', 	17, 	'Magu', 	'234', 		'Ittmadu');
insert into user_details values('k.shruthi1997@gmail.com', 	19, 	15, 	'Shruthi K', 	10, 	'Shru', 	'345', 		'Deepanjali Nagar');
insert into user_details values('qwerty@gmail.com', 		25, 	32, 	'Aindritha', 	15, 	'Ainu', 	'456', 		'Nasik');
insert into user_details values('abcdefgh@gmail.com', 		31, 	6, 	'Aakhya', 	12, 	'Ammu',         '567', 		'Bidar');
insert into user_details values('asdfgh123@gmail.com', 		22, 	19,	'Govinda', 	8, 	'Guru', 	'678', 		'Chintamani');
insert into user_details values('zxcvb456@yahoo.com', 		45, 	15, 	'Imran',	9, 	'Immu', 	'789', 		'Mysore');
insert into user_details values('poiuy.789@gmail.com', 		36, 	12, 	'Om puri', 	11, 	'Om',           '890', 		'Debagarh');
insert into user_details values('lkj.018hg@yahoo.com', 		27, 	16, 	'Shamili', 	14, 	'Baby', 	'901', 	 	'Pherzawl');
insert into user_details values('mnbv@hotmail.com',		32, 	3, 	'Tara',	 	16, 	'Tara',	 	'102',	 	'Bemetara');
insert into user_details values('simpu@gmail.com',		19, 	5, 	'Sharukh', 	6, 	'Khan',		'201', 		'Chattisgarh'); 
insert into user_details values('jskd234@gmail.com',		43, 	19, 	'Hrithik', 	14, 	'Roshan',	'202', 		'Uttarakhand'); 
insert into user_details values('dheyud98.com',			18, 	11, 	'Sampath', 	7, 	'Kumar',	'203', 		'Rajasthan'); 
insert into user_details values('dwwuqddd7@gmail.com',		45, 	20, 	'Satish', 	16, 	'Shah',		'204', 		'Odisha'); 
insert into user_details values('sudh6432@gmail.com',		46, 	15, 	'Vidharth', 	15, 	'Vidhu',	'205', 		'Assam'); 
insert into user_details values('sjdissj@gmail.com',		76, 	13, 	'Vijay', 	10, 	'Duniya',	'206', 		'Tamil Nadu'); 
insert into user_details values('93fb6@gmail.com',		56, 	5, 	'Uday', 	6, 	'Kiran',	'207', 		'Karanataka'); 
insert into user_details values('gdtsd43@gmail.com',		34, 	23, 	'Upendra', 	5, 	'Limaye',	'208', 		'Gujarat'); 
insert into user_details values('937fdhst@gmail.com',		39, 	12, 	'Utpal', 	23, 	'Dutt',		'209', 		'Bihar'); 
insert into user_details values('hdbc482@gmail.com',		40, 	8, 	'Uttam', 	7, 	'Mohanty',	'210', 		'Goa'); 


delete from places; /* have to change... */
/* place_id, city, name, picture, description,  genre, entry_fee */
insert into places values(1,	'Goa', 'Baga beach',' Beach is a popular beach and tourist destination in North Goa.[1][2] Baga is located at the north end of the contiguous beach stretch that starts from Sinquerim, Candolim, leads to Calangute and then to Baga.Dolphins can be located at around 1–2 km from the shorelineParasailing in Baga BeachThe beach contains rows of shacks and fishing boats, and at high tide the beach is narrow.[3]The beach is named after the Baga Creek, which empties into the Arabian Sea at the north end of the beach.[4]Baga Beach is also famous for water sports such as parasailing and banana rides, and dolphin cruises. In Baga Beach, new parking has been constructed for around 800 cars or more, and there is baga creek bridge which connects northern part like arpora, anjuna etc..', 'Family Park/ Resort');
insert into places values(2,	'Goa', 'dudhsagar','Dudhsagar Falls (literally Sea of Milk ) is a four-tiered waterfall located on the Mandovi River in the border of the Indian state of Goa and Karnataka. It is 60 km from Panaji by road and is located on the Madgaon-Belgaum rail route about 46 km east of Madgaon and 80 km south of Belgaum.', 'Family Park/ Resort');
insert into places values(3,	'Mumbai', 'Prince of Wales','The Chhatrapati Shivaji Maharaj Vastu Sangrahalaya (CSMVS), formerly Prince of Wales Museum of Western India, is the main museum in Mumbai, Maharashtra [3] It was founded in the early years of the 20th century by prominent citizens of Mumbai, with the help of the government, to commemorate the visit of Edward VIII, who was Prince of Wales at the time. It is located in the heart of South Mumbai near the Gateway of India. The museum was renamed in the 1990s or early 2000s after Shivaji, the founder of Maratha Empire. Prior to this, Dr. Bhau Daji Lad Museum, formerly the Victoria and Albert Museum, was established in 1855, just opposite Byculla railway station, Mumbai. This museum is located in side the Victoria Garden, now called Jijamata Udyaan. This Gothic architecture building was revived a few years ago by the Mumbai municipal corporation authorities.', 'Educative');
insert into places values(4,	'Mumbai', 'Kanheri caves','The Kanheri Caves (Sanskrit: कान्हेरीगुहाः Kānherī-guhāḥ) are a group of caves and rock-cut monuments formed from a massive basalt outcrop in the forests of the Sanjay Gandhi National Park, on the western outskirts of Mumbai, India. ...Kanheri comes from the Sanskrit Krishnagiri, which means black mountain.', 'Historical');
insert into places values(5,	'Mumbai', 'Juhu beach','Juhu is a neighbourhood of Mumbai. It is most famous for the sprawling Juhu beach. It surrounded by the Arabian Sea to the west, Versova to the north, Santacruz and Vile Parle to the east, and Khar to the south. ... There are two minor B.E.S.T bus depots in Juhu.', 'Family Park/ Resort');
insert into places values(6,	'Tamil nadu', 'Botanical garden','The Government Botanical Garden is a botanical garden in Udhagamandalam, near Coimbatore(Ooty),Tamil Nadu state, India laid out in 1848. ... It is maintained by the Tamil Nadu Horticulture Department.', 'Family Park/ Resort');
insert into places values(7,	'Tamil nadu', 'Marina beach','The Marina is a natural urban sandy beach along the Coramandel coast on the Bay of Bengal. Primarily sandy, the beach spans about 13 km (8.1 mi), running from near Fort St. George in the north to Besant Nagar in the south and is the longest natural urban beach in India.', 'Family Park/ Resort');
insert into places values(8,	'Kerala', 'Muttupetty Dam','Mattupetty Dam (Madupetty Dam), near Munnar in Idukki District, is a storage Concrete Gravity dam built in the mountains of Kerala, India to conserve water for hydroelectricity. It has been a vital source of power, yielding along with other such dams, huge revenue to the states.', 'Family Park/ Resort');
insert into places values(9,	'Jammu and Kashmir', 'Pangong Tso','Pangong Tso (Tibetan: སྤང་གོང་མཚོ, Wylie: spang gong mtsho; Hindi: पांगोंग त्सो; Chinese: 班公错; pinyin: Bāngōng Cuò), Tibetan for "high grassland lake", also referred to as Pangong Lake, is an endorheic lake in the Himalayas situated at a height of about 4,350 m (14,270 ft).', 'Sports');
insert into places values(10,	'Delhi', 'Lotus temple','The Lotus Temple, located in Delhi, India, is a Bahá'í House of Worship completed in 1986. Notable for its flowerlike shape, it serves as the Mother temple of the Indian subcontinent and has become a prominent attraction in the city.', 'Educative');
insert into places values(11,	'Udupi', 'Shri Krishna Temple','Shri Krishna Temple of Udupi is among the highly revered Hindu shrines dedicated to God Krishna.
The temple resembles an ashram and is also referred as Shri Krishna Math.', 'Religious');
insert into places values(12,	'Udupi', 'St.Aloysious Chapel','St. Aloysious Chapel, located at the central region of the city on a hill, well-known in the region as the Lighthouse Hill, was built by Reverend Father Joseph Willy.This Christian chapel was built in 1884, as a part of the Mangalore Mission started in 1878. ', 'Historical');
insert into places values(13,	'Mangalooru', 'Mangalore Beach','Mangalore Beach has the confluence of Gurupara and Nethravathi River, nearby.Alongside the beach, several starred hotels and budget hotels are present.', 'Family Park/ Resort');
insert into places values(14,	'Udupi', 'Kaup Beach','Kaup Beach, situated at a distance of 12 km from Udupi, is one of the beautiful coastal belts in India.A 100 ft high lighthouse on the small hills and serene surroundings dotted with palm trees are the major attractions of the beach.', 'Family Park/ Resort');
insert into places values(15,	'Udupi', 'Light House Hill Garden','Light House Hill Garden is an 18th century light house, which is believed to have been built by Haider Ali.From the newly renovated garden, present near the lighthouse, beautiful view of the sea, the sailing ships and boats can be availed.', 'Sports');
insert into places values(16,	'Mangalooru', 'Pilikula Park and Golf Course','Pilikula Park and Golf Course is well-known as a mystical spot in which tigers move freely.
Literally meaning 'pond of tigers', the park is spread over an area of 350 acres.
', 'Educative');
insert into places values(17,	'Udupi', 'Wayanad Wildlife Sanctuary','The Wayanad Wildlife Sanctuary, also known as the Muthanga Wildlife Sanctuary, was established in 1973.This wildlife sanctuary is situated around 24 km away from Sulthan-Battery. ', 'Educative');
insert into places values(18,	'Udupi', 'Chethalayam Falls','Chethalayam Falls, renowned as one of the smallest waterfalls in Wayanad, is located 12 km from Sulthan-Battery.The region around the falls is dotted with black granite rocks.', 'Family Park/ Resort');
insert into places values(19,	'Mangalooru', 'Milagres Church','Milagres Church was constructed by Bishop Thomas de Castro, a Theatine priest of Salcette.Constructed in 1680 by Bishop Thomas De Castro, a Theatine priest of Salcette in Goa, this church has an altar with a French painting of St. Monica and St. Augustine.', 'Religious');
insert into places values(20,	'Udupi', 'Kudroli Gokarnanatheshwara Temple','Kudroli Sri Gokarnanatheshwara Temple, built by Sri Narayana Guru, the saint and social reformer from Kerala, dates from 1912.Only temple in Karnataka built by Sri Narayana Guru, it was meant for the worship by Billava community, who were prohibited from entering other temples.', 'Religious');

delete from guide;
/* guide_id, number_of_teams, guide_name, place_id, price, phone_number */
insert into guide values(1,	7,	'Abhishek',	1,	1000.50,	9845712345);
insert into guide values(2,	8,	'Aliya',	1,	2050.25,	9845723456);
insert into guide values(3,	9,	'Ananthnag',	2,	1550.00,	9845734567);
insert into guide values(4,	15,	'Boman',	20,	1823.78,	9845745678);
insert into guide values(5,	28,	'Priyanka',	3,	1298.34,	9845756789);
insert into guide values(6,	23,	'Kareena',	7,	1846.32,	9845767890);
insert into guide values(7,	9,	'Anoop',	6,	1298.99,	9845778901);
insert into guide values(8,	10,	'Dwarakish',	7,	1223.56,	9845789012);
insert into guide values(9,	8,	'Jaggesh',	20,	1398.45,	9845790123);
insert into guide values(10,	12,	'Kangana',	3,	1921.21,	9845701234);
insert into guide values(11,	11,	'Sadguru',	2,	1423.46,	8050512345);
insert into guide values(12,	17,	'Sidda',	16,	1999.99,	8050523456);
insert into guide values(13,	15,	'Rani',		2,	1578.54,	8050534567);
insert into guide values(14,	6,	'Jeetendra',	3,	1667.43,	8050545678);
insert into guide values(15,	3,	'Deepika',	4,	1478.43,	8050556789);
insert into guide values(16,	8,	'Johnny',	17,	1299.70,	8050567890);
insert into guide values(17,	7,	'Karan',	5,	1743.57,	8050578901);
insert into guide values(18,	5,	'Ileana',	4,	1399.67,	8050589012);
insert into guide values(19,	9,	'Urvashi',	3,	1288.03,	8050590123);
insert into guide values(20,	14,	'Sajid',	20,	1899.99,	8050501234);

delete from cab;
/* c_id, phone, driver_name, type, price, availability, from_city, to_city, departure, arrival */
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Bangalore','Bangalore','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(1,	'9449912345',	'Michael',	'Mini Cab',				1267.54,	'yes',	'Assam',	'Chttisgarh',	'2017-01-21 21:30:23',	'2017-02-19 13:30:23');
insert into cab values(2,	'9449923456',	'Mithun',	'Mini Bus',		2345.65,	'yes',	'Maharashtra',	'Rajasthan',	'2017-01-31 22:30:23',	'2017-01-28 14:30:23');
insert into cab values(3,	'9449934567',	'Rahul',	'Sedan',	1220.43,	'no',	'Gujarat',	'Odisha',	'2017-01-22 23:30:23',	'2017-02-21 15:30:23');
insert into cab values(4,	'9449945789',	'Ronit',	'Hatch Back',	
5654.22,	'yes',	'Tamil Nadu',	'Uttarakhand',	'2017-01-02 18:30:23',	'2017-02-28 15:30:23');
insert into cab values(5,	'9449956789',	'Aamir',	'Mini Bus',	
1234.56,	'no',	'Himachal Pradesh',	'Gujarat',	'2017-01-24 4:30:23',	'2017-02-03 15:30:23');
insert into cab values(6,	'9449967890',	'Akshay',	'Mini Cab',	1342.23,	'no',	'Karnataka',	'Goa',	'2017-01-29 5:30:23',	'2017-02-09 15:30:23');
insert into cab values(7,	'9449978901',	'Salman',	'Sedan',	
1578.54,	'yes',	'Uttar Pradesh',	'Nagaland',	'2017-01-28 6:30:23',	'2017-02-12 15:30:23');
insert into cab values(8,	'9449989012',	'Ajay',		'Hatch Back',	
1008.90,	'yes',	'West Bengal',	'Tamil Nadu',	'2017-01-20 7:30:23',	'2017-01-30 15:30:23');
insert into cab values(9,	'9449990123',	'Amitabh',	'Mini Bus',	1505.03,	'yes',	'Kerala',	'Mizoram',	'2017-01-26 20:30:23',	'2017-02-10 15:30:23');
insert into cab values(10,	'9449901234',	'Arshad',	'Sedan',	
1253.23,	'no',	'Tripura',	'Madhya Pradesh',	'2017-01-24 19:30:23',	'2017-02-17 15:30:23');
insert into cab values(11,	'9945712345',	'Arjun',	'Mini Cab',	1256.43,	'yes',	'Chattisgarh',	'Haryana',	'2017-01-22 18:30:23',	'2017-02-04 15:30:23');
insert into cab values(12,	'9945723456',	'Bobby',	'Hatch Back',	1502.34,	'no',	'Bihar',	'Goa',	'2017-01-30 15:30:23',	'2017-01-21 15:30:23');
insert into cab values(13,	'9945734567',	'Balraj',	'Mini Cab',	
1423.45,	'yes',	'Sikkim',	'Andhra Pradesh',	'2017-01-26 16:30:23',	'2017-02-06 15:30:23');
insert into cab values(14,	'9945745678',	'Diljit',	'Mini Cab',	1765.34,	'no',	'Rajasthan',	'Karnataka',	'2017-01-17 17:30:23',	'2017-01-23 15:30:23');
insert into cab values(15,	'9945756789',	'Ranveer',	'Sedan',	1645.63,	'no',	'Haryana',	'Sikkim',	'2017-01-15 11:30:23',	'2017-01-24 15:30:23');
insert into cab values(16,	'9945767890',	'Dhoni',	'Hatch Back',	1645.78,	'no',	'Punjab',	'Gujarat',	'2017-01-15 12:30:23',	'2017-01-26 15:30:23');
insert into cab values(17,	'9945778901',	'Shakthi',	'Mini Bus',	1724.54,	'yes',	'Odisha',	'Kerala',	'2017-01-13 13:30:23',	'2017-01-29 15:30:23');
insert into cab values(18,	'9945789012',	'Sunil',	'Mini Bus',	1543.23,	'yes',	'Meghalaya',	'Bihar',	'2017-01-18 16:30:23',	'2017-01-25 15:30:23');
insert into cab values(19,	'9945790123',	'Zayed',	'Mini Cab',	1723.56,	'yes',	'Uttarakand',	'Chattisgarh',	'2017-01-18 11:30:23',	'2017-01-23 15:30:23');
insert into cab values(20,	'9945701234',	'Varun',	'Hatch Back',	1893.24,	'yes',	'Manipur',	'Maharashtra',	'2017-01-14 12:30:23',	'2017-01-21 15:30:23');
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Bangalore','Delhi','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(19,	'9945790123',	'Zayed',	'Mini Cab',	1723.56,	'yes',	'UttaPradesh',	'Chennai',	'2017-01-18 11:30:23',	'2017-01-23 15:30:23');
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Punjab','Hyderabad','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(4,	'9449945789',	'Ronit',	'Hatch Back',	
5654.22,	'yes',	'Chennai',	'Delhi',	'2017-01-02 18:30:23',	'2017-02-28 15:30:23');
insert into cab values(13,	'9945734567',	'Balraj',	'Mini Cab',	
1423.45,	'yes',	'Sikkim',	'Bangalore',	'2017-01-26 16:30:23',	'2017-02-06 15:30:23');
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Mysore','Mumbai','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(19,	'9945790123',	'Zayed',	'Mini Cab',	1723.56,	'yes',	'Uttarpradesh',	'Chennai',	'2017-01-18 11:30:23',	'2017-01-23 15:30:23');
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Delhi','Bangalore','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Mumbai','Delhi','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Kerala','Mumbai','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */
insert into cab values(0,'0000000000','nothing','Mini Cab',0000.00,'no','Sikkim','Mumbai','2017-02-19 13:30:23','2017-02-19 13:30:23'); /* like default */

delete from bus;
/* bus_id, seats_available, from_city, to_city, Type_of_bus, departure_time, arrive_time, price  */
insert into bus values(0,0,'Bangalore','Bangalore','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(1,	20,	'Karnataka',	'Maharashtra',	'A/C',	'2017-01-18 16:30:23',	'2017-01-22 16:30:23',	1234.56);
insert into bus values(2,	19,	'Madhya Pradesh',	'Manipur',	'A/C',	'2017-01-19 15:30:23',	'2017-01-29 16:30:23',	1675.23);
insert into bus values(3,	23,	'Odisha',	'Uttarakhand',	'Non A/C',	'2017-01-27 17:30:23',	'2017-02-02 16:30:23',	1679.23);
insert into bus values(4,	21,	'Rajasthan',	'Andhra Pradesh',	'Non A/C',	'2017-01-31 03:30:23',	'2017-02-07 16:30:23',	1782.45);
insert into bus values(5,	22,	'Gujarat',	'West Bengal',	'Non-Stop',	'2017-01-15 18:30:23',	'2017-01-20 16:30:23',	1423.99);
insert into bus values(6,	20,	'Punjab',	'Chattisgarh',	'A/C',	'2017-01-18 07:30:23',	'2017-01-27 16:30:23',	1425.22);
insert into bus values(7,	18,	'Jammu and Kashmir',	'Jharkhand',	'Non A/C',	'2017-01-27 16:30:23',	'2017-02-10 16:30:23',	1652.33);
insert into bus values(8,	6,	'Sikkim',	'Telangana',	'Non-Stop',	'2017-01-31 09:30:23',	'2017-02-10 16:30:23',	1876.23);
insert into bus values(9,	9,	'Nagaland',	'Bihar',	'Non-Stop',	'2017-01-21 10:30:23',	'2017-01-31 16:30:23',	1111.11);
insert into bus values(10,	18,	'Kerala',	'Goa',	'A/C',	'2017-01-18 16:30:23',	'2017-01-25 16:30:23',	1627.22);
insert into bus values(11,	15,	'Gujarat',	'Karnataka',	'A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1634.22);
insert into bus values(12,	13,	'Rajasthan',	'Tamil Nadu',	'Non A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1672.52);
insert into bus values(13,	21,	'Karnataka',	'Gujarat',	'Non-Stop',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1875.23);
insert into bus values(14,	15,	'Maharashtra',	'Kerala',	'A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1123.22);
insert into bus values(15,	18,	'Sikkim',	'Assam',	'Non A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1113.22);
insert into bus values(16,	19,	'Nagaland',	'Odisha',	'Non-Stop',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1863.22);
insert into bus values(17,	22,	'Mizoram',	'West Bengal',	'Non-Stop',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1164.22);
insert into bus values(18,	20,	'Uttarakhand',	'Punjab',	'A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1234.22);
insert into bus values(19,	6,	'Haryana',	'Rajasthan',	'Non A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1678.22);
insert into bus values(20,	18,	'Goa',	'Karnataka',	'A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1543.22);
insert into bus values(0,0,'Karnataka','Goa','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(0,0,'Bangalore','Delhi','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(0,0,'Punjab','Hyderabad','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(0,0,'Chennai','Delhi','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(0,0,'Sikkim','Bangalore','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(1,	20,	'Mysore',	'Mumbai',	'A/C',	'2017-01-18 16:30:23',	'2017-01-22 16:30:23',	1234.56);
insert into bus values(11,	15,	'Uttarpradesh',	'Chennai',	'A/C',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1634.22);
insert into bus values(6,	20,	'Delhi',	'Bangalore',	'A/C',	'2017-01-18 07:30:23',	'2017-01-27 16:30:23',	1425.22);
insert into bus values(0,0,'Mumbai','Delhi','A/C','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into bus values(10,	18,	'Kerala',	'Mumbai',	'A/C',	'2017-01-18 16:30:23',	'2017-01-25 16:30:23',	1627.22);
insert into bus values(10,	18,	'Sikkim',	'Mumbai',	'A/C',	'2017-01-18 16:30:23',	'2017-01-25 16:30:23',	1627.22);


 delete from hotel;
/* hotel_id, number_of_stars, phone, name, number_of_rooms_available, type_of_room, city, food_type, lodging */
 insert into hotel values(1,3,'380-97383832','Tivai beach cottages',	25,'Non A/C Single','Goa',	'Veg',		'yes');
 insert into hotel values(2,4,'480-747483832','Senhor Angelo Resort Goa',5,'Royal',	'Goa',		'Non-Veg',	'yes');
 insert into hotel values(3,2,'084-373738282','Taj Palace',		15,'King Size',	'Delhi',	'Non-Veg',	'no');
 insert into hotel values(4,5,'580-994939333','The Ashoka',		25,'Royal',	'Delhi',	'Veg',		'yes');
 insert into hotel values(5,3,'080-965744838','Hotel Shanthi Palace',	45,'Single',	'Delhi',	'Both',		'no');
 insert into hotel values(6,5,'080-9747483832','Taj Club House',	26,'Non A/C King Size','Chennai','Veg',		'no');
 insert into hotel values(7,3,'080-748484832','Hotel Pearl International',24,'King Size','Chennai',	'Both',		'yes');
 insert into hotel values(8,2,'080-938839232','Vivanta By Taj Maldar',	65,'Non A/C Single','Kerala',	'Non-Veg',	'no');
 insert into hotel values(9,2,'080-973873732','Holiday Inn Cochin',	15,'Royal',	'Kerala',	'Veg',		'yes');
 insert into hotel values(10,3,'083-626262832','The Orchid',		5,'Non A/C King Size','Mumbai',	'Veg',		'no');
 insert into hotel values(11,4,'081-97383832','VITS Mumbai',		27,'Non A/C Single','Mumbai',	'Both',		'yes');
 insert into hotel values(12,3,'280-82828432','Best Western Ashoka',	28,'Royal',	'Jammu and Kashmir',	'Veg',		'yes');
 insert into hotel values(13,4,'080-83635362','Treebo Grand Plaza Nampully',75,'King Size','Jammu and Kashmir',	'Both',		'no');
 insert into hotel values(14,5,'180-93737376','Hotel Citadel',		18,'Royal',	'Bangalore',	'Non-Veg',	'no');
 insert into hotel values(15,5,'081-31838484','Royal comfort',		45,'Single',	'Bangalore',	'Both',		'no');
 insert into hotel values(16,5,'0820-2586440','Woodlands',		49,'Royal',	'Udupi',	'Veg',		'yes');
 insert into hotel values(16,5,'0820-2524120','The Ocean Pearl',	28,'Single',	'Udupi',	'Both',		'yes');
 insert into hotel values(16,5,'0820-2565708','Hotel Shree Krishna Residency',	25,'Non A/C King Size',	'Udupi',	'Veg',		'yes');

delete from airlines;
/* airline_id, depart_time, arrive_time, price, type, name_of_airline, from_airport, to_airport, number_of_seats */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Karnataka','Karnataka',0); /* like default */
insert into airlines values(1,	'2017-01-18 16:30:23',	'2017-01-18 20:30:23',	1432.56,	'Regional',	'IndiGo',	'Assam',	'Gujarat',	15);
insert into airlines values(2,	'2017-01-18 15:30:23',	'2017-01-18 19:30:23',	1234.23,	'Passenger',	'TajAir',	'Karnataka',	'Delhi',	18);
insert into airlines values(3,	'2017-01-18 06:30:23',	'2017-01-18 13:30:23',	1267.74,	'Regional',	'Jet Airways',	'Bihar',	'Andhra Pradesh',	17);
insert into airlines values(4,	'2017-01-18 18:30:23',	'2017-01-18 01:30:23',	1999.89,	'Passenger',	'TruJet',	'Goa',	'Meghalaya',	18);
insert into airlines values(5,	'2017-01-18 06:30:23',	'2017-01-18 12:30:23',	1111.11,	'Business Class',	'GoAir',	'Rajasthan',	'Bihar',	8);
insert into airlines values(6,	'2017-01-18 19:30:23',	'2017-01-18 23:30:23',	3212.23,	'Business Class',	'Air India Express',	'Odisha',	'Karnataka',	30);
insert into airlines values(7,	'2017-01-18 05:30:23',	'2017-01-18 14:30:23',	2132.12,	'Passenger',	'Zoom Air',	'Jharkhand',	'Goa',	20);
insert into airlines values(8,	'2017-01-18 04:30:23',	'2017-01-18 10:30:23',	3542.21,	'Passenger',	'JetLite',	'Madhya Pradesh',	'Odisha',	15);
insert into airlines values(9,	'2017-01-18 14:30:23',	'2017-01-18 20:30:23',	2314.32,	'Regional',	'SpiceJet',	'Gujarat',	'Tamil Nadu',	20);
insert into airlines values(10,	'2017-01-18 16:30:23',	'2017-01-18 19:30:23',	1234.56,	'Business Class',	'Vistara Airlines',	'Maharashtra',	'Haryana',	9);
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Karnataka','Goa',0); /* like default */
insert into airlines values(2,	'2017-01-18 15:30:23',	'2017-01-18 19:30:23',	1234.23,	'Passenger',	'TajAir',	'Bangalore',	'Delhi',	18);
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Punjab','Hyderabad',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Chennai','Delhi',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Sikkim','Bangalore',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Mysore','Mumbai',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','UttarPradesh','Chennai',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Delhi','Bangalore',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Mumbai','Delhi',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Kerala','Mumbai',0); /* like default */
insert into airlines values(10,	'2017-01-18 16:30:23',	'2017-01-18 19:30:23',	1234.56,	'Business Class',	'Vistara Airlines',	'Mumbai',	'Delhi',	9);
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Uttarpradesh','Chennai',0); /* like default */
insert into airlines values(0,'2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00,'Regional','IndiGo','Sikkim','Mumbai',0); /* like default */

delete from train;
/* train_id, from_city, to_city, depart_time, arrive_time, price */
insert into train values(0,'Bangalore','Bangalore','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(1,	'Mumbai',	'Kharagpur',	'2017-01-31 16:30:23',	'2017-02-18 16:30:23',	1278.59);
insert into train values(2,	'North Bengal',	'Kanyakumari',	'2017-01-30 16:30:23',	'2017-02-05 16:30:23',	1253.67);
insert into train values(3,	'Goa',	'Thiruvananthapuram',	'2017-01-29 16:30:23',	'2017-02-10 16:30:23',	1999.99);
insert into train values(4,	'Lucknow',	'Kanpur',	'2017-01-13 16:30:23',	'2017-01-18 16:30:23',	1111.11);
insert into train values(5,	'West Bengal',	'Mysore',	'2017-01-14 16:30:23',	'2017-01-19 16:30:23',	3211.11);
insert into train values(6,	'Uttar Pradesh','Darjeeling',	'2017-01-15 16:30:23',	'2017-01-22 16:30:23',	1234.21);
insert into train values(7,	'Odisha',	'Vijayawada',	'2017-01-16 16:30:23',	'2017-01-25 16:30:23',	2132.22);
insert into train values(8,	'Andhra Pradesh','Lucknow',	'2017-01-17 16:30:23',	'2017-01-29 16:30:23',	3214.32);
insert into train values(9,	'Punjab',	'Maharashtra',	'2017-01-28 16:30:23',	'2017-02-08 16:30:23',	2134.22);
insert into train values(10,	'Gujarat',	'Chennai',	'2017-01-23 16:30:23',	'2017-01-27 16:30:23',	1234.32);
insert into train values(11,	'Chattisgarh',	'Bangalore',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1234.32);
insert into train values(0,'Karnataka','Goa','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(0,'Bangalore','Delhi','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(9,	'Punjab',	'Hyderabad',	'2017-01-28 16:30:23',	'2017-02-08 16:30:23',	2134.22);
insert into train values(0,'Chennai','Delhi','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(0,'Sikkim','Bangalore','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(0,'Mysore','Mumbai','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(0,'Uttarpradesh','Chennai','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(11,	'Delhi',	'Bangalore',	'2017-01-18 16:30:23',	'2017-01-20 16:30:23',	1234.32);
insert into train values(0,'Mumbai','Delhi','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(0,'Kerala','Mumbai','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */
insert into train values(0,'Sikkim','Mumbai','2017-02-19 13:30:23','2017-02-19 13:30:23',0000.00); /* like default */

delete from modes_of_payment;
/* username, price, payment_mode, servicing_company */
insert into modes_of_payment values('Shru',	1234,	'Cash',		'Bank of baruda');
insert into modes_of_payment values('Simpu',	1325,	'Cheque',	'SBM');
insert into modes_of_payment values('Magu',	1734,	'Cash',		'SBI');
insert into modes_of_payment values('Ainu',	1234,	'Online',	'free charge');
insert into modes_of_payment values('Ammu',	6321,	'Çash',		'Patiala bank');
insert into modes_of_payment values('Guru',	3652,	'Cheque',	'SBM');
insert into modes_of_payment values('Immu',	4635,	'Online',	'Punjabi bank');
insert into modes_of_payment values('Om',	5362,	'Cash',		'PayTM');
insert into modes_of_payment values('Baby',	9372,	'Cheque',	'SBM');
insert into modes_of_payment values('Tara',	4526,	'Online',	'SBI');


delete from trips_taken;
/* username, from_city, to_city, hotel_id, type_of_room, date_of_travel, guide_id, places_visited, cab_id, bus_id, train_id, airline_id, price_for_day, confirm_trip */
insert into trips_taken values('Simpu',	'Karnataka',	'Goa',		2,	'Royal',	'2012-05-23 23:23:23',	2,1,6,0,0,0,1234.56,'yes');
insert into trips_taken values('Shru',	'Bangalore',	'Delhi',	4,	'Royal',	'2014-08-19 08:08:08',	4,20,0,0,0,2,1345.64,'yes');
insert into trips_taken values('Magu',	'Mysore',	'Mumbai',	10,	'Non A/C King Size',	'2013-08-18 18:18:18',	5,3,0,1,0,0,1423.67,'yes');
insert into trips_taken values('Ainu',	'Uttarpradesh',	'Chennai',	7,	'King Size',	'2010-12-31 13:55:35',	2,1,19,11,0,0,1345.76,'yes');
insert into trips_taken values('Guru',	'Punjab',	'Hyderabad',	12,	'Royal',	'2009-10-28 03:25:45',	5,3,0,0,9,0,1324.78,'yes');
insert into trips_taken values('Tara',	'Delhi',	'Bangalore',	15,	'Single',	'2008-09-13 07:15:25',	6,7,0,6,11,0,1234.56,'yes');
insert into trips_taken values('Baby',	'Mumbai',	'Delhi',	5,	'Single',	'2004-05-28 09:35:35',	2,1,0,0,0,10,1567.76,'yes');
insert into trips_taken values('Ainu',	'Chennai',	'Delhi',	4,	'Royal',	'2016-02-14 20:45:35',	7,6,4,0,0,0,1445.65,'yes');
insert into trips_taken values('Immu',	'Kerala',	'Mumbai',	11,	'Non A/C Single',	'2016-05-26 17:43:39',	20,20,0,10,0,0,1234.76,'yes');
insert into trips_taken values('Om',	'Sikkim',	'Bangalore',	15,	'Single',	'2016-04-04 23:45:35',	15,4,13,0,0,0,1324.65,'yes');
insert into trips_taken values('Om',	'Sikkim',	'Mumbai',	11,	'Non A/C Single',	'2016-04-06 23:45:35',	20,20,0,10,0,0,1543.65,'no');