# Hotel Management SQL Project

This project contains SQL scripts and diagrams for managing a hotel database. It includes database creation, table structures, relationships, and queries to interact with hotel-related data.

---

## 🔹 Files & Their Purpose

1. **`Create_db_Hotel_Management_SQL.sql`**  
   - This script initializes the hotel management database by creating the main database schema.

2. **`Create_tables_Hotel_Management_SQL.sql`**  
   - Defines all tables used in the hotel system, including rooms, guests, employees, reservations, payments, etc.

3. **`Diagrams_(sql)_final_Hotel_Management_SQL.png`**  
   - A final SQL diagram showing the relationships between tables.

4. **`ERD_(sql)_final_Hotel_Management_SQL.png`**  
   - The Entity-Relationship Diagram (ERD) providing a visual representation of database entities and their connections.

5. **`Fill_in_info_in_tables_Hotel_Management_SQL.sql`**  
   - A script to populate tables with sample data to test the system.

6. **`Q_S_Hotel_Management_SQL.sql`**  
   - Contains queries such as retrieving guest information, checking available rooms, generating invoices, and employee management.

7. **`Relationships_Hotel_Management_SQL.rtf`**  
   - Explains relationships between different tables, including foreign key constraints.

8. **`Update_Hotel_Management_SQL.sql`**  
   - Likely contains modifications or optimizations for the database structure, adding new constraints, updating schema, or altering existing tables.

---

## 🔹 Example Queries
Here are some example queries you can run from the `Q_S_Hotel_Management_SQL.sql` file:

1. **Retrieve Guest Information**  
   ```sql
   SELECT * FROM Guests WHERE guest_id = 1;
