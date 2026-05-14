INSERT INTO Station VALUES
('ST1','London'),
('ST2','Birmingham'),
('ST3','Manchester'),
('ST4','Leeds'),
('ST5','York'),
('ST6','Newcastle'),
('ST7','Edinburgh'),
('ST8','Glasgow'),
('ST9','Bristol'),
('ST10','Cardiff'),
('ST11','Oxford'),
('ST12','Sheffield'),
('ST13','Rugby'),
('ST14','Plymouth');


INSERT INTO Stage VALUES
('SG1','ST14','ST9',120),   -- Plymouth ↔ Bristol
('SG2','ST11','ST9',80),    -- Oxford ↔ Bristol  
('SG3','ST1','ST11',60),    -- London ↔ Oxford
('SG4','ST13','ST1',90),    -- Rugby ↔ London
('SG5','ST2','ST13',20),    -- Birmingham ↔ Rugby
('SG6','ST12','ST2',70),    -- Sheffield ↔ Birmingham
('SG7','ST3','ST12',40),    -- Manchester ↔ Sheffield
('SG8','ST4','ST3',45),     -- Leeds ↔ Manchester
('SG9','ST5','ST4',25),     -- York ↔ Leeds
('SG10','ST6','ST5',80),    -- Newcastle ↔ York
('SG11','ST7','ST6',120),   -- Edinburgh ↔ Newcastle
('SG12','ST8','ST7',50),    -- Glasgow ↔ Edinburgh
('SG13','ST10','ST9',45),   -- Cardiff ↔ Bristol
('SG14','ST1','ST2',45);   -- London ↔ Birmingham



INSERT INTO Route VALUES
('RT1','Glasgow → London'),
('RT2','Birmingham → Plymouth'),
('RT3','Bristol → Edinburgh'),
('RT4','Cardiff → Glasgow'),
('RT5','Bristol → Manchester'),
('RT6','Plymouth → Manchester'),
('RT7','London → Leeds'),
('RT8','Manchester → Edinburgh'),
('RT9','Newcastle → Oxford'),
('RT10','Rugby → Bristol');



INSERT ALL

-- RT1: Glasgow → London
INTO Route_Stage VALUES ('RT1','SG12',1,'A') -- Glasgow → Edinburgh
INTO Route_Stage VALUES ('RT1','SG11',2,'A') -- Edinburgh → Newcastle
INTO Route_Stage VALUES ('RT1','SG10',3,'A') -- Newcastle → York
INTO Route_Stage VALUES ('RT1','SG9',4,'A')  -- York → Leeds
INTO Route_Stage VALUES ('RT1','SG8',5,'A')  -- Leeds → Manchester
INTO Route_Stage VALUES ('RT1','SG7',6,'A')  -- Manchester → Sheffield
INTO Route_Stage VALUES ('RT1','SG6',7,'A')  -- Sheffield → Birmingham
INTO Route_Stage VALUES ('RT1','SG5',8,'A')  -- Birmingham → Rugby
INTO Route_Stage VALUES ('RT1','SG4',9,'A')  -- Rugby → London

-- RT2: Birmingham → Plymouth
INTO Route_Stage VALUES ('RT2','SG5',1,'A') -- Birmingham → Rugby
INTO Route_Stage VALUES ('RT2','SG4',2,'A') -- Rugby → London
INTO Route_Stage VALUES ('RT2','SG3',3,'A') -- London → Oxford
INTO Route_Stage VALUES ('RT2','SG2',4,'A') -- Oxford → Bristol
INTO Route_Stage VALUES ('RT2','SG1',5,'B') -- Bristol → Plymouth

-- RT3: Bristol → Edinburgh
INTO Route_Stage VALUES ('RT3','SG2',1,'B')  -- Bristol → Oxford
INTO Route_Stage VALUES ('RT3','SG3',2,'B')  -- Oxford → London
INTO Route_Stage VALUES ('RT3','SG4',3,'B')  -- London → Rugby
INTO Route_Stage VALUES ('RT3','SG5',4,'B')  -- Rugby → Birmingham
INTO Route_Stage VALUES ('RT3','SG6',5,'B')  -- Birmingham → Sheffield
INTO Route_Stage VALUES ('RT3','SG7',6,'B')  -- Sheffield → Manchester
INTO Route_Stage VALUES ('RT3','SG8',7,'B')  -- Manchester → Leeds
INTO Route_Stage VALUES ('RT3','SG9',8,'B')  -- Leeds → York
INTO Route_Stage VALUES ('RT3','SG10',9,'B') -- York → Newcastle
INTO Route_Stage VALUES ('RT3','SG11',10,'B') -- Newcastle → Edinburgh

-- RT4: Cardiff → Glasgow
INTO Route_Stage VALUES ('RT4','SG13',1,'A') -- Cardiff → Bristol
INTO Route_Stage VALUES ('RT4','SG2',2,'B')  -- Bristol → Oxford
INTO Route_Stage VALUES ('RT4','SG3',3,'B')  -- Oxford → London
INTO Route_Stage VALUES ('RT4','SG4',4,'B')  -- London → Rugby
INTO Route_Stage VALUES ('RT4','SG5',5,'B')  -- Rugby → Birmingham
INTO Route_Stage VALUES ('RT4','SG6',6,'B')  -- Birmingham → Sheffield
INTO Route_Stage VALUES ('RT4','SG7',7,'B')  -- Sheffield → Manchester
INTO Route_Stage VALUES ('RT4','SG8',8,'B')  -- Manchester → Leeds
INTO Route_Stage VALUES ('RT4','SG9',9,'B')  -- Leeds → York
INTO Route_Stage VALUES ('RT4','SG10',10,'B') -- York → Newcastle
INTO Route_Stage VALUES ('RT4','SG11',11,'B') -- Newcastle → Edinburgh
INTO Route_Stage VALUES ('RT4','SG12',12,'B') -- Edinburgh → Glasgow

