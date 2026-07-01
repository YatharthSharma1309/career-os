# SupportAI — Recruiter Pitch

**Use for:** full-stack / AI integration roles, RAG-focused JDs

## Elevator (30 sec)

I built SupportAI — a multi-tenant customer support SaaS with document ingestion, streaming RAG chat with citations, agent inbox, ticket escalation, embeddable widget, and deflection analytics. It's the strongest example of production-style SaaS + LLM integration in my portfolio.

## What to emphasize

| They care about | Your proof |
|-----------------|------------|
| **Experience** | Multi-tenant Clerk orgs, admin + widget surfaces, real product workflows |
| **Stack** | Next.js 16, TypeScript, Prisma, PostgreSQL, Clerk, OpenRouter, SSE streaming |
| **Teamwork** | Separation of admin auth vs widget visitor tokens; rate limits per org/IP |
| **Problem solving** | RAG at upload time (serverless-safe), citation in stream, escalation to tickets |

## One-liner for resume/cover letter

> Built multi-tenant RAG support platform: knowledge-base ingestion, streaming chat with citations, agent inbox, and embeddable widget — Next.js, PostgreSQL, Clerk.

## Demo CTA

Live demo: [portfolio demo URL] | GitHub: https://github.com/YatharthSharma1309/ai-customer-support-platform

## If they ask "hardest part"

Tenant isolation on every query and widget auth (signed visitor sessions) without exposing admin Clerk sessions to end-users.
