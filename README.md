# Railway Freight Database System

A fully normalised railway freight management database system developed in Oracle SQL.

This project models real-world railway freight operations including:

- Railway routes and stages
- Train scheduling
- Wagon allocation
- Freight consignments
- Driver certification and allocation
- Locomotive management
- Operational constraint validation

The system was developed as part of the CI7230 Databases & Data Management module at Kingston University London.

---

# Features

## Railway Network Management
- Multi-stage railway routes
- Bidirectional stage modelling
- Route-stage sequencing

## Freight Operations
- Consignment tracking
- Multi-train freight transportation
- Wagon allocation and reuse

## Scheduling System
- Train arrival/departure scheduling
- Resource reuse management
- Conflict-free wagon, locomotive, and driver allocation

## Operational Constraints
- Train length validation
- Wagon payload validation
- Driver qualification verification
- Locomotive towing compliance

## Advanced SQL Queries
- Train Compliance Check
- Driver Qualification Compliance
- Wagon Load Status Check
- Consignment Tracking Query

---

# Database Design

The database is designed in Third Normal Form (3NF) to minimise redundancy and ensure strong data integrity.

The system contains entities including:

- Station
- Stage
- Route
- Train
- Wagon
- Locomotive
- Driver
- Consignment
- Train_Schedule
- Wagon_Load

Bridge tables are used to resolve many-to-many relationships:

- Route_Stage
- Wagon_Load
- Driver_Allocation
- Driver_Qualification

---

# Entity Relationship Diagram

![ERD](documentation/ERD.png)

---

# Technologies Used

- Oracle SQL
- Oracle Live SQL / SQL Developer
- Relational Database Design
- SQL Aggregation
- JOIN Operations
- LISTAGG
- CASE Expressions
- Constraint Modelling

---

# Example Business Rules

- A train must carry at least one consignment
- A driver must hold valid certification for the locomotive class
- Wagons and locomotives may be reused across trains at different times
- Scheduling conflicts are prevented through datetime allocation
- Train length must not exceed 400 metres

---

# Sample Queries

## Train Compliance Check
Validates:
- maximum towing weight
- train length constraints

## Driver Qualification Compliance
Ensures drivers are certified for assigned locomotive classes.

## Wagon Load Status Check
Checks whether wagons exceed payload capacity.

## Consignment Tracking Query
Provides end-to-end freight tracking across trains, wagons, routes, and schedules.

---

# Project Structure

```text
sql/
documentation/
diagrams/
assets/
```

---

# Setup Instructions

## 1. Create Tables
Run:

```sql
@01_create_tables.sql
```

## 2. Insert Sample Data

```sql
@02_insert_data.sql
```

## 3. Execute Queries

```sql
@03_constraints_and_queries.sql
```

---

# Project Highlights

- Fully normalised schema (3NF)
- Complex many-to-many relationship modelling
- Realistic railway logistics simulation
- Advanced operational validation
- Resource reuse scheduling
- Complex SQL reporting queries

---

# Author

Farhaan Gooljar  
MSc Data Science  
Kingston University London

---

# License

This project is licensed under the MIT License.