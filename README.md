# Insight Timer – Analytics Engineering Case Study

This project simulates an end-to-end analytics engineering workflow for a wellness / meditation app inspired by Insight Timer. It includes:
- A synthetic events dataset
- Three analytics models (session-level, user lifecycle, daily metrics)
- Interpretation of behavioral insights
- Ethical commentary on misleading metrics

The goal is to demonstrate SQL modeling, product sense, and analytical interpretation.

## Repository Structure

data/
  events.csv

models/
  session_level.sql
  user_lifecycle.sql
  daily_metrics.sql

analysis/
  insights.md

## Core Questions Answered

1. What % of new users complete at least one session in their first 7 days?
2. Do long-session users and frequent-short-session users behave differently?
3. Do subscriptions tend to occur before or after 3 completed sessions?
4. Which metric appears “good” but should not be optimized ethically?

## Tools / Assumptions
- SQL dialect: BigQuery-like (standard SQL)
- DBT-inspired modeling structure (but manual)
  - a models folder
  - separate SQL files for each model
  - single-purpose, layered logic
  - clean grain definitions
  - CTEs that mirror DBT’s stg_, int_, dim_, and fact_ thinking
  - no shared state
  - no monolithic queries
- Synthetic dataset designed for reasoning, not statistical significance

