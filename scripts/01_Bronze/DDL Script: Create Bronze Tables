/*
-- ============================================================================== ==
-- DDL Script: Create Bronze Tables                                               ==
-- ============================================================================== ==
-- Script Purpose:                                                                --
--  This script creates tables in the 'bronze' schema, dropping existing tables   --
--  if they already exist.                                                        --
--  Run this script to re-define the DDL structure of 'bronze' Tables             --
-- ============================================================================== ==
*/






-- ============================================================================== --
-- (1_A) Drop table bronze.crm_cust_info if it already exists                     --
-- ============================================================================== --
   
   IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
        DROP TABLE bronze.crm_cust_info;
    GO

-- ============================================================================== --
-- (1_B) Create bronze.crm_cust_info table to store customer data                 --
-- ============================================================================== --
   
   CREATE TABLE bronze.crm_cust_info 
    (
        cst_id              INT,            -- Unique customer ID                 --
        cst_key             NVARCHAR(50),   -- Customer key (business identifier) --
        cst_firstname       NVARCHAR(50),   -- Customer first name                --
        cst_lastname        NVARCHAR(50),   -- Customer last name                 --
        cst_marital_status  NVARCHAR(50),   -- Marital status (Single, Married, etc.)
        cst_gndr            NVARCHAR(50),   -- Gender information                 --
        cst_create_date     DATE            -- Date the record was created        --
    );
    GO





-- ============================================================================== --
-- (2_A) Drop table bronze.crm_prd_info if it already exists                      --
-- ============================================================================== --

    IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
        DROP TABLE bronze.crm_prd_info;
    GO

-- ============================================================================== --
-- (2_B) Create bronze.crm_prd_info table to store product information            --
-- ============================================================================== --

    CREATE TABLE bronze.crm_prd_info 
    (
        prd_id       INT,            -- Product ID
        prd_key      NVARCHAR(50),   -- Product key (composite identifier)
        prd_nm       NVARCHAR(50),   -- Product name
        prd_cost     INT,            -- Cost of the product
        prd_line     NVARCHAR(50),   -- Product line (category indicator)
        prd_start_dt DATETIME,       -- Start date when product became active
        prd_end_dt   DATETIME        -- End date (used for historical data handling)
    );
    GO






-- ============================================================================== --
-- (3_A) Drop table bronze.crm_sales_details if it already exists                 --
-- ============================================================================== --

    IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
        DROP TABLE bronze.crm_sales_details;
    GO

-- ============================================================================== --
-- (3_B) Create bronze.crm_sales_details table to store sales transactions        --
-- ============================================================================== --

    CREATE TABLE bronze.crm_sales_details 
    (
        sls_ord_num  NVARCHAR(50),   -- Sales order number
        sls_prd_key  NVARCHAR(50),   -- Product key from CRM
        sls_cust_id  INT,            -- Customer ID
        sls_order_dt INT,            -- Order date (stored as int format, e.g., YYYYMMDD)
        sls_ship_dt  INT,            -- Shipping date
        sls_due_dt   INT,            -- Due date for payment
        sls_sales    INT,            -- Sales amount
        sls_quantity INT,            -- Quantity sold
        sls_price    INT             -- Unit price
    );
    GO






-- ============================================================================== --
-- (4_A) Drop table bronze.erp_loc_a101 if it already exists                      --
-- ============================================================================== --

    IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
        DROP TABLE bronze.erp_loc_a101;
    GO

-- ============================================================================== --
-- (4_B) Create bronze.erp_loc_a101 table to store customer location info         --
-- ============================================================================== --

    CREATE TABLE bronze.erp_loc_a101 
    (
        cid    NVARCHAR(50),   -- Customer ID
        cntry  NVARCHAR(50)    -- Country
    );
    GO





-- ============================================================================== --
-- (5_A) Drop table bronze.erp_cust_az12 if it already exists                     --
-- ============================================================================== --

    IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
        DROP TABLE bronze.erp_cust_az12;
    GO

-- ============================================================================== --
-- (5_B) Create bronze.erp_cust_az12 table to store extended customer info        --
-- ============================================================================== --

    CREATE TABLE bronze.erp_cust_az12 
    (
        cid    NVARCHAR(50),   -- Customer ID
        bdate  DATE,           -- Birth date
        gen    NVARCHAR(50)    -- Gender
    );
    GO





-- ============================================================================== --
-- (6_A) Drop table bronze.erp_px_cat_g1v2 if it already exists                   --
-- ============================================================================== --

    IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
        DROP TABLE bronze.erp_px_cat_g1v2;
    GO

-- ============================================================================== --
--  (6_B) Create bronze.erp_px_cat_g1v2 table to store product category mapping   --
-- ============================================================================== --

    CREATE TABLE bronze.erp_px_cat_g1v2 
    (
        id           NVARCHAR(50),   -- Category ID
        cat          NVARCHAR(50),   -- Category name
        subcat       NVARCHAR(50),   -- Subcategory name
        maintenance  NVARCHAR(50)    -- Maintenance info (flag/description)
    );
    GO

-- ============================================================================== --

