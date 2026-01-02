# hotel-azure-sql-performance
Performance optimization and index analysis for a hotel reservation database in Azure SQL
## Overview
This project demonstrates how query performance in Azure SQL can be improved
using appropriate indexing strategies. A hotel reservation database is used
to analyze execution plans and logical reads before and after creating a
nonclustered index.

## Problem
In a hotel reservation system, booking information for individual guests is
frequently queried. Without proper indexing, these queries require scanning
large parts of the table, leading to inefficient performance as data grows.

## Solution
The primary key of the bookings table is implemented as a clustered index.
Additionally, a nonclustered index was created on the guestId column to optimize
frequent filtering queries.

## Key Results
- Execution plan changed from Clustered Index Scan to Index Seek
- Logical reads reduced from 198 to 2
- Query became fully covered by the nonclustered index

## Technologies Used
- Azure SQL Database
- SQL indexing (Clustered & Nonclustered)
- Execution plan analysis
- SET STATISTICS IO / TIME
- DBeaver
