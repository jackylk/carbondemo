drop database if exists tpchparquet cascade;
create database tpchparquet;
use tpchparquet;

create table if not exists SUPPLIER(S_SUPPKEY string, S_NAME string, S_ADDRESS string, S_NATIONKEY string, S_PHONE string, S_ACCTBAL double, S_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists PARTSUPP(PS_PARTKEY int , PS_SUPPKEY string, PS_AVAILQTY int, PS_SUPPLYCOST double, PS_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists CUSTOMER(C_CUSTKEY string, C_NAME string, C_ADDRESS string, C_NATIONKEY string, C_PHONE string, C_ACCTBAL double, C_MKTSEGMENT string, C_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists NATION(N_NATIONKEY string, N_NAME string, N_REGIONKEY string, N_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists REGION(R_REGIONKEY string, R_NAME string, R_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists PART(P_PARTKEY int, P_NAME string, P_MFGR string, P_BRAND string, P_TYPE string, P_SIZE int, P_CONTAINER string, P_RETAILPRICE double, P_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists lineitem(L_ORDERKEY int , L_PARTKEY int , L_SUPPKEY string, L_LINENUMBER int, L_QUANTITY double, L_EXTENDEDPRICE double, L_DISCOUNT double, L_TAX double, L_RETURNFLAG string, L_LINESTATUS string, L_SHIPDATE date, L_COMMITDATE date, L_RECEIPTDATE date, L_SHIPINSTRUCT string, L_SHIPMODE string, L_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
create table if not exists ORDERS(O_ORDERKEY int , O_CUSTKEY string, O_ORDERSTATUS string, O_TOTALPRICE double, O_ORDERDATE date, O_ORDERPRIORITY string, O_CLERK string, O_SHIPPRIORITY int, O_COMMENT string) stored as parquet tblproperties("parquet.compression"="snappy");
