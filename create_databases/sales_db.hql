--- Firts Project : Sales DB
CREATE DATABASE IF NOT EXISTS sales_db_raw
LOCATION '/tell_me_with_data/raw_data/sales_db_raw';
CREATE DATABASE IF NOT EXISTS sales_db_process
LOCATION '/tell_me_with_data/process_data/sales_db_process';
CREATE DATABASE IF NOT EXISTS sales_db_final
LOCATION '/tell_me_with_data/final_data/sales_db_final';