# SupportAI — Case Study

## Problem

Support teams need AI that answers from *their* docs — with citations, agent handoff, and deflection metrics — not a generic chatbot bolted onto separate ticketing tools.

## Solution

SupportAI is a multi-tenant SaaS: upload knowledge-base documents, stream grounded RAG answers with source citations, escalate to tickets, embed a widget on customer sites, and measure deflection from one dashboard.

## Architecture

```
Admin (Clerk org) → Dashboard → Document upload → Chunk + index
Customer → Widget (API key + visitor token) → Streaming RAG chat
Agent → Inbox / Tickets → AI copilot suggest reply
Analytics → Deflection, helpful rate, knowledge gaps
```

## Key features shipped

- Knowledge base: PDF, DOCX, TXT, Markdown ingestion
- Streaming SSE chat with citations (admin + widget)
- Agent inbox, ticket copilot, help center per org slug
- Embeddable widget with anonymous visitor sessions
- Multi-tenant auth via Clerk organizations
- Rate limiting (Upstash Redis optional)
- Vitest unit tests + Playwright E2E (widget API, smoke)

## Stack

Next.js 16, TypeScript, Prisma 7, PostgreSQL (Neon), Clerk, OpenRouter, Recharts

## Outcome

Strongest "production SaaS + RAG" story in portfolio. Primary freelance package: AI Support Chatbot.

## Links

- GitHub: https://github.com/YatharthSharma1309/ai-customer-support-platform
- Deploy guide: `AI Customer Support Platform/DEPLOY.md`

## Interview talking points

- Tenant isolation via org ID on every query
- Widget auth model (signed visitor tokens)
- Trade-off: keyword fallback when embeddings not configured
