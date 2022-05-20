DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- CREATE TYPE employment_status AS ENUM('self-employed', 'employed', 'unemployed'); -- Postgresql

CREATE TABLE users (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY, -- Postgresql
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  -- current_status ENUM('self-employed', 'employed', 'unemployed') -- MySQL
  current_status employment_status --Postgresql
);

CREATE TABLE employers (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL2
      id SERIAL PRIMARY KEY, -- Postgresql
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL3
    id SERIAL PRIMARY KEY, --Postgresql
    user_id INT,
    employer_id INT,
    message TEXT NOT NULL
)