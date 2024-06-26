# End-to-End Azure Data Engineering Project

## Overview

This repository contains a comprehensive end-to-end Azure Data Engineering project, covering the entire data lifecycle from ingestion to reporting. The project utilizes various Azure services and tools to achieve efficient data handling, transformation, and reporting.

## Project Components

### 1. Azure Data Factory

- **Purpose**: Data ingestion from on-premise SQL Server and orchestration of data transformation processes.
- **Features**:
  - Ingestion of raw data from on-premise SQL Server.
  - Orchestration of Azure Databricks notebooks for data transformations.
  - Pipeline scheduling and monitoring.

### 2. Azure Data Lake Storage Gen2

- **Purpose**: Storage solution for data across different stages (Bronze, Silver, Gold).
- **Layers**:
  - **Bronze**: Raw ingested data.
  - **Silver**: Transformed data in delta format.
  - **Gold**: Aggregated data in delta format.

### 3. Azure Databricks

- **Purpose**: Data transformation from Bronze to Silver and from Silver to Gold layers.
- **Features**:
  - Mounting Azure Data Lake Storage using configuration notebooks.
  - Executing data transformation logic using Databricks notebooks.

### 4. Azure Synapse Analytics

- **Purpose**: Loading data from the Gold layer into a serverless SQL pool.
- **Activities**:
  - Creation of views using stored procedures.
  - Data integration and querying capabilities.

### 5. Azure Key Vault

- **Purpose**: Secure storage for credentials and tokens.
- **Usage**:
  - Storing credentials for on-premise SQL Server (source system).
  - Managing Personal Access Tokens (PATs) for Azure Databricks.

### 6. Azure Active Directory (AAD)

- **Purpose**: Security and access control management.
- **Features**:
  - Ensuring secure access to Azure services and resources.
  - Integration with Azure Key Vault for governance.

### 7. Microsoft Power BI

- **Purpose**: Creation of interactive reports and dashboards.
- **Reports**:
  - Customer-Products Analysis.
  - Sales Data Analysis.
- **Integration**: Connecting to Azure Synapse SQL Server for data visualization.

## Use Case

The project's objective is to build an end-to-end solution for data processing and reporting:

- **Data Ingestion**: Retrieve tables from on-premise SQL Server using Azure Data Factory.
- **Data Storage**: Store raw and transformed data in Azure Data Lake Storage Gen2.
- **Data Transformation**: Use Azure Databricks to clean and transform raw data into structured formats.
- **Data Loading**: Load transformed data into Azure Synapse Analytics using serverless SQL pools.
- **Reporting**: Utilize Microsoft Power BI to create insightful reports and dashboards.
- **Governance and Security**: Implement Azure Key Vault for secure credential storage and Azure Active Directory for access control.

## Project Structure

- **/ADF_Pipelines**: Contains Azure Data Factory pipeline definitions.
- **/Databricks_Notebooks**: Includes Databricks notebooks for data transformation tasks.
- **/SQL_Scripts**: Scripts for Azure Synapse Analytics (SQL pool views, stored procedures).
- **/PowerBI_Reports**: Power BI reports for Customer-Products analysis and Sales data analysis.

## Setup Instructions

1. **Azure Services Setup**: Deploy necessary Azure services (Data Factory, Data Lake Storage, Databricks, Synapse Analytics, Key Vault, AAD).
   
2. **Configuration**:
   - Configure Azure Data Factory pipelines for data ingestion and orchestration.
   - Set up Azure Databricks clusters and mount Azure Data Lake Storage.
   - Define views and stored procedures in Azure Synapse Analytics.
   - Configure Power BI to connect with Azure Synapse SQL Server.

3. **Security Setup**:
   - Populate Azure Key Vault with required credentials and tokens.
   - Configure Azure Active Directory for user roles and permissions.

4. **Execution**:
   - Install MS-SQL Server express version on local computer with AdventureWorksLT2022 database.
   - Deploy all the required azure services.
   - Mount ADLS Gen2 storage to databricks using config notebook (required only once).
   - Follow steps to create ADF piplelines for data ingestion (copy all tables)
   - Create databicks notebook for transformations (bronze to silver and silver to gold)
   - Add both the databricks notebooks activity in ADF pipeline.
   - Create views using Azure Synapse Analytics under SQL Serverless pool, stored prcoedure needs to be created here.
   - Run ADF pipeline to load data from source till gold layer, then run synapse prcoedure.
   - Connect Power BI with Azure Syanpse SQL sever and import all the views.
   - Explore the tables,data model and create reports using different visuals.
   - Insert new data in customer table and rerun ADF pipeline using schedule trigger.
   - Refresh Power BI Dashboard to view the changes in reports.
