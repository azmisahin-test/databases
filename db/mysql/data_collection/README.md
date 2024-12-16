# Data Hub

The `data_hub` directory is responsible for managing the core database functionalities of the project. It contains the necessary components for schema management, data migrations, and database initialization.

## Structure

- **migrations**: Contains migration files to manage database schema changes over time.
  - **rollback**: Includes scripts to revert database changes if needed.
  - **versions**: Stores versioned migration files to track changes made to the database schema.

- **schemas**: This folder includes definitions for various database schemas.
  - **audit**: Contains tables, indexes, triggers, and views used for auditing and tracking changes in the database.
  - **core**: Holds the core database structure, including:
    - **indexes**: Index definitions for optimizing query performance.
    - **relationships**: Defines relationships between tables.
    - **tables**: Core tables that hold essential data.
    - **triggers**: Database triggers for automatic actions based on certain events.
    - **types**: Custom data types used within the database.
    - **views**: Predefined queries for simplified data retrieval.

- **seeds**: This folder contains seed data files used to populate the database with initial data for development and testing purposes.

## Usage

To run migrations or seed the database, use the provided scripts in the respective subdirectories. Ensure to check the migration version history before applying new migrations.

## Contributing

If you wish to contribute to the `data_hub`, please follow the guidelines provided in the main project README and ensure to maintain consistency in schema design and migration practices.
