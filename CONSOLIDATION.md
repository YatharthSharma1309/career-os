# Project consolidation (2026-07-06)

RecruitAI and SupportAI merged into **Relay AI** — one codebase, one deploy.

| Before | After |
|--------|-------|
| RecruitAI (`AI-Recruitment-Assistant`) | **Merged** into Relay AI `/recruitment` module (repo archived) |
| SupportAI (`relay-ai`, formerly `ai-customer-support-platform`) | **Relay AI** — support module + recruitment module |

## What was merged (code)

- Recruitment Prisma models (`Job`, `Candidate`, `CandidateAnalysis`, `RecruitmentAuditEvent`) — org-scoped
- Services: jobs, candidates, analyze, hire-safety, audit, job-assist
- API routes under `/api/recruitment/*`
- Dashboard UI under `/recruitment/*`
- Demo seed includes sample recruitment job

## Live URLs

- Portfolio: https://yatharthsharma.vercel.app
- Relay AI demo: https://relay-ai-app.vercel.app
  - Support: `/dashboard`, `/knowledge`, `/chat`
  - Recruitment: `/recruitment`

## Manual follow-ups

- [ ] Run `npm run db:migrate:deploy` on Vercel after merge deploy
- [ ] Remove RecruitAI from LinkedIn Featured (if pinned)
- [ ] Unpin `AI-Recruitment-Assistant` on GitHub
- [x] GitHub profile README — https://github.com/YatharthSharma1309/YatharthSharma1309
- [ ] Record Relay AI Loom covering both modules