-- RT5: Bristol → Manchester
INTO Route_Stage VALUES ('RT5','SG2',1,'B') -- Bristol → Oxford
INTO Route_Stage VALUES ('RT5','SG3',2,'B') -- Oxford → London
INTO Route_Stage VALUES ('RT5','SG4',3,'B') -- London → Rugby
INTO Route_Stage VALUES ('RT5','SG5',4,'B') -- Rugby → Birmingham
INTO Route_Stage VALUES ('RT5','SG6',5,'B') -- Birmingham → Sheffield
INTO Route_Stage VALUES ('RT5','SG7',6,'B') -- Sheffield → Manchester

-- RT6: Plymouth → Manchester
INTO Route_Stage VALUES ('RT6','SG1',1,'A') -- Plymouth → Bristol
INTO Route_Stage VALUES ('RT6','SG2',2,'B') -- Bristol → Oxford
INTO Route_Stage VALUES ('RT6','SG3',3,'B') -- Oxford → London
INTO Route_Stage VALUES ('RT6','SG4',4,'B') -- London → Rugby
INTO Route_Stage VALUES ('RT6','SG5',5,'B') -- Rugby → Birmingham
INTO Route_Stage VALUES ('RT6','SG6',6,'B') -- Birmingham → Sheffield
INTO Route_Stage VALUES ('RT6','SG7',7,'B') -- Sheffield → Manchester

-- RT7: London → Leeds
INTO Route_Stage VALUES ('RT7','SG4',1,'B') -- London → Rugby
INTO Route_Stage VALUES ('RT7','SG5',2,'B') -- Rugby → Birmingham
INTO Route_Stage VALUES ('RT7','SG6',3,'B') -- Birmingham → Sheffield
INTO Route_Stage VALUES ('RT7','SG7',4,'B') -- Sheffield → Manchester
INTO Route_Stage VALUES ('RT7','SG8',5,'B') -- Manchester → Leeds

-- RT8: Manchester → Edinburgh
INTO Route_Stage VALUES ('RT8','SG8',1,'B')  -- Manchester → Leeds
INTO Route_Stage VALUES ('RT8','SG9',2,'B')  -- Leeds → York
INTO Route_Stage VALUES ('RT8','SG10',3,'B') -- York → Newcastle
INTO Route_Stage VALUES ('RT8','SG11',4,'B') -- Newcastle → Edinburgh

-- RT9: Newcastle → Oxford
INTO Route_Stage VALUES ('RT9','SG10',1,'A') -- Newcastle → York
INTO Route_Stage VALUES ('RT9','SG9',2,'A')  -- York → Leeds
INTO Route_Stage VALUES ('RT9','SG8',3,'A')  -- Leeds → Manchester
INTO Route_Stage VALUES ('RT9','SG7',4,'A')  -- Manchester → Sheffield
INTO Route_Stage VALUES ('RT9','SG6',5,'A')  -- Sheffield → Birmingham
INTO Route_Stage VALUES ('RT9','SG5',6,'A')  -- Birmingham → Rugby
INTO Route_Stage VALUES ('RT9','SG4',7,'A')  -- Rugby → London
INTO Route_Stage VALUES ('RT9','SG3',8,'B')  -- London → Oxford

-- RT10: Rugby → Bristol
INTO Route_Stage VALUES ('RT10','SG5',1,'B')  -- Rugby → Birmingham
INTO Route_Stage VALUES ('RT10','SG14',2,'B') -- Birmingham → London
INTO Route_Stage VALUES ('RT10','SG3',3,'A')  -- London → Oxford
INTO Route_Stage VALUES ('RT10','SG2',4,'A')  -- Oxford → Bristol

SELECT * FROM dual;



INSERT INTO Goods_Type VALUES
('GT1','Cement',1.0),
('GT2','Cars',1.2),
('GT3','Perishable goods',0.8),
('GT4','Mineral oil',1.0),
('GT5','Steel beams',1.0),
('GT6','Coal',1.0),
('GT7','Grain',1.0),
('GT8','Timber',0.5);


INSERT INTO Locomotive_Class VALUES
('LC07','Class 07',16.4,1500),
('LC08','Class 08',17.8,1600),
('LC09','Class 09',21.4,2000);



INSERT INTO Locomotive VALUES
(07100,'LC07',NULL),
(07101,'LC07','Red Arrow'),
(07102,'LC07',NULL),
(07103,'LC07','Tug'),
(07104,'LC07',NULL),
(08200,'LC08',NULL),
(08201,'LC08','Buckets'),
(08203,'LC08',NULL),
(08204,'LC08',NULL),
(09001,'LC09','Rapid Bullet'),
(09002,'LC09',NULL),
(09003,'LC09',NULL);



