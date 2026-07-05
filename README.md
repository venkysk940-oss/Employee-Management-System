# Employee Management System

A Java Swing-based desktop application for managing employee records, connected to a MySQL database.

## Features
- **Splash Screen**: Initial loading page.
- **Login Portal**: Secure login verification using credentials from the database.
- **Dashboard**: Main menu to navigate between functionalities.
- **Add Employee**: Input form for details like name, father's name, date of birth, salary, address, contact details, email, highest education, designation, and Aadhar number. Generates a unique employee ID.
- **View/Search Employee**: View all employees in a tabular format, search by employee ID, and print details.
- **Update Employee**: Edit and update personal or professional details of existing employees.
- **Remove Employee**: Remove employee records from the database.

## Prerequisites
- **Java SE Development Kit (JDK)**: version 8 or higher.
- **MySQL Database Server**: version 8.x.

## Database Setup
1. Open your MySQL client and execute the queries inside [setup_db.sql](setup_db.sql) to create the `employeemanagement` database, `login` and `employee` tables, and insert the default admin login.
2. If your MySQL credentials differ, open [conn.java](src/employee/management/system/conn.java) and modify the password in the connection string:
   ```java
   connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagement", "root", "YOUR_PASSWORD");
   ```

## Compile and Run

### Step 1: Compile the Project
Open a terminal (Command Prompt or PowerShell) in the project directory and run:
```bash
javac -d "out/production/employee management system" -cp "lib/mysql-connector-java-8.0.28.jar;lib/jcalendar-1.4.jar" src/employee/management/system/*.java
```

### Step 2: Run the Application
Launch the application by running:
```bash
java -cp "out/production/employee management system;lib/mysql-connector-java-8.0.28.jar;lib/jcalendar-1.4.jar" employee.management.system.Splash
```

### Default Credentials
- **Username**: `admin`
- **Password**: `admin`
