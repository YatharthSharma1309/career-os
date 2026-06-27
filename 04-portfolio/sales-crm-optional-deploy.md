# Sales CRM — Optional Week 3 Deploy

**Prerequisite:** RecruitAI + SupportAI demos live and stable.

## Why deploy

- Highest engineering maturity (3.5/5) — best technical interview depth
- `DEPLOY.md` + `railway.toml` + `render.yaml` already exist

## Steps (summary)

See `../../AI Sales Assistant CRM/DEPLOY.md`

1. Railway: deploy API from `packages/api` with PostgreSQL
2. Vercel: import monorepo, set root to `apps/web`, build per DEPLOY.md
3. Env: `VITE_API_URL`, `FRONTEND_URL`, `CORS_ORIGINS`, `REFRESH_COOKIE_SAME_SITE=none`
4. Seed demo workspace with leads + deals
5. Demo path: CSV import → Kanban drag (no OAuth required for interview)

## Portfolio

```
NEXT_PUBLIC_DEMO_SALES_CRM_URL=https://your-crm.vercel.app
```

## Skip if

- Week 1–2 deploys not done
- Job interviews consuming >25% of time
- Runway requires more application volume instead