INSERT INTO Wagon_Class VALUES
('WC90','Flat wagon',14.6,21.0,66.0),
('WC91','Open wagon',16.2,33.0,69.0),
('WC92','Covered wagon',20.6,23.5,66.5),
('WC93','Car carrier',24.3,35.0,15.0),
('WC94','Tank wagon',18.9,27.3,62.7);


-- Flat wagons (30)
INSERT ALL
INTO Wagon VALUES ('90001','WC90')
INTO Wagon VALUES ('90002','WC90')
INTO Wagon VALUES ('90003','WC90')
INTO Wagon VALUES ('90004','WC90')
INTO Wagon VALUES ('90005','WC90')
INTO Wagon VALUES ('90006','WC90')
INTO Wagon VALUES ('90007','WC90')
INTO Wagon VALUES ('90008','WC90')
INTO Wagon VALUES ('90009','WC90')
INTO Wagon VALUES ('90010','WC90')
INTO Wagon VALUES ('90011','WC90')
INTO Wagon VALUES ('90012','WC90')
INTO Wagon VALUES ('90013','WC90')
INTO Wagon VALUES ('90014','WC90')
INTO Wagon VALUES ('90015','WC90')
INTO Wagon VALUES ('90016','WC90')
INTO Wagon VALUES ('90017','WC90')
INTO Wagon VALUES ('90018','WC90')
INTO Wagon VALUES ('90019','WC90')
INTO Wagon VALUES ('90020','WC90')
INTO Wagon VALUES ('90021','WC90')
INTO Wagon VALUES ('90022','WC90')
INTO Wagon VALUES ('90023','WC90')
INTO Wagon VALUES ('90024','WC90')
INTO Wagon VALUES ('90025','WC90')
INTO Wagon VALUES ('90026','WC90')
INTO Wagon VALUES ('90027','WC90')
INTO Wagon VALUES ('90028','WC90')
INTO Wagon VALUES ('90029','WC90')
INTO Wagon VALUES ('90030','WC90')
SELECT * FROM dual;

-- Open wagons (30)
INSERT ALL
INTO Wagon VALUES ('91001','WC91')
INTO Wagon VALUES ('91002','WC91')
INTO Wagon VALUES ('91003','WC91')
INTO Wagon VALUES ('91004','WC91')
INTO Wagon VALUES ('91005','WC91')
INTO Wagon VALUES ('91006','WC91')
INTO Wagon VALUES ('91007','WC91')
INTO Wagon VALUES ('91008','WC91')
INTO Wagon VALUES ('91009','WC91')
INTO Wagon VALUES ('91010','WC91')
INTO Wagon VALUES ('91011','WC91')
INTO Wagon VALUES ('91012','WC91')
INTO Wagon VALUES ('91013','WC91')
INTO Wagon VALUES ('91014','WC91')
INTO Wagon VALUES ('91015','WC91')
INTO Wagon VALUES ('91016','WC91')
INTO Wagon VALUES ('91017','WC91')
INTO Wagon VALUES ('91018','WC91')
INTO Wagon VALUES ('91019','WC91')
INTO Wagon VALUES ('91020','WC91')
INTO Wagon VALUES ('91021','WC91')
INTO Wagon VALUES ('91022','WC91')
INTO Wagon VALUES ('91023','WC91')
INTO Wagon VALUES ('91024','WC91')
INTO Wagon VALUES ('91025','WC91')
INTO Wagon VALUES ('91026','WC91')
INTO Wagon VALUES ('91027','WC91')
INTO Wagon VALUES ('91028','WC91')
INTO Wagon VALUES ('91029','WC91')
INTO Wagon VALUES ('91030','WC91')
SELECT * FROM dual;

-- Covered wagons (40)
INSERT ALL
INTO Wagon VALUES ('92001','WC92')
INTO Wagon VALUES ('92002','WC92')
INTO Wagon VALUES ('92003','WC92')
INTO Wagon VALUES ('92004','WC92')
INTO Wagon VALUES ('92005','WC92')
INTO Wagon VALUES ('92006','WC92')
INTO Wagon VALUES ('92007','WC92')
INTO Wagon VALUES ('92008','WC92')
INTO Wagon VALUES ('92009','WC92')
INTO Wagon VALUES ('92010','WC92')
INTO Wagon VALUES ('92011','WC92')
INTO Wagon VALUES ('92012','WC92')
INTO Wagon VALUES ('92013','WC92')
INTO Wagon VALUES ('92014','WC92')
INTO Wagon VALUES ('92015','WC92')
INTO Wagon VALUES ('92016','WC92')
INTO Wagon VALUES ('92017','WC92')
INTO Wagon VALUES ('92018','WC92')
INTO Wagon VALUES ('92019','WC92')
INTO Wagon VALUES ('92020','WC92')
INTO Wagon VALUES ('92021','WC92')
INTO Wagon VALUES ('92022','WC92')
INTO Wagon VALUES ('92023','WC92')
INTO Wagon VALUES ('92024','WC92')
INTO Wagon VALUES ('92025','WC92')
INTO Wagon VALUES ('92026','WC92')
INTO Wagon VALUES ('92027','WC92')
INTO Wagon VALUES ('92028','WC92')
INTO Wagon VALUES ('92029','WC92')
INTO Wagon VALUES ('92030','WC92')
INTO Wagon VALUES ('92031','WC92')
INTO Wagon VALUES ('92032','WC92')
INTO Wagon VALUES ('92033','WC92')
INTO Wagon VALUES ('92034','WC92')
INTO Wagon VALUES ('92035','WC92')
INTO Wagon VALUES ('92036','WC92')
INTO Wagon VALUES ('92037','WC92')
INTO Wagon VALUES ('92038','WC92')
INTO Wagon VALUES ('92039','WC92')
INTO Wagon VALUES ('92040','WC92')
SELECT * FROM dual;

