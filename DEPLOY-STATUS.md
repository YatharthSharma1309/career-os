# Deploy Status

**Last updated:** 2026-07-06

## Live URLs

| App | Production URL | Vercel project |
|-----|----------------|----------------|
| Portfolio | https://yatharthsharma.vercel.app | `yatharthsharma` |
| OpsAI | https://support-ai-nine-mu.vercel.app | `support-ai` |

Portfolio flagship card links to OpsAI (support + recruitment modules).

---

## OpsAI — LIVE (public demo mode)

**Database:** Neon project `SupportAI` (`shy-king-36734093`)

**Modules:** `/dashboard` (support) · `/recruitment` (hiring)

**Auth:** `PUBLIC_DEMO_MODE` — Clerk bypassed for demos. Replace with Clerk keys for real multi-tenant production (see `OpsAI/DEPLOY.md`).

### Vercel env (production)

- `DATABASE_URL` (Neon pooled)
- `OPENROUTER_API_KEY`, `OPENROUTER_CHAT_MODEL`
- `PUBLIC_DEMO_MODE=true`, `NEXT_PUBLIC_PUBLIC_DEMO_MODE=true`
- `AUTH_BYPASS=true`, `NEXT_PUBLIC_AUTH_BYPASS=true`
- `DEMO_SEED_SECRET`, `APP_URL`

### Smoke test

- [x] `GET /api/health` OK
- [x] `/dashboard` loads (200)
- [x] `/recruitment` loads (200)
- [x] Recruitment DB migration applied
- [ ] Upload doc + chat with citation (manual verify)
- [ ] Upload resume + analyze on `/recruitment` (manual verify)
- [ ] Widget embed test

---

## Retired

| App | Status | Notes |
|-----|--------|-------|
| RecruitAI | Retired 2026-07-06 | Merged into OpsAI `/recruitment`. GitHub repo archived. Vercel `recruit-ai` removed. |

---

## Portfolio integration

- [x] `NEXT_PUBLIC_DEMO_OPSAI_URL` set (OpsAI live URL)
- [x] `NEXT_PUBLIC_DEMO_RECRUITAI_URL` removed
- [x] Portfolio shows OpsAI flagship card
- [x] GitHub profile README created

---

## Outreach (manual)

- [ ] Record OpsAI Loom (support + recruitment) — [loom-scripts.md](./loom-scripts.md)
- [ ] Execute [linkedin-kit.md](./linkedin-kit.md)
- [ ] Unpin `AI-Recruitment-Assistant` on GitHub if still pinned

---

## Optional upgrades

| Item | When |
|------|------|
| Clerk for OpsAI | Real auth + orgs |
| Widget + KB + recruitment smoke tests on live | Before outreach push |
