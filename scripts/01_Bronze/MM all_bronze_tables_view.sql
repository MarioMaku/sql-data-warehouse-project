
/*
-- ============================================================================== ==
-- All Bronze Tables                                               ==
-- ============================================================================== ==
-- Script Purpose:                                                                --
-- To quick check every single table                                          --
-- ============================================================================== ==
*/



-- ============================================================================== --
-- (1_A) Bronze.crm_cust_info table                                               --
-- ============================================================================== --
   
   SELECT 
        cst_id,                       -- Unique customer ID                 --
        cst_key,                      -- Customer key (business identifier) --
        cst_firstname,                -- Customer first name                --
        cst_lastname,                 -- Customer last name                 --
        cst_marital_status,           -- Marital status (Single, Married, etc.)
        cst_gndr,                     -- Gender information                 --
        cst_create_date               -- Date the record was created        --
   FROM bronze.crm_cust_info




-- ============================================================================== --
-- (2_A) Bronze.crm_prd_info table                                                --
-- ============================================================================== --

    SELECT 
        prd_id,               -- Product ID
        prd_key,              -- Product key (composite identifier)
        prd_nm,               -- Product name
        prd_cost,             -- Cost of the product
        prd_line,             -- Product line (category indicator)
        prd_start_dt,         -- Start date when product became active
        prd_end_dt            -- End date (used for historical data handling)
    FROM bronze.crm_prd_info



-- ============================================================================== --
-- (3_A) Bronze.crm_sales_details table                                           --
-- ============================================================================== --

    SELECT
        sls_ord_num,               -- Sales order number
        sls_prd_key,               -- Product key from CRM
        sls_cust_id,               -- Customer ID
        sls_order_dt,              -- Order date (stored as int format, e.g., YYYYMMDD)
        sls_ship_dt,               -- Shipping date
        sls_due_dt,                -- Due date for payment
        sls_sales,                 -- Sales amount
        sls_quantity,              -- Quantity sold
        sls_price                  -- Unit price
     FROM bronze.crm_sales_details





-- ============================================================================== --
-- (4_A) Bronze.erp_loc_a101 table                                                --
-- ============================================================================== --

    SELECT
        cid,                  -- Customer ID
        cntry                 -- Country
    FROM bronze.erp_loc_a101



-- ============================================================================== --
-- (5_A) Bronze.erp_cust_az12 table                                               --
-- ============================================================================== --

    SELECT 
        cid,                  -- Customer ID
        bdate,                -- Birth date
        gen                   -- Gender
    FROM bronze.erp_cust_az12


-- ============================================================================== --
--  (6_A) bronze.erp_px_cat_g1v2 table  --
-- ============================================================================== --

    SELECT
        id,                     -- Category ID
        cat,                    -- Category name
        subcat,                 -- Subcategory name
        maintenance             -- Maintenance info (flag/description)
    FROM bronze.erp_px_cat_g1v2

-- ============================================================================== --