-- Car carriers (15)
INSERT ALL
INTO Wagon VALUES ('93001','WC93')
INTO Wagon VALUES ('93002','WC93')
INTO Wagon VALUES ('93003','WC93')
INTO Wagon VALUES ('93004','WC93')
INTO Wagon VALUES ('93005','WC93')
INTO Wagon VALUES ('93006','WC93')
INTO Wagon VALUES ('93007','WC93')
INTO Wagon VALUES ('93008','WC93')
INTO Wagon VALUES ('93009','WC93')
INTO Wagon VALUES ('93010','WC93')
INTO Wagon VALUES ('93011','WC93')
INTO Wagon VALUES ('93012','WC93')
INTO Wagon VALUES ('93013','WC93')
INTO Wagon VALUES ('93014','WC93')
INTO Wagon VALUES ('93015','WC93')
SELECT * FROM dual;

-- Tank wagons (20)
INSERT ALL
INTO Wagon VALUES ('94001','WC94')
INTO Wagon VALUES ('94002','WC94')
INTO Wagon VALUES ('94003','WC94')
INTO Wagon VALUES ('94004','WC94')
INTO Wagon VALUES ('94005','WC94')
INTO Wagon VALUES ('94006','WC94')
INTO Wagon VALUES ('94007','WC94')
INTO Wagon VALUES ('94008','WC94')
INTO Wagon VALUES ('94009','WC94')
INTO Wagon VALUES ('94010','WC94')
INTO Wagon VALUES ('94011','WC94')
INTO Wagon VALUES ('94012','WC94')
INTO Wagon VALUES ('94013','WC94')
INTO Wagon VALUES ('94014','WC94')
INTO Wagon VALUES ('94015','WC94')
INTO Wagon VALUES ('94016','WC94')
INTO Wagon VALUES ('94017','WC94')
INTO Wagon VALUES ('94018','WC94')
INTO Wagon VALUES ('94019','WC94')
INTO Wagon VALUES ('94020','WC94')
SELECT * FROM dual;




INSERT INTO Company VALUES
('CM1','BuildCorp','John Smith','London','0711111111','build@corp.com'),
('CM2','AutoTrans','Mary Khan','Birmingham','0722222222','auto@trans.com'),
('CM3','FreshFoods','Ali Noor','Manchester','0733333333','fresh@foods.com'),
('CM4','OilEnergy','Sara Ali','Glasgow','0744444444','oil@energy.com'),
('CM5','SteelWorks','Tom Lee','Sheffield','0755555555','steel@works.com');



INSERT INTO Consignment VALUES
('CN1','CM1','GT1','ST8','ST1',500),   -- Glasgow → London
('CN2','CM2','GT2','ST2','ST14',200),  -- Birmingham → Plymouth
('CN3','CM3','GT3','ST9','ST7',300),   -- Bristol → Edinburgh
('CN4','CM4','GT4','ST10','ST8',450),  -- Cardiff → Glasgow
('CN5','CM5','GT5','ST9','ST3',150),   -- Bristol → Manchester
('CN6','CM1','GT6','ST14','ST3',220),  -- Plymouth → Manchester
('CN7','CM2','GT2','ST1','ST4',180),   -- London → Leeds
('CN8','CM3','GT3','ST3','ST7',260),   -- Manchester → Edinburgh
('CN9','CM4','GT4','ST6','ST11',140),  -- Newcastle → Oxford
('CN10','CM5','GT5','ST13','ST9',120), -- Rugby → Bristol
('CN11','CM1','GT1','ST6','ST1',300),  -- Newcastle → London 
('CN12','CM2','GT2','ST5','ST2',180),  -- York → Birmingham 
('CN13','CM3','GT3','ST4','ST7',200),  -- Leeds → Edinburgh 
('CN14','CM4','GT4','ST3','ST8',250),  -- Manchester → Glasgow 
('CN15','CM5','GT5','ST11','ST14',140),-- Oxford → Plymouth 
('CN16','CM1','GT6','ST2','ST3',160);  -- Birmingham → Manchester 



INSERT INTO Train VALUES
('TR1','RT1',07100),
('TR2','RT2',08201),
('TR3','RT3',09001),
('TR4','RT4',08200),
--('TR5','RT5',07101),
('TR6','RT6',07102),
('TR7','RT7',08203),
--('TR8','RT8',07103),
('TR9','RT9',08204),
('TR10','RT10',07104),
('TR11','RT2',08203),
('TR12','RT1',07101),
('TR13','RT4',08200),
('TR14','RT7',08201);


INSERT INTO Driver VALUES
('DV1','Tom','Hill',DATE '1985-05-10','London','07111111111','tom.hill@example.com',DATE '2015-01-01','L1',DATE '2027-01-01'),

('DV2','Sam','Green',DATE '1987-07-15','Manchester','07222222222','sam.green@example.com',DATE '2016-01-01','L2',DATE '2028-01-01'),

