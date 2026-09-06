# Big Data Pipeline

End-to-end coursework project for processing company registration and risk data with the Hadoop ecosystem.

## Overview

This project documents a small-scale big data workflow built in an Ubuntu virtual machine. The pipeline stores raw CSV data in HDFS, processes it with Hive, exports aggregated tables to MySQL through Sqoop, and presents the results in an ECharts dashboard.

Status: Coursework prototype

The final report and dataset were found locally. The original Flume, Hive, and Sqoop command files were not found as standalone scripts, so this repository includes the report, dataset, and example Hive queries that match the documented analysis.

## Features

- Hadoop/HDFS-based raw data storage.
- Hive-style SQL analysis of enterprise registration data.
- Sqoop export step described in the final report.
- ECharts dashboard described and shown in the report screenshot.
- Example analytics queries for province, ownership, industry, and risk indicators.

## Tech Stack

- Hadoop HDFS
- Hive
- Sqoop
- MySQL
- HTML, JavaScript, ECharts
- Ubuntu VM on macOS

## Pipeline

```mermaid
flowchart LR
    A["CSV dataset"] --> B["Flume / ingestion step"]
    B --> C["HDFS"]
    C --> D["Hive external tables"]
    D --> E["Analysis tables"]
    E --> F["Sqoop export"]
    F --> G["MySQL"]
    G --> H["ECharts dashboard"]
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

This project depends on a Hadoop environment rather than a local Python package.

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

The exact HDFS paths, Hive database name, and Sqoop connection string should be adjusted to your local VM setup.

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

