# Jitbit SQL Interview Questions
-

A notebook filled with SQL query practice I've done from Jitbit's blog. Data and database setup comes from github user Pluis's github gist.



## Getting Started

Queries are called in Jupyter notebook and imported into pandas dataframes for visualization. Uses anaconda to manage the environment

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

Next, run the get the data and sql table setup files.

```bash
curl -O https://static.interviewcake.com/bakery_schema_and_data.sql && mysql.server start && mysql -u root
```

Setup the database

```bash
source bakery_schema_and_data.sql;
```

Finally, start up Jupyter and visit localhost:8888 to see the analysis.

```bash
jupyter notebook
```

## Data Sources

All data was taken from opendata sources.

asu data - https://moto.data.socrata.com/dataset/Arizona-State-University-Police-Department/6fzp-yqnh

tempe - https://data-tempegov.opendata.arcgis.com/datasets/02533928ed1649d2ac773c8ebf50f37d_1?geometry=-111.959%2C33.414%2C-111.899%2C33.426


### Additional Info

To update project with new packages, add them to environment.yml, then type in

```bash
$ conda env update -f environment.yml -n sql-query-practice
```