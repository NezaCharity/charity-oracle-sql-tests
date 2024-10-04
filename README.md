# charity-oracle-sql-tests
## Problem Statement
This is a system for managing employee and project data in an organization. The system includes tables for employees, departments, and projects. The relationships include one-to-many between departments and employees, and many-to-many between employees and projects.

## SQL Commands
- Created tables for `Departments`, `Employees`, and `Projects`.
- Inserted, updated, and deleted data across the tables.
- Performed inner joins and subqueries to retrieve related data.

## Screenshots
<img width="260" alt="Creating tables" src="https://github.com/user-attachments/assets/7ea2eb7d-9415-4e74-a32a-93f74cf43c1f">
<img width="234" alt="update" src="https://github.com/user-attachments/assets/c188132c-8884-4235-a3c9-c8ffc3c80887">
<img width="253" alt="join" src="https://github.com/user-attachments/assets/8c49baeb-d9ae-43bc-84b8-740b3b74c74c">
<img width="152" alt="select" src="https://github.com/user-attachments/assets/8d81552e-d0ab-4636-a629-b6cbde161937">
<img width="293" alt="insert-emp" src="https://github.com/user-attachments/assets/54573653-4a63-43a6-a33a-6a395fb095d9">
<img width="236" alt="insert-dep" src="https://github.com/user-attachments/assets/8411a7da-ab2c-4d65-b368-2c58010cc502">
<img width="279" alt="delete" src="https://github.com/user-attachments/assets/f04f1085-dd29-4033-9ec3-aa6e3f31af6f">
<img width="302" alt="DCL" src="https://github.com/user-attachments/assets/50bd7571-dac5-446a-bde3-b84a649f5174">

## Explanation
1. The first query creates tables for employees and departments.
2. The second query retrieves employee names and their corresponding departments using an inner join.
3. The third subquery finds all employees in the 'HR' department.
4. Another query is an example of transaction (TCL) where COMMIT guarantees that the changes made in the transaction (the INSERT operations) are applied and visible to all users, and the transaction is completed successfully.
5. **NB. SCREENSHOTS ARE NOT ARRANGED AS EXPLAINED**
