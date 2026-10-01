# Permission-aware RAG Assistant

**Days 34–37** · topics: rag, evals, sec, web

## Brief
Build an assistant that answers questions over a company's policy documents, with citations, where users only see what they're allowed to.

## Requirements
- [ ] At least 20 documents (PDF/Word/web) across 3 departments, including tables and one scanned page
- [ ] Ingestion: parse, structure-aware chunking with section paths, metadata incl. allowed groups; handles updates and deletions
- [ ] Hybrid retrieval (keyword + vector) with optional reranking
- [ ] Answers only from retrieved text, with citations; says when it can't find the answer
- [ ] Group-based permission filtering at retrieval, with automated tests proving no leakage
- [ ] Retrieval eval (recall@5 on 30 questions) and answer eval (faithfulness via a calibrated LLM judge)
- [ ] Tracing with Langfuse or similar; Streamlit or React UI with sources and thumbs up/down

## Stretch goals
- Contextual chunk headers and a comparison of before/after recall
- Hindi questions over English documents
- Redaction of PII before logging

## Deliverable
Live demo, eval report, 3-minute demo video.

## Daily log
Add one line per day you work on this, oldest at the bottom is fine too — just be honest.

- YYYY-MM-DD: what you built today, what you struggled with
