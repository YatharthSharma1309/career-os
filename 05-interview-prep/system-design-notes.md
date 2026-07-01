# System Design Notes — Interview Prep

## SupportAI: Multi-tenant RAG SaaS

```
Visitor → Widget (API key) → Chat stream API
Admin → Clerk session → Dashboard → Document upload → Chunk + index → RAG retrieve → LLM stream
Escalation → Ticket → Agent inbox → Copilot suggest reply
```

**Key points:**
- Tenant isolation via Clerk org ID on every query
- Widget auth: signed visitor token, rate limits per IP/org
- RAG: chunk at upload, keyword or embedding retrieval, cite sources in stream
- Trade-off: original files not persisted on disk (re-upload to re-index)

## Sales CRM: Auth sessions

- Access JWT (15 min) + httpOnly refresh cookie with rotation
- Reuse detection on refresh token families
- Multi-tenant workspace RBAC (ADMIN / MANAGER / REP)

## RecruitAI: Document + AI pipeline

- Upload PDF/DOCX → extract text → store (local or Supabase private bucket)
- Analyze route: rate-limited, OpenRouter structured JSON output
- Hire workflow: grace period before permanent archive

## General talking points

- Why Postgres over SQLite in production (serverless, concurrency)
- Rate limiting: DB-backed vs Redis (Upstash) at scale
- Never expose LLM keys client-side
