# FDE Path 45 — my 45-day roadmap and daily build log

> This is a repo which has all my FDE progress and the personal site I made to track and learn.

This repo is two things:

1. **The learning site** (`index.html`) — the same self-hostable copy of [FDE Path 45](.) I use for lessons, questions and daily coding problems. It's live on GitHub Pages at: **https://Sudhansh3110.github.io/FDE_Progress/** (once Pages is turned on — see below).
2. **My actual project work** — one folder per project in the site's Studio. This is where the site's "Build" tab commit link points.

## The 7 projects

| # | Folder | Project |
|---|--------|---------|
| 1 | `01-ticket-triage-cli/` | Ticket Triage CLI |
| 2 | `02-api-db-sync/` | API-to-Database Sync |
| 3 | `03-production-backend/` | Production Backend Service |
| 4 | `04-llm-ticket-classifier/` | LLM Ticket Classifier with Evals |
| 5 | `05-rag-assistant/` | Permission-aware RAG Assistant |
| 6 | `06-agentic-workflow-mcp/` | Agentic Workflow with MCP |
| 7 | `07-capstone-engagement/` | Capstone: Full FDE Engagement |

Each folder has a README with that project's requirements as a checklist and a daily log section.

## The daily habit

Every lesson in the site hands you a small task for one of these folders. The rule I'm holding myself to:

> **No lesson is done until its code is committed here — same day.**

A short workflow that takes under a minute:

```bash
cd FDE_Progress
git pull
# ... do the lesson's build task inside the matching project folder ...
git add -A
git commit -m "P<N>: <what you built> — lesson <lesson title>"
git push
```

Then paste the commit's GitHub URL into the site's Build tab for that lesson (the "Commit, PR or file link" field) — that's what makes the commitment real instead of just a checkbox.

### Keep the streak visible
- `git log --oneline --since=yesterday` — see what you pushed today
- `git log --format='%ad' --date=short | sort -u | tail -10` — your last 10 active days at a glance

If a day has no commit, the honest thing is to leave that day blank in the project README's daily log, not to backdate it.

## Updating the site itself
When I publish a new version of the site from Claude, I replace `index.html` here and push — GitHub Pages picks it up automatically within a minute or two.
