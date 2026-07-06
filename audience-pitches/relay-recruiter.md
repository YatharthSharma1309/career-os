# Relay AI — Recruiter Pitch

**Use for:** full-stack / AI integration roles, RAG-focused JDs

## Elevator (30 sec)

I built Relay AI — a unified multi-tenant AI operations platform with two production modules: customer support (document ingestion, streaming RAG chat with citations, agent inbox, tickets, embeddable widget) and recruitment (resume parsing, JD match scoring, hiring pipeline with hire-safety workflow). It's the strongest example of production-style SaaS + LLM integration in my portfolio.

## What to emphasize

| They care about | Your proof |
|-----------------|------------|
| **Experience** | Multi-tenant Clerk orgs, admin + widget surfaces, support + recruitment workflows |
| **Stack** | Next.js 16, TypeScript, Prisma, PostgreSQL, Clerk, OpenRouter, SSE streaming |
| **Teamwork** | Separation of admin auth vs widget visitor tokens; org-scoped data across modules |
| **Problem solving** | RAG at upload time, citation in stream, escalation to tickets, AI resume screening |

## One-liner for resume/cover letter

> Built Relay AI: multi-tenant platform with RAG support (KB, streaming chat, widget) and AI recruitment (resume screening, match scores, hiring pipeline) — Next.js, PostgreSQL, Clerk.

## Demo CTA

Live demo: https://relay-ai-app.vercel.app | Portfolio: https://yatharthsharma.vercel.app | GitHub: https://github.com/YatharthSharma1309/relay-ai

## If they ask "hardest part"

Tenant isolation on every query across support and recruitment modules, plus widget auth (signed visitor sessions) without exposing admin Clerk sessions to end-users.
