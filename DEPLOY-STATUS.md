# Deploy Status

**Last updated:** 2026-06-27

## Vercel projects

| App | Vercel project | Dashboard |
|-----|----------------|-----------|
| RecruitAI | `recruit-ai` | https://vercel.com/yatharthsharma1309s-projects/recruit-ai |
| SupportAI | `support-ai` | https://vercel.com/yatharthsharma1309s-projects/support-ai |
| Portfolio | `yatharthsharma` | https://vercel.com/yatharthsharma1309s-projects/yatharthsharma |

Each repo has `.vercel/project.json` after `vercel link`.

---

## Blockers

### RecruitAI — Supabase required

Production build runs `prisma migrate deploy`. **Fails without `DATABASE_URL` and `DIRECT_URL` on Vercel.**

**Steps:**

1. Create a [Supabase](https://supabase.com) project (free tier)
2. Add env vars: Vercel → recruit-ai → Settings → Environment Variables  
   Full list: `AI Recruitment Assistant/VERCEL-DEPLOY.md`
3. Redeploy from repo root:

```powershell
cd "AI Recruitment Assistant"
npx vercel --prod
```

### SupportAI — Neon + Clerk required

Build runs `prisma migrate deploy`. **Requires production `DATABASE_URL`, Clerk keys, `OPENROUTER_API_KEY`, and `APP_URL`.**

**Steps:**

1. [Neon](https://neon.tech) Postgres (pooled connection string)
2. [Clerk](https://clerk.com) production app + webhook secret
3. Env vars on Vercel → support-ai  
   Full list: `AI Customer Support Platform/DEPLOY.md`
4. Redeploy, then seed demo data: `POST /api/demo/seed`

```powershell
cd "AI Customer Support Platform"
npx vercel --prod
```

---

## After demos are live

On the **portfolio** Vercel project, set:

```
NEXT_PUBLIC_DEMO_RECRUITAI_URL=https://recruit-ai-xxx.vercel.app
NEXT_PUBLIC_DEMO_SUPPORTAI_URL=https://support-ai-xxx.vercel.app
```

Redeploy portfolio → flagship cards show **Live demo** buttons.

---

## GitHub ↔ Vercel auto-deploy

If GitHub connect failed during CLI setup, fix in Vercel:

**Project → Settings → Git → Connect**

- `YatharthSharma1309/AI-Recruitment-Assistant`
- `YatharthSharma1309/ai-customer-support-platform`

---

## Smoke tests

### RecruitAI

- [ ] Create job posting
- [ ] Upload PDF resume
- [ ] Run AI analysis (OpenRouter key set)
- [ ] Update pipeline status

### SupportAI

- [ ] Sign up / create org
- [ ] Upload knowledge-base document
- [ ] Chat with grounded citation
- [ ] (Optional) Widget embed

---

## Portfolio integration

- [ ] Demo env vars set on portfolio Vercel
- [ ] Portfolio redeployed
- [ ] Loom demos recorded (scripts in [audience-pitches/](./audience-pitches/))
- [ ] LinkedIn featured section updated ([linkedin-kit.md](./linkedin-kit.md))
