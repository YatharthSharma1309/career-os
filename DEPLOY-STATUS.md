# Deploy Status

**Last updated:** 2026-07-01

## Live URLs

| App | Production URL | Vercel project |
|-----|----------------|----------------|
| Portfolio | https://yatharthsharma.vercel.app | `yatharthsharma` |
| RecruitAI | https://recruit-ai-blush-beta.vercel.app | `recruit-ai` |
| SupportAI | https://support-ai-nine-mu.vercel.app | `support-ai` |

Portfolio demo env vars are set — flagship cards show **Live demo** buttons.

---

## RecruitAI — LIVE

**Database:** Prisma Postgres (`db.prisma.io`) — claim to make permanent:  
https://create-db.prisma.io/claim?projectID=proj_cmr25sglh2awr0vf8p5rbfjl5

**Storage:** Local `/tmp` on Vercel (ephemeral). For reliable PDF uploads, migrate to Supabase Storage per `AI Recruitment Assistant/VERCEL-DEPLOY.md`.

### Smoke test

- [x] Homepage loads (200)
- [x] Production deploy succeeded
- [x] DB migrated + seeded
- [ ] Upload PDF on live (verify OpenRouter analyze)
- [ ] Claim Prisma Postgres database (manual — prevents 24h expiry)

---

## SupportAI — LIVE (public demo mode)

**Database:** Neon project `SupportAI` (`shy-king-36734093`)

**Auth:** `PUBLIC_DEMO_MODE` — Clerk bypassed for recruiter demos. Replace with Clerk keys for real multi-tenant production (see `DEPLOY.md`).

### Vercel env (production)

- `DATABASE_URL` (Neon pooled)
- `OPENROUTER_API_KEY`, `OPENROUTER_CHAT_MODEL`
- `PUBLIC_DEMO_MODE=true`, `NEXT_PUBLIC_PUBLIC_DEMO_MODE=true`
- `AUTH_BYPASS=true`, `NEXT_PUBLIC_AUTH_BYPASS=true`
- `DEMO_SEED_SECRET`, `APP_URL`

### Smoke test

- [x] `GET /api/health` OK
- [x] `/dashboard` loads (200)
- [x] Demo data seeded
- [ ] Upload doc + chat with citation (manual verify)
- [ ] Widget embed test

---

## Portfolio integration

- [x] `NEXT_PUBLIC_DEMO_RECRUITAI_URL` set
- [x] `NEXT_PUBLIC_DEMO_SUPPORTAI_URL` set
- [x] Portfolio redeployed

---

## Outreach (manual)

- [ ] Record Looms — [loom-scripts.md](./loom-scripts.md)
- [ ] Execute [linkedin-kit.md](./linkedin-kit.md)
- [ ] Create GitHub profile README — [GITHUB_PROFILE.md](./GITHUB_PROFILE.md)

---

## Optional upgrades

| Item | When |
|------|------|
| Supabase for RecruitAI storage | Reliable PDF upload in prod |
| Clerk for SupportAI | Real auth + orgs |
| Claim Prisma DB or move to Supabase Postgres | Before DB expires |
