# API-to-Database Sync

**Days 15–20** · topics: api, data, python

## Brief
A customer wants data from a SaaS API landed in a database every day for reporting. Build a reliable sync from a public paginated API into Postgres or SQLite, then answer business questions in SQL.

## Requirements
- [ ] Pick a public API with pagination (GitHub, or any from the public-apis list)
- [ ] Client with timeouts, retries with backoff on 429/5xx, and pagination
- [ ] Idempotent loads: re-running does not duplicate rows (upsert by key)
- [ ] Raw table + cleaned table; bad rows written to a quarantine table
- [ ] 5 SQL queries answering real questions, including one join, one GROUP BY and one window function
- [ ] Data quality report: row counts, nulls, duplicates, quarantined rows
- [ ] Secrets via environment variables; README with a field mapping table

## Stretch goals
- Resume from a checkpoint after a crash
- Schedule with cron or a GitHub Actions workflow
- Model the transforms with dbt or plain SQL files

## Deliverable
Repo, SQL file with answers, one-page data quality report.

## Daily log
Add one line per day you work on this, oldest at the bottom is fine too — just be honest.

- YYYY-MM-DD: what you built today, what you struggled with
