-- This script runs once on first PostgreSQL startup.
-- auth_db is created automatically via POSTGRES_DB env var.
-- postgres-init in docker-compose.yml repeats these idempotently for existing volumes.

SELECT 'CREATE DATABASE orders_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'orders_db')\gexec

SELECT 'CREATE DATABASE wallet_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'wallet_db')\gexec

SELECT 'CREATE DATABASE portfolio_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'portfolio_db')\gexec

SELECT 'CREATE DATABASE market_notifications_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'market_notifications_db')\gexec

SELECT 'CREATE DATABASE price_history_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'price_history_db')\gexec
