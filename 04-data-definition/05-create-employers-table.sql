CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5, 2), -- Approximation 
    yearly_revenue NUMERIC(10,2), -- Exact values
    is_hiring BOOLEAN
);

