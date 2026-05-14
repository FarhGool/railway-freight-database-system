CREATE TABLE Station (
    station_id VARCHAR(10) PRIMARY KEY,
    station_name VARCHAR(100) NOT NULL
);


CREATE TABLE Stage (
    stage_id VARCHAR(10) PRIMARY KEY,
    station_id_a VARCHAR(10) NOT NULL,
    station_id_b VARCHAR(10) NOT NULL,
    journey_distance DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (station_id_a) REFERENCES Station(station_id),
    FOREIGN KEY (station_id_b) REFERENCES Station(station_id)
);


CREATE TABLE Route (
    route_id VARCHAR(10) PRIMARY KEY,
    route_name VARCHAR(50) NOT NULL
);


CREATE TABLE Route_Stage (
    route_id VARCHAR(10) NOT NULL,
    stage_id VARCHAR(10) NOT NULL,
    stage_order INT NOT NULL,
    direction CHAR(1) NOT NULL,
    PRIMARY KEY (route_id, stage_id),
    FOREIGN KEY (route_id) REFERENCES Route(route_id),
    FOREIGN KEY (stage_id) REFERENCES Stage(stage_id)
);



CREATE TABLE Company (
    company_id VARCHAR(10) PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100) NOT NULL,
    address VARCHAR(200) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);


CREATE TABLE Goods_Type (
    goods_id VARCHAR(10) PRIMARY KEY,
    description VARCHAR(50) NOT NULL,
    unit_weight DECIMAL(10,2) NOT NULL
);


CREATE TABLE Locomotive_Class (
    loco_class_id VARCHAR(10) PRIMARY KEY,
    loco_class_name VARCHAR(50) NOT NULL,
    loco_length DECIMAL(5,2) NOT NULL,
    max_towing_weight DECIMAL(10,2) NOT NULL
);



CREATE TABLE Wagon_Class (
    wagon_id VARCHAR(10) PRIMARY KEY,
    wagon_name VARCHAR(50) NOT NULL,
    wagon_length DECIMAL(5,2) NOT NULL,
    tare_weight DECIMAL(10,2) NOT NULL,
    max_payload DECIMAL(10,2) NOT NULL
);


CREATE TABLE Driver (
    driver_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    address VARCHAR(150) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    employment_start_date DATE NOT NULL,
    licence_number VARCHAR(20) NOT NULL,
    licence_expiry_date DATE NOT NULL
);


CREATE TABLE Locomotive (
    loco_serial VARCHAR(10) PRIMARY KEY,
    loco_class_id VARCHAR(10) NOT NULL,
    loco_name VARCHAR(50),
    FOREIGN KEY (loco_class_id) REFERENCES Locomotive_Class(loco_class_id)
);


CREATE TABLE Wagon (
    wagon_serial VARCHAR(10) PRIMARY KEY,
    wagon_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (wagon_id) REFERENCES Wagon_Class(wagon_id)
);


CREATE TABLE Consignment (
    consignment_id VARCHAR(10) PRIMARY KEY,
    company_id VARCHAR(10) NOT NULL,
    goods_id VARCHAR(10) NOT NULL,
    collection_station_id VARCHAR(10) NOT NULL,
    delivery_station_id VARCHAR(10) NOT NULL,
    quantity DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (company_id) REFERENCES Company(company_id),
    FOREIGN KEY (goods_id) REFERENCES Goods_Type(goods_id),
    FOREIGN KEY (collection_station_id) REFERENCES Station(station_id),
    FOREIGN KEY (delivery_station_id) REFERENCES Station(station_id)
);


CREATE TABLE Train (
    train_id VARCHAR(10) PRIMARY KEY,
    route_id VARCHAR(10) NOT NULL,
    loco_serial VARCHAR(10) NOT NULL,
    FOREIGN KEY (route_id) REFERENCES Route(route_id),
    FOREIGN KEY (loco_serial) REFERENCES Locomotive(loco_serial)
);



CREATE TABLE Train_Schedule (
    train_id VARCHAR(10) NOT NULL,
    stage_id VARCHAR(10) NOT NULL,
    stage_order INT NOT NULL,
    arrival_time DATE NOT NULL,
    departure_time DATE NOT NULL,
    stop_type VARCHAR(10) NOT NULL,

    PRIMARY KEY (train_id, stage_id),
    FOREIGN KEY (train_id) REFERENCES Train(train_id),
    FOREIGN KEY (stage_id) REFERENCES Stage(stage_id),

   
    CHECK (stop_type IN ('START','STOP','END'))
);



CREATE TABLE Driver_Qualification (
    driver_id VARCHAR(10) NOT NULL,
    loco_class_id VARCHAR(10) NOT NULL,
    PRIMARY KEY (driver_id, loco_class_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    FOREIGN KEY (loco_class_id) REFERENCES Locomotive_Class(loco_class_id)
);


CREATE TABLE Driver_Allocation (
    train_id VARCHAR(10) NOT NULL,
    driver_id VARCHAR(10) NOT NULL,
    role VARCHAR(20) NOT NULL,
    PRIMARY KEY (train_id, driver_id),
    FOREIGN KEY (train_id) REFERENCES Train(train_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);


CREATE TABLE Wagon_Load (
    train_id VARCHAR(10) NOT NULL,
    wagon_serial VARCHAR(10) NOT NULL,
    consignment_id VARCHAR(10) NOT NULL,
    load_quantity DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (train_id, wagon_serial, consignment_id),
    FOREIGN KEY (train_id) REFERENCES Train(train_id),
    FOREIGN KEY (wagon_serial) REFERENCES Wagon(wagon_serial),
    FOREIGN KEY (consignment_id) REFERENCES Consignment(consignment_id)
);