('DV3','Mark','Stone',DATE '1990-03-20','Birmingham','07333333333','mark.stone@example.com',DATE '2017-01-01','L3',DATE '2028-01-01'),

('DV4','Luke','West',DATE '1983-11-05','Leeds','07444444444','luke.west@example.com',DATE '2014-01-01','L4',DATE '2027-01-01'),

('DV5','Ali','Khan',DATE '1992-08-25','Bradford','07555555555','ali.khan@example.com',DATE '2018-01-01','L5',DATE '2029-01-01'),

('DV6','Sara','Noor',DATE '1995-12-30','London','07666666666','sara.noor@example.com',DATE '2019-01-01','L6',DATE '2028-01-01');


INSERT INTO Driver_Qualification VALUES
('DV1','LC07'),('DV2','LC07'),  -- Class 07
('DV3','LC08'),('DV4','LC08'),  -- Class 08
('DV5','LC09'),('DV6','LC09'),  -- Class 09
('DV1','LC08'),('DV2','LC08');  -- Class 08


INSERT INTO Driver_Allocation VALUES

-- TR1 (LC07)
('TR1','DV1','Driver'), ('TR1','DV2','Co-Driver'),

-- TR2 (LC08)
('TR2','DV3','Driver'), ('TR2','DV4','Co-Driver'),

-- TR3 (LC09)
('TR3','DV5','Driver'), ('TR3','DV6','Co-Driver'),

-- TR4 (LC08)
('TR4','DV3','Driver'), ('TR4','DV4','Co-Driver'),

-- TR5 (LC07)
--('TR5','DV1','Driver'), ('TR5','DV2','Co-Driver'),

-- TR6 (LC07)
('TR6','DV1','Driver'), ('TR6','DV2','Co-Driver'),

-- TR7 (LC08)
('TR7','DV3','Driver'), ('TR7','DV4','Co-Driver'),

-- TR8 (LC07)
--('TR8','DV1','Driver'), ('TR8','DV2','Co-Driver'),

-- TR9 (LC08)
('TR9','DV3','Driver'), ('TR9','DV4','Co-Driver'),

-- TR10 (LC07) 
('TR10','DV1','Driver'), ('TR10','DV2','Co-Driver'),

-- TR11 (LC08)
('TR11','DV3','Driver'), ('TR11','DV4','Co-Driver'),

-- TR12 (LC07)
('TR12','DV1','Driver'), ('TR12','DV2','Co-Driver'),

-- TR13 (LC08)
('TR13','DV3','Driver'), ('TR13','DV4','Co-Driver'),

-- TR14 (LC08)
('TR14','DV3','Driver'), ('TR14','DV4','Co-Driver');




INSERT ALL

-- 🚆 TR1 (PART 1) (Glasgow → Edinburgh → Newcastle → York → Leeds → Manchester → Sheffield → Birmingham → Rugby → London)    
-- CN1: 500 tonnes Cement -- Glasgow → London  : -- Cement → Open wagon
-- CN1 PART (300 tonnes)
INTO Wagon_Load VALUES ('TR1','91001','CN1',69)
INTO Wagon_Load VALUES ('TR1','91002','CN1',69)
INTO Wagon_Load VALUES ('TR1','91003','CN1',69)
INTO Wagon_Load VALUES ('TR1','91004','CN1',69)
INTO Wagon_Load VALUES ('TR1','91005','CN1',24)
 
-- CN11: 300 tonnes Cement -- Newcastle → London : -- Cement → Open wagon
INTO Wagon_Load VALUES ('TR1','91009','CN11',69)
INTO Wagon_Load VALUES ('TR1','91010','CN11',69)
INTO Wagon_Load VALUES ('TR1','91011','CN11',69)
INTO Wagon_Load VALUES ('TR1','91012','CN11',69)
INTO Wagon_Load VALUES ('TR1','91013','CN11',24)

-- CN12: 180 tonnes cars -- York → Birmingham : -- Cars → Car Carrier
-- CN12 PART (90 tonnes cars)
INTO Wagon_Load VALUES ('TR1','93001','CN12',15)
INTO Wagon_Load VALUES ('TR1','93002','CN12',15)
INTO Wagon_Load VALUES ('TR1','93003','CN12',15)
INTO Wagon_Load VALUES ('TR1','93004','CN12',15)
INTO Wagon_Load VALUES ('TR1','93005','CN12',15)
INTO Wagon_Load VALUES ('TR1','93006','CN12',15)

-- 🚆 TR12 (RT1 - PART 2) Glasgow → London 
-- CN1 REMAINING (200 tonnes)
INTO Wagon_Load VALUES ('TR12','91011','CN1',69)
INTO Wagon_Load VALUES ('TR12','91012','CN1',69)
INTO Wagon_Load VALUES ('TR12','91013','CN1',62)

-- CN12 REMAINING (90 tonnes)
INTO Wagon_Load VALUES ('TR12','93007','CN12',15)
INTO Wagon_Load VALUES ('TR12','93008','CN12',15)
INTO Wagon_Load VALUES ('TR12','93009','CN12',15)
INTO Wagon_Load VALUES ('TR12','93010','CN12',15)
INTO Wagon_Load VALUES ('TR12','93011','CN12',15)
INTO Wagon_Load VALUES ('TR12','93012','CN12',15)

