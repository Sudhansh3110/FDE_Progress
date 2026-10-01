# Ticket Triage CLI

**Days 7–10** · topics: python, craft

## Brief
A support team exports tickets as a CSV every morning. Build a command-line tool that reads the file, cleans it, categorises each ticket with keyword rules, and prints a summary report.

## Requirements
- [ ] Reads tickets.csv (id, created_at, customer, subject, body) with at least 50 realistic rows you create, including messy ones
- [ ] Normalises text (trim, lowercase) and skips/flags rows with missing fields
- [ ] Categorises into billing / technical / account / other using keyword rules in a dict
- [ ] Prints counts per category, the 5 most common words, and tickets per day
- [ ] Code split into functions; at least 8 pytest tests
- [ ] Git repo with meaningful commits and a README (how to run, example output)

## Stretch goals
- Accept command-line arguments (argparse) for input file and output format
- Write results to a new CSV with the category column
- Add type hints and run ruff

## Deliverable
GitHub repo + README with a screenshot of the report.

## Daily log
Add one line per day you work on this, oldest at the bottom is fine too — just be honest.

- YYYY-MM-DD: what you built today, what you struggled with
