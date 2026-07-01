# Deploy Status — Week 1 Sprint

**Last updated:** 2026-06-27

## Vercel projects (provisioned)

| App | Vercel project | Dashboard |
|-----|----------------|-----------|
| RecruitAI | `recruit-ai` | https://vercel.com/yatharthsharma1309s-projects/recruit-ai |
| SupportAI | `support-ai` | https://vercel.com/yatharthsharma1309s-projects/support-ai |
| Portfolio | `yatharthsharma` | https://vercel.com/yatharthsharma1309s-projects/yatharthsharma |

Local CLI link: each repo has `.vercel/project.json` after `vercel link`.

## Current blockers

### RecruitAI — **blocked on Supabase**

Production build runs `prisma migrate deploy` (Supabase schema). **Fails without `DATABASE_URL` + `DIRECT_URL` on Vercel.**

Last deploy attempt: failed at migrate step (expected).

**You need:**

1. [Supabase](https://supabase.com) project (free tier)
2. Add env vars on Vercel → recruit-ai → Settings → Environment Variables
3. Redeploy: `npx vercel --prod` from `AI Recruitment Assistant/`

### SupportAI — **blocked on Neon + Clerk**

Build runs `prisma migrate deploy`. **Requires production `DATABASE_URL`, Clerk keys, `OPENROUTER_API_KEY`, `APP_URL`.**

Local `.env` has local Postgres only — no Clerk keys configured.

**You need:**

1. [Neon](https://neon.tech) Postgres (pooled URL)
2. [Clerk](https://clerk.com) production app + webhook secret
3. Env vars on Vercel → support-ai
4. Redeploy + `POST /api/demo/seed`

## After both are live

Set on **portfolio** Vercel project:

```
NEXT_PUBLIC_DEMO_RECRUITAI_URL=https://recruit-ai-xxx.vercel.app
NEXT_PUBLIC_DEMO_SUPPORTAI_URL=https://support-ai-xxx.vercel.app
```

Redeploy portfolio → **View demo** buttons appear.

## Quick env setup (PowerShell)

From repo root, after creating Supabase/Neon/Clerk:

```powershell
# RecruitAI
cd "AI Recruitment Assistant"
npx vercel env add DATABASE_URL production
npx vercel env add DIRECT_URL production
npx vercel env add OPENROUTER_API_KEY production
npx vercel env add NEXT_PUBLIC_APP_URL production
# ... see VERCEL-DEPLOY.md for full list
npx vercel --prod

# SupportAI
cd "AI Customer Support Platform"
npx vercel env add DATABASE_URL production
npx vercel env add NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY production
# ... see DEPLOY.md
npx vercel --prod
```

Or use [vercel-env-setup.ps1](./vercel-env-setup.ps1) as a checklist.

## GitHub ↔ Vercel

CLI reported GitHub connect failed for both new projects. Fix in Vercel dashboard:

**Project → Settings → Git → Connect** `YatharthSharma1309/AI-Recruitment-Assistant` and `ai-customer-support-platform`.

Enables auto-deploy on push after env vars are set.

## Smoke test checklist

### RecruitAI live

- [ ] Create job
- [ ] Upload PDF resume
- [ ] Analyze (OpenRouter key set)
- [ ] Update pipeline status

### SupportAI live

- [ ] Sign up / org
- [ ] Upload FAQ doc
- [ ] Chat with citation
- [ ] Widget embed (optional)

## Portfolio integration

- [ ] Demo env vars set
- [ ] Portfolio redeployed
- [ ] Loom recorded ([loom-demo-scripts.md](./loom-demo-scripts.md))
- [ ] LinkedIn featured updated ([linkedin-kit.md](../02-job-search/linkedin-kit.md))
