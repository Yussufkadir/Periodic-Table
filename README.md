# 🧪 Periodic Table Database 

An interactive command-line application that provides detailed information about chemical elements using Bash scripting and PostgreSQL database management. This project demonstrates practical integration of shell scripting with relational database operations.

## 📋 Overview

This project is part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/). It implements a robust periodic table database system that allows users to query element information through an intuitive Bash interface.

## ✨ Features

- **Interactive CLI**: Query elements by atomic number, symbol, or name
- **Comprehensive Data**: Retrieve detailed information including:
  - Atomic number and symbol
  - Element name and type
  - Atomic mass
  - Melting and boiling points
- **PostgreSQL Integration**: Efficient data storage and retrieval using relational database
- **Input Validation**: Handles various input formats gracefully
- **Error Handling**: User-friendly error messages for invalid queries

## 🛠️ Technologies Used

- **Bash**: Shell scripting for user interaction and program logic
- **PostgreSQL**: Relational database for storing element data
- **SQL**: Database queries and management

## 🚀 Getting Started

### Prerequisites

- PostgreSQL (version 12 or higher)
- Bash shell
- Basic knowledge of terminal commands

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Yussufkadir/Periodic-Table.git
cd Periodic-Table
```

2. Set up the PostgreSQL database:
```bash
psql -U postgres < periodic_table.sql
```

3. Make the script executable:
```bash
chmod +x element.sh
```

### Usage

Run the script with an element identifier (atomic number, symbol, or name):

```bash
./element.sh 1           # Query by atomic number
./element.sh H           # Query by symbol
./element.sh Hydrogen    # Query by name
```

**Example Output:**
```
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
```

## 💾 Database Schema

The project uses a normalized database structure with the following key tables:

- **elements**: Stores basic element information (atomic_number, symbol, name)
- **properties**: Stores physical properties (atomic_mass, melting_point, boiling_point)
- **types**: Categorizes elements (metal, nonmetal, metalloid)

Relationships are established through foreign key constraints ensuring data integrity.

## 🎯 Learning Outcomes

This project demonstrates proficiency in:

- Writing robust Bash scripts with proper error handling
- Designing normalized relational database schemas
- Implementing PostgreSQL queries from Bash
- Managing database connections securely
- Processing and validating user input
- Creating user-friendly command-line interfaces

## 🧪 Example Queries

```bash
# Query by atomic number
./element.sh 6
# Output: Carbon (C) information

# Query by symbol
./element.sh Au
# Output: Gold (Au) information

# Query by name
./element.sh Oxygen
# Output: Oxygen (O) information

# Invalid query
./element.sh 999
# Output: I could not find that element in the database.
```


## 📝 License

This project is part of the freeCodeCamp curriculum and follows their guidelines for educational projects.

## 👨‍💻 Author

**Yussuf Kadir**
- GitHub: [@Yussufkadir](https://github.com/Yussufkadir)

## 🙏 Acknowledgments

- [freeCodeCamp](https://www.freecodecamp.org/) for the excellent curriculum
- The open-source community for PostgreSQL and Bash documentation

## 📚 Resources

- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [Bash Scripting Guide](https://www.gnu.org/software/bash/manual/)
- [freeCodeCamp Relational Database Course](https://www.freecodecamp.org/learn/relational-database/)
