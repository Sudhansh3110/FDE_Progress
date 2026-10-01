# LLM Ticket Classifier with Evals

**Days 31–34** · topics: llm, build, evals

## Brief
Replace keyword rules with an LLM classifier that returns validated structured output, and prove it's better with evals.

## Requirements
- [ ] Golden set of at least 50 labelled tickets (10 hard, 5 adversarial, 5 'other/unknown')
- [ ] Prompt with role, categories, rules for uncertainty, and examples; stored in a versioned file
- [ ] Structured output validated with Pydantic; retry once then fall back to 'other' + review flag
- [ ] Eval script reporting accuracy and per-category precision/recall; baseline vs keyword rules
- [ ] Model bake-off: 2 models compared on accuracy, p95 latency and cost per 1,000 tickets
- [ ] Logs model, prompt version, tokens and latency per call
- [ ] Endpoint added to your Project 3 service behind a feature flag

## Stretch goals
- Eval job in CI with a pass threshold
- Batch mode for a backlog using a batch API
- Routing: small model first, larger model when confidence is low

## Deliverable
Eval report (table + 5 failure analyses) and a 1-paragraph model recommendation.

## Daily log
Add one line per day you work on this, oldest at the bottom is fine too — just be honest.

- YYYY-MM-DD: what you built today, what you struggled with
