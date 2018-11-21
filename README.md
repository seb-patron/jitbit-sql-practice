# Jitbit SQL Interview Questions
-

A notebook filled with SQL query practice I've done from Jitbit's blog. Data and database setup comes from github user Pluis's github gist.



## Getting Started

Queries are called in Jupyter notebook and imported into pandas dataframes for visualization. Uses anaconda to manage the environment.

### Requirements

You'll need the following installed to run the analysis successfully:

* Anaconda
* PostgreSQL

### Installation

First create the anaconda environment:

```bash
conda env create -f environment.yml -n sql-query-practice
```

Activate the environment:

```bash
$ source activate sql-query-practice
```

Next, run the get the create the database, tables, and insert data with the setup file.

```bash
psql -u postgres_username -f db_setup.sql
```


Finally, start up Jupyter and visit localhost:8888 to see the analysis.

```bash
jupyter notebook
```

## Data Sources

Faux data provided by [github user Plies](https://gist.github.com/Pluies/5663135) and there public gist.


### Additional Info

To update project with new packages, add them to environment.yml, then type in

```bash
$ conda env update -f environment.yml -n sql-query-practice
```