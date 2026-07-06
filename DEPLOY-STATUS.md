# Deploy Status

**Last updated:** 2026-07-06

## Live URLs

| App | Production URL | Vercel project |
|-----|----------------|----------------|
| Portfolio | https://yatharthsharma.vercel.app | `yatharthsharma` |
| SupportAI | https://support-ai-nine-mu.vercel.app | `support-ai` |

Portfolio demo env vars — flagship card shows **Live demo** for SupportAI.

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

## Retired

| App | Status | Notes |
|-----|--------|-------|
| RecruitAI | Retired 2026-07-06 | Consolidated into SupportAI as sole flagship SaaS demo. Vercel project `recruit-ai` removed. |

---

## Portfolio integration

- [x] `NEXT_PUBLIC_DEMO_SUPPORTAI_URL` set
- [x] `NEXT_PUBLIC_DEMO_RECRUITAI_URL` removed from Vercel portfolio env
- [x] Portfolio redeployed (RecruitAI card removed)

---

## Outreach (manual)

- [ ] Record SupportAI Loom — [loom-scripts.md](./loom-scripts.md)
- [ ] Execute [linkedin-kit.md](./linkedin-kit.md)
- [ ] Create GitHub profile README — [GITHUB_PROFILE.md](./GITHUB_PROFILE.md)

---

## Optional upgrades

| Item | When |
|------|------|
| Clerk for SupportAI | Real auth + orgs |
| Widget + KB smoke tests on live | Before outreach push |
