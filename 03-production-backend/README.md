# Production Backend Service

**Days 23–30** · topics: backend, cloud, craft, sec

## Brief
Wrap your triage logic in a production-style API that a customer's systems can call, and deploy it to the cloud.

## Requirements
- [ ] FastAPI service with Pydantic models: POST /tickets (classify + store), GET /tickets/{id}, GET /stats
- [ ] Postgres via SQLAlchemy with an Alembic migration
- [ ] API-key or JWT authentication; correct 401/403/404/422 responses; JSON error format with request IDs
- [ ] Structured JSON logging and /healthz + /readyz endpoints
- [ ] pytest suite (unit + API tests) running in GitHub Actions on every PR
- [ ] Dockerfile + docker-compose (API, Postgres, Redis)
- [ ] Deployed to a managed container service with secrets in a secrets manager
- [ ] Runbook: deploy, rollback, and 3 alert responses; a STRIDE threat-model table

## Stretch goals
- Redis caching and a background job for slow work
- Terraform for the cloud resources
- Rate limiting per API key

## Deliverable
Live URL, repo, runbook, threat model.

## Daily log
Add one line per day you work on this, oldest at the bottom is fine too — just be honest.

- YYYY-MM-DD: what you built today, what you struggled with
