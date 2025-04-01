## Software Abstract

This project explores PostgreSQL, a powerful open-source relational database system used widely in science and engineering. It is commonly applied in data-heavy fields like climate modeling, biomedical research, and engineering simulations to store, organize, and query large datasets. PostgreSQL supports advanced features like indexing, parallel query execution, and JSON handling, which make it useful in scientific pipelines that demand performance and flexibility.

PostgreSQL is considered an **application-level database system**, not middleware or a programming language. In this project, we use it to benchmark and optimize the speed of SQL queries by testing different indexing strategies.

## Installation Instructions

### 1. Install PostgreSQL (Mac using Homebrew)

If you're using a Mac:

```bash
    brew install postgresql@15

Add it to your terminal path:

    echo 'export PATH="/usr/local/opt/postgresql@15/bin:$PATH"' >> ~/.zshrc
    source ~/.zshrc

Start the PostgreSQL server:
    brew services start postgresql@15

### 2. Create the Database
createdb test_db

### 3. Run the SQL Scripts
In your terminal (from inside the project_folder), run:
    chmod +x submit.sh
    ./submit.sh > output.txt 2>&1

This will:
* Create the users table
* Insert 1 million sample rows
* Run a query and save the output


Project Refrences:

- CHATGpt assissted me in code and creating clear step by step outline
- The following links assisted me in setting up the SQL Database
    * https://www.youtube.com/watch?v=C0y35FpiLRA
    * https://www.youtube.com/results?search_query=setting+up+sql+database+on+vscode
    * https://www.postgresql.org/download/macosx/
    * https://brew.sh/
