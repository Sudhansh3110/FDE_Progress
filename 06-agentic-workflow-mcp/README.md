# Agentic Workflow with MCP

**Days 37–40** · topics: agent, build, sec, api

## Brief
A customer-service agent that looks up orders, drafts replies and requests refunds through a mock CRM exposed as an MCP server, safely.

## Requirements
- [ ] Mock CRM (SQLite) with customers, orders and tickets, including messy data
- [ ] MCP server exposing search_orders, get_order, add_note, request_refund
- [ ] Agent loop with max steps, cost cap, and an escalate_to_human tool
- [ ] Refunds above a limit go to an approval queue enforced in code
- [ ] Guardrails: input injection check, user-scoped data access, output policy check
- [ ] Scenario test suite (15+) including red-team prompts; report miss and false-positive rates
- [ ] Trace of every step; a short design doc explaining workflow vs agent choices

## Stretch goals
- Sub-agent for drafting replies in the customer's tone
- Human approval UI
- Connect the MCP server to Claude Desktop or Claude Code and record a demo

## Deliverable
Repo, test report, design doc, demo video.

## Daily log
Add one line per day you work on this, oldest at the bottom is fine too — just be honest.

- YYYY-MM-DD: what you built today, what you struggled with
