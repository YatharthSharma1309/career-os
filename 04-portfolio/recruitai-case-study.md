# RecruitAI — Case Study

## Problem

Recruiters screening dozens of resumes per role waste hours on manual PDF review and inconsistent JD matching. Spreadsheets and gut feel do not scale.

## Solution

RecruitAI is a recruiter dashboard that ingests PDF/DOCX resumes, extracts skills, scores candidates against a job description, surfaces skill gaps, and generates interview questions — powered by server-side LLM calls (OpenRouter).

## Architecture

```
Recruiter UI (Next.js)
  → API routes (upload, analyze, pipeline)
  → Prisma + Postgres (Supabase in production)
  → OpenRouter (structured JSON analysis)
  → Private resume storage (local or Supabase bucket)
```

## Key features shipped

- Job CRUD and candidate pipeline (`new` → `hired` / `rejected` / `archived`)
- PDF/DOCX parsing with manual text fallback
- Rate-limited upload and analyze endpoints
- Hire-safety grace window before permanent archive
- Optional Supabase Auth for production
- Integration and unit tests + Playwright smoke tests

## Stack

Next.js 16, React 19, TypeScript, Tailwind v4, Prisma, OpenRouter, Supabase (production path)

## Outcome

End-to-end recruiter workflow demo suitable for portfolio and freelance "resume screening tool" package. Deployed demo: set `NEXT_PUBLIC_DEMO_RECRUITAI_URL` on portfolio.

## Links

- GitHub: https://github.com/YatharthSharma1309/AI-Recruitment-Assistant
- Deploy guide: `AI Recruitment Assistant/VERCEL-DEPLOY.md`

## Interview talking points

- Why server-side LLM keys only
- Structured JSON validation from LLM output
- Sensitive data handling for resumes (private storage, audit events)
