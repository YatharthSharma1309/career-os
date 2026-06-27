# Deploy Checklists (Career OS)

Copy of project deploy runbooks for quick reference during Week 1 sprint.

## RecruitAI

Full guide: `../../AI Recruitment Assistant/VERCEL-DEPLOY.md`

Quick steps:
1. Supabase project + Postgres + Storage bucket `resumes`
2. Vercel import repo + env vars (see VERCEL-DEPLOY.md table)
3. `npm run db:migrate:supabase` + seed
4. Set `NEXT_PUBLIC_DEMO_RECRUITAI_URL` on portfolio

## SupportAI

Full guide: `../../AI Customer Support Platform/DEPLOY.md`

Quick steps:
1. Neon Postgres + Clerk app + webhook
2. Vercel env vars + `npm run db:migrate:deploy`
3. `POST /api/demo/seed` with `DEMO_SEED_SECRET`
4. Set `NEXT_PUBLIC_DEMO_SUPPORTAI_URL` on portfolio

## Sales CRM (Week 3 optional)

Full guide: `../../AI Sales Assistant CRM/DEPLOY.md`

Quick steps:
1. Railway API + PostgreSQL add-on
2. Vercel frontend with monorepo build settings
3. Set `VITE_API_URL` + CORS on API
4. Set `NEXT_PUBLIC_DEMO_SALES_CRM_URL` on portfolio

## One-command helpers (from project roots)

```powershell
# RecruitAI — open deploy doc
Start-Process "../../AI Recruitment Assistant/VERCEL-DEPLOY.md"

# SupportAI
Start-Process "../../AI Customer Support Platform/DEPLOY.md"
```

Install Vercel CLI when ready: `npm i -g vercel` then `vercel login` and `vercel --prod` from each project directory.