-- 🚆 TR2 (PART 1) (Birmingham → Rugby → London → Oxford → Bristol → Plymouth) 
-- CN2: 240 tonnes (200 cars) (split across trains in TR6) -- Birmingham → Plymouth : -- Cars → Car Carrier
-- CN2 PART (120 tonnes cars)
INTO Wagon_Load VALUES ('TR2','93013','CN2',15)
INTO Wagon_Load VALUES ('TR2','93014','CN2',15)
INTO Wagon_Load VALUES ('TR2','93015','CN2',15)
INTO Wagon_Load VALUES ('TR2','93001','CN2',15)
INTO Wagon_Load VALUES ('TR2','93002','CN2',15)
INTO Wagon_Load VALUES ('TR2','93003','CN2',15)
INTO Wagon_Load VALUES ('TR2','93004','CN2',15)
INTO Wagon_Load VALUES ('TR2','93005','CN2',15)

-- CN15: 140 tonnes Steel -- Oxford → Plymouth : -- Steel → Open wagon
INTO Wagon_Load VALUES ('TR2','91014','CN15',69)
INTO Wagon_Load VALUES ('TR2','91015','CN15',69)
INTO Wagon_Load VALUES ('TR2','91016','CN15',2)

-- 🚆 TR11 (RT2 - PART 2) Birmingham → Plymouth 
-- CN2 REMAINING (120 tonnes)
INTO Wagon_Load VALUES ('TR11','93006','CN2',15)
INTO Wagon_Load VALUES ('TR11','93007','CN2',15)
INTO Wagon_Load VALUES ('TR11','93008','CN2',15)
INTO Wagon_Load VALUES ('TR11','93009','CN2',15)
INTO Wagon_Load VALUES ('TR11','93010','CN2',15)
INTO Wagon_Load VALUES ('TR11','93011','CN2',15)
INTO Wagon_Load VALUES ('TR11','93012','CN2',15)
INTO Wagon_Load VALUES ('TR11','93013','CN2',15)

-- 🚆 TR3 (Bristol → Oxford → London → Rugby → Birmingham → Sheffield → Manchester → Leeds → York → Newcastle → Edinburgh) 
-- CN3: 300 × 0.8 = 240 tonnes -- Bristol → Edinburgh : -- Perishable → Covered
INTO Wagon_Load VALUES ('TR3','92001','CN3',66.5)
INTO Wagon_Load VALUES ('TR3','92002','CN3',66.5)
INTO Wagon_Load VALUES ('TR3','92003','CN3',66.5)
INTO Wagon_Load VALUES ('TR3','92004','CN3',40.5)

-- CN13: 200 × 0.8 = 160 tonnes -- Leeds → Edinburgh : -- Perishable → Covered
INTO Wagon_Load VALUES ('TR3','92005','CN13',66.5)
INTO Wagon_Load VALUES ('TR3','92006','CN13',66.5)
INTO Wagon_Load VALUES ('TR3','92007','CN13',27)

-- CN8: 260 × 0.8 = 208 tonnes -- Manchester → Edinburgh : -- Perishable → Covered
INTO Wagon_Load VALUES ('TR3','92008','CN8',66.5)
INTO Wagon_Load VALUES ('TR3','92009','CN8',66.5)
INTO Wagon_Load VALUES ('TR3','92010','CN8',66.5)
INTO Wagon_Load VALUES ('TR3','92011','CN8',8.5)

-- 🚆 TR4 (PART 1) (Cardiff → Bristol → Oxford → London → Rugby → Birmingham → Sheffield → Manchester → Leeds → York → Newcastle → Edinburgh → Glasgow)
-- CN4: 450 tonnes Oil -- Cardiff → Glasgow : -- Oil → Tank
-- CN4 PART (250.8 tonnes Oil)
INTO Wagon_Load VALUES ('TR4','94001','CN4',62.7)
INTO Wagon_Load VALUES ('TR4','94002','CN4',62.7)
INTO Wagon_Load VALUES ('TR4','94003','CN4',62.7)
INTO Wagon_Load VALUES ('TR4','94004','CN4',62.7)

-- CN14: 250 tonnes Oil -- Manchester → Glasgow : -- Oil → Tank
INTO Wagon_Load VALUES ('TR4','94009','CN14',62.7)
INTO Wagon_Load VALUES ('TR4','94010','CN14',62.7)
INTO Wagon_Load VALUES ('TR4','94011','CN14',62.7)
INTO Wagon_Load VALUES ('TR4','94012','CN14',61.9)

-- 🚆 TR13 (RT4 - Part 2) Cardiff → Glasgow (PART 2)
-- CN4 REMAINING (199.2 tonnes Oil)
INTO Wagon_Load VALUES ('TR13','94013','CN4',62.7)
INTO Wagon_Load VALUES ('TR13','94014','CN4',62.7)
INTO Wagon_Load VALUES ('TR13','94015','CN4',62.7)
INTO Wagon_Load VALUES ('TR13','94016','CN4',11.1)

-- 🚆 TR6 (Plymouth → Bristol → Oxford → London → Rugby → Birmingham → Sheffield → Manchester) 
-- CN6: 220 tonnes Coal -- Plymouth → Manchester : -- Coal → Open wagon
INTO Wagon_Load VALUES ('TR6','91017','CN6',69)
INTO Wagon_Load VALUES ('TR6','91018','CN6',69)
INTO Wagon_Load VALUES ('TR6','91019','CN6',69)
INTO Wagon_Load VALUES ('TR6','91020','CN6',13)

