-- This script runs once on first PostgreSQL startup.
-- auth_db is created automatically via POSTGRES_DB env var.
-- We create the remaining service databases here.

CREATE DATABASE orders_db;
CREATE DATABASE wallet_db;
CREATE DATABASE portfolio_db;
