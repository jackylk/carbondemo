# TPC-H demo for CarbonData

## Demo description
See this [doc](./doc/CarbonData-Demo.pdf)

It covers following use case for CarbonData

1. Create table with specified index column
2. Load Data from TXT files generated by TPC-h datagen tool
3. Data Update
4. Data Delete
5. Compaction
6. Streaming Ingest
7. Segment management
8. Query Performance
9. Index Performance test
10. Materialized View Performance test



## Test in local spark

Run following script

```shell
./genenerate_data

./local_script/create_load_table.sh

./local_script/run_carbon_query.sh

./local_script/run_parquet_query.sh
```

## Test in spark cluster

Run following script

```shell
./genenerate_data

./cluster_script/create_load_table.sh

./cluster_script/run_carbon_query.sh

./cluster_script/run_parquet_query.sh

```