-- CN5: 150 tonnes Steel -- Bristol → Manchester : -- Steel → Open wagon
INTO Wagon_Load VALUES ('TR6','91021','CN5',69)
INTO Wagon_Load VALUES ('TR6','91022','CN5',69)
INTO Wagon_Load VALUES ('TR6','91023','CN5',12)

-- 🚆 TR7 (PART 1) (London → Rugby → Birmingham → Sheffield → Manchester → Leeds) 
-- CN7: 216 tonnes (180 cars) -- London → Leeds : -- Cars → Car Carrier
-- CN7 PART (108 tonnes cars)
INTO Wagon_Load VALUES ('TR7','93001','CN7',15)
INTO Wagon_Load VALUES ('TR7','93002','CN7',15)
INTO Wagon_Load VALUES ('TR7','93003','CN7',15)
INTO Wagon_Load VALUES ('TR7','93004','CN7',15)
INTO Wagon_Load VALUES ('TR7','93005','CN7',15)
INTO Wagon_Load VALUES ('TR7','93006','CN7',15)
INTO Wagon_Load VALUES ('TR7','93007','CN7',15)
INTO Wagon_Load VALUES ('TR7','93008','CN7',15)

-- CN16: 160 tonnes Coal -- Birmingham → Manchester : -- Coal → Open wagon
INTO Wagon_Load VALUES ('TR7','91024','CN16',69)
INTO Wagon_Load VALUES ('TR7','91025','CN16',69)
INTO Wagon_Load VALUES ('TR7','91026','CN16',22)

-- 🚆 TR14 (RT7) London → Leeds (PART 2)
-- CN7 REMAINING (108 tonnes cars)
INTO Wagon_Load VALUES ('TR14','93009','CN7',15)
INTO Wagon_Load VALUES ('TR14','93010','CN7',15)
INTO Wagon_Load VALUES ('TR14','93011','CN7',15)
INTO Wagon_Load VALUES ('TR14','93012','CN7',15)
INTO Wagon_Load VALUES ('TR14','93013','CN7',15)
INTO Wagon_Load VALUES ('TR14','93014','CN7',15)
INTO Wagon_Load VALUES ('TR14','93015','CN7',15)
INTO Wagon_Load VALUES ('TR14','93001','CN7',3)

-- 🚆 TR9 ( Newcastle → Oxford)
-- CN9: 140 tonnes Oil -- Newcastle → Oxford : -- Oil → Tank
INTO Wagon_Load VALUES ('TR9','94013','CN9',62.7)
INTO Wagon_Load VALUES ('TR9','94014','CN9',62.7)
INTO Wagon_Load VALUES ('TR9','94015','CN9',14.6)

-- 🚆 TR10 (Rugby → Bristol) 
-- CN10: 120 tonnes Steel -- Rugby → Bristol  : -- Steel → Open wagon
INTO Wagon_Load VALUES ('TR10','91027','CN10',69)
INTO Wagon_Load VALUES ('TR10','91028','CN10',51)

SELECT * FROM dual;





INSERT ALL

--  TR1 (Glasgow → London)
INTO Train_Schedule  VALUES ('TR1','SG12',1,TO_DATE('2026-03-01 06:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 06:30','YYYY-MM-DD HH24:MI'),'START') -- Glasgow (start CN1)
INTO Train_Schedule  VALUES ('TR1','SG10',3,TO_DATE('2026-03-01 10:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 11:00','YYYY-MM-DD HH24:MI'),'STOP') -- Newcastle (load CN11)
INTO Train_Schedule  VALUES ('TR1','SG9',4,TO_DATE('2026-03-01 12:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 13:00','YYYY-MM-DD HH24:MI'),'STOP') -- York (load CN12)
INTO Train_Schedule  VALUES ('TR1','SG6',7,TO_DATE('2026-03-01 17:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 18:00','YYYY-MM-DD HH24:MI'),'STOP') -- Birmingham (unload CN12)
INTO Train_Schedule  VALUES ('TR1','SG4',9,TO_DATE('2026-03-01 20:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 20:30','YYYY-MM-DD HH24:MI'),'END') -- London (final unload CN1, CN11)


--  TR12 (REUSE after TR1)
INTO Train_Schedule  VALUES ('TR12','SG12',1,TO_DATE('2026-03-02 10:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 11:00','YYYY-MM-DD HH24:MI'),'START') -- Glasgow (reuse wagons)
INTO Train_Schedule  VALUES ('TR12','SG6',7,TO_DATE('2026-03-02 18:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 18:30','YYYY-MM-DD HH24:MI'),'STOP') -- Birmingham (unload CN12)
INTO Train_Schedule  VALUES ('TR12','SG4',9,TO_DATE('2026-03-02 21:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 21:30','YYYY-MM-DD HH24:MI'),'END') -- London (final CN1)


--  TR2 (Birmingham → Plymouth)
INTO Train_Schedule  VALUES ('TR2','SG5',1,TO_DATE('2026-03-01 07:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 07:30','YYYY-MM-DD HH24:MI'),'START') -- Birmingham (start CN2)
INTO Train_Schedule  VALUES ('TR2','SG3',3,TO_DATE('2026-03-01 10:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 10:30','YYYY-MM-DD HH24:MI'),'STOP') -- Oxford (load CN15)
INTO Train_Schedule  VALUES ('TR2','SG1',5,TO_DATE('2026-03-01 14:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 15:00','YYYY-MM-DD HH24:MI'),'END') -- Plymouth (unload all)


