# Big Data Coursework Pipeline

Coursework reconstruction of a Hadoop/Hive analysis project for company registration and risk-style data.

## Overview

This repository keeps the materials I could verify from a local Hadoop coursework project: the dataset, final report, dashboard screenshot, and example Hive-style analysis queries. The original VM setup used HDFS, Hive, MySQL, and Sqoop, but the full command scripts were not available as standalone files when this GitHub copy was prepared.

Status: Coursework prototype

The repository should be read as a partial reconstruction, not as a fully reproducible end-to-end data platform.

## Available Materials

- CSV dataset used in the coursework.
- Final report from the Hadoop assignment.
- Dashboard screenshot from the submitted work.
- Example analytics queries for province, ownership, industry, and risk indicators.

## Technologies Covered

- Hadoop HDFS, Hive, Sqoop, and MySQL in the original coursework environment.
- SQL-style aggregation queries in this repository.
- ECharts dashboard is visible only through the submitted screenshot/report, not as full source code here.
- Ubuntu VM on macOS

## Documented Workflow

```mermaid
flowchart LR
    A["CSV dataset"] --> B["HDFS in coursework VM"]
    B --> C["Hive external tables"]
    C --> D["Aggregation queries"]
    D --> E["MySQL export described in report"]
    E --> F["Dashboard screenshot/report"]
```

## Project Structure

```text
data/
  train.csv
docs/
  hadoop-final-report.docx
  dashboard-screenshot.png
sql/
  analysis_queries.sql
```

## Getting Started

This project depends on a Hadoop environment rather than a local Python package. The commands below show the intended direction, but they may need adjustment because the original VM scripts were not recovered.

Expected services:

- Hadoop HDFS
- Hive
- MySQL
- Sqoop

Example local workflow:

```bash
hdfs dfs -mkdir -p /user/bigdata/enterprise_risk
hdfs dfs -put data/train.csv /user/bigdata/enterprise_risk/
hive -f sql/analysis_queries.sql
```

The exact HDFS paths, Hive database name, table DDL, and Sqoop connection string should be adjusted to your local VM setup.

## Results

The final report states that:

- Fujian, Anhui, and Hubei had the highest company counts in the analyzed dataset.
- Private enterprises dominated the dataset.
- Guangdong and Zhejiang showed higher risk index values than most regions.
- Manufacturing, agriculture, and technology-related services were major industries.

These are coursework findings from the local report, not production business claims.

## Current Status

Implemented / available in this cleaned copy:

- Dataset file.
- Final report.
- Dashboard screenshot.
- Example Hive queries aligned with the report.

Missing from the local files I could verify:

- Original Flume configuration files.
- Original Hive table creation scripts.
- Original Sqoop export commands.
- Full dashboard source code for this exact Hadoop project.

## Future Improvements

- Recreate the full Hive DDL file.
- Add Sqoop import/export shell scripts with placeholder credentials.
- Add a smaller public sample dataset.
- Add a `dashboard/` folder if the original source is recovered.
