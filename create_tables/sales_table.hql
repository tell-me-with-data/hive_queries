--- Firts Project : Sales DB
--- Raw Stage
CREATE TABLE IF NOT EXISTS sales_db_raw.categories(
  category_id STRING,
  category_name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/categories';
--- RUN IN SHELL: hdfs dfs -mv /inputs/categories.csv /tell_me_with_data/raw_data/sales_db_raw/categories
CREATE TABLE IF NOT EXISTS sales_db_raw.employes(
  employee_id STRING,
  first_name STRING,
  middle_initial STRING,
  last_name STRING,
  birth_date STRING,
  gender STRING,
  city_id STRING,
  hire_date STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/employes';
--- RUN IN SHELL: hdfs dfs -mv /inputs/employes.csv /tell_me_with_data/raw_data/sales_db_raw/employes
CREATE TABLE IF NOT EXISTS sales_db_raw.cities(
  city_id STRING,
  city_name STRING,
  zip_code STRING,
  country_id STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/cities';
--- RUN IN SHELL: hdfs dfs -mv /inputs/cities.csv /tell_me_with_data/raw_data/sales_db_raw/cities
CREATE TABLE IF NOT EXISTS sales_db_raw.countries(
  country_id STRING,
  country_name STRING,
  country_code STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/countries';
--- RUN IN SHELL: hdfs dfs -mv /inputs/countries.csv /tell_me_with_data/raw_data/sales_db_raw/countries
CREATE TABLE IF NOT EXISTS sales_db_raw.products(
  product_id STRING,
  product_name STRING,
  price STRING,
  category_id STRING,
  class STRING,
  modify_date STRING,
  resistant STRING,
  is_allergic STRING,
  vitality_days STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/products';
--- RUN IN SHELL: hdfs dfs -mv /inputs/products.csv /tell_me_with_data/raw_data/sales_db_raw/products
CREATE TABLE IF NOT EXISTS sales_db_raw.customers(
  customer_id STRING,
  first_name STRING,
  middle_initial STRING,
  last_name STRING,
  city_id STRING,
  address STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/customers';
--- RUN IN SHELL: hdfs dfs -mv /inputs/customers.csv /tell_me_with_data/raw_data/sales_db_raw/customers
CREATE TABLE IF NOT EXISTS sales_db_raw.sales(
  sales_id STRING,
  sales_person_id STRING,
  customer_id STRING,
  product_id STRING,
  quantity STRING,
  discount STRING,
  total_price STRING,
  sales_data STRING,
  transaction_number STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u003B'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tell_me_with_data/raw_data/sales_db_raw/sales';
--- RUN IN SHELL: hdfs dfs -mv /inputs/sales.csv /tell_me_with_data/raw_data/sales_db_raw/sales