--  TR11 (reuse after TR2)
INTO Train_Schedule  VALUES ('TR11','SG5',1,TO_DATE('2026-03-02 16:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 16:30','YYYY-MM-DD HH24:MI'),'START') -- Birmingham
INTO Train_Schedule  VALUES ('TR11','SG1',5,TO_DATE('2026-03-02 21:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 21:30','YYYY-MM-DD HH24:MI'),'END') -- Plymouth


--  TR3 (Bristol → Edinburgh)
INTO Train_Schedule  VALUES ('TR3','SG2',1,TO_DATE('2026-03-01 08:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 08:30','YYYY-MM-DD HH24:MI'),'START') -- Bristol (start CN3)
INTO Train_Schedule  VALUES ('TR3','SG8',7,TO_DATE('2026-03-01 15:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 15:30','YYYY-MM-DD HH24:MI'),'STOP') -- Leeds (load CN13)
INTO Train_Schedule  VALUES ('TR3','SG7',6,TO_DATE('2026-03-01 16:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 17:00','YYYY-MM-DD HH24:MI'),'STOP') -- Manchester (load CN8)
INTO Train_Schedule  VALUES ('TR3','SG11',10,TO_DATE('2026-03-01 22:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 22:30','YYYY-MM-DD HH24:MI'),'END') -- Edinburgh (final)


--  TR4 (Cardiff → Glasgow)
INTO Train_Schedule  VALUES ('TR4','SG13',1,TO_DATE('2026-03-01 06:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 07:00','YYYY-MM-DD HH24:MI'),'START') -- Cardiff (start CN4)
INTO Train_Schedule  VALUES ('TR4','SG7',7,TO_DATE('2026-03-01 14:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 15:00','YYYY-MM-DD HH24:MI'),'STOP') -- Manchester (load CN14)
INTO Train_Schedule  VALUES ('TR4','SG12',12,TO_DATE('2026-03-01 23:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 23:30','YYYY-MM-DD HH24:MI'),'END') -- Glasgow (final)


--  TR13 (reuse after TR4)
INTO Train_Schedule  VALUES ('TR13','SG13',1,TO_DATE('2026-03-02 12:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 12:30','YYYY-MM-DD HH24:MI'),'START') -- Cardiff
INTO Train_Schedule  VALUES ('TR13','SG12',12,TO_DATE('2026-03-02 22:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 22:30','YYYY-MM-DD HH24:MI'),'END') -- Glasgow


--  TR6 (Plymouth → Manchester)
INTO Train_Schedule  VALUES ('TR6','SG1',1,TO_DATE('2026-03-01 09:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 09:30','YYYY-MM-DD HH24:MI'),'START') -- Plymouth (CN6)
INTO Train_Schedule  VALUES ('TR6','SG2',2,TO_DATE('2026-03-01 11:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 11:30','YYYY-MM-DD HH24:MI'),'STOP') -- Bristol (load CN5)
INTO Train_Schedule  VALUES ('TR6','SG7',7,TO_DATE('2026-03-01 18:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 19:00','YYYY-MM-DD HH24:MI'),'END') -- Manchester


--  TR7 (London → Leeds)
INTO Train_Schedule  VALUES ('TR7','SG4',1,TO_DATE('2026-03-01 11:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 11:30','YYYY-MM-DD HH24:MI'),'START') -- London (CN7)
INTO Train_Schedule  VALUES ('TR7','SG6',3,TO_DATE('2026-03-01 14:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 15:00','YYYY-MM-DD HH24:MI'),'STOP') -- Birmingham (load CN16)
INTO Train_Schedule  VALUES ('TR7','SG8',5,TO_DATE('2026-03-01 18:30','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 19:00','YYYY-MM-DD HH24:MI'),'END') -- Leeds


--  TR14 (reuse after TR7)
INTO Train_Schedule  VALUES ('TR14','SG4',1,TO_DATE('2026-03-02 08:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 08:30','YYYY-MM-DD HH24:MI'),'START') -- London
INTO Train_Schedule  VALUES ('TR14','SG8',5,TO_DATE('2026-03-02 14:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-02 14:30','YYYY-MM-DD HH24:MI'),'END') -- Leeds


--  TR9 (Newcastle → Oxford)
INTO Train_Schedule  VALUES ('TR9','SG10',1,TO_DATE('2026-03-01 10:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 10:30','YYYY-MM-DD HH24:MI'),'START') -- Newcastle
INTO Train_Schedule  VALUES ('TR9','SG3',8,TO_DATE('2026-03-01 20:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 20:30','YYYY-MM-DD HH24:MI'),'END') -- Oxford


--  TR10 (Rugby → Bristol)
INTO Train_Schedule  VALUES ('TR10','SG5',1,TO_DATE('2026-03-01 12:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 12:30','YYYY-MM-DD HH24:MI'),'START') -- Rugby
INTO Train_Schedule  VALUES ('TR10','SG2',4,TO_DATE('2026-03-01 16:00','YYYY-MM-DD HH24:MI'),TO_DATE('2026-03-01 16:30','YYYY-MM-DD HH24:MI'),'END') -- Bristol

SELECT * FROM dual;