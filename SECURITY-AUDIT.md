# Security Audit — Jun 27, 2026

## Completed

- [x] **Arena Shooter Game** — git remote URL scrubbed (PAT removed from `origin`)
  - Was: `https://YatharthSharma1309:gho_***@github.com/...`
  - Now: `https://github.com/YatharthSharma1309/arena-deathmatch.git`

## Action required (you must do manually)

- [ ] **Revoke the exposed GitHub PAT** at https://github.com/settings/tokens
  - The token was embedded in the Arena Shooter remote. Treat it as compromised even after URL fix.
  - Create a new token only if needed; prefer SSH or Git Credential Manager.

## Scanned — no other PATs in `.git/config`

All other project remotes use clean HTTPS URLs without embedded credentials.

## `.env` files with API keys (local only — never commit)

These files exist locally and are gitignored. Do not commit or share:

- `yatharth-portfolio/.env.local`
- `AI Customer Support Platform/.env`
- `AI Recruitment Assistant/.env`

Before any public deploy, rotate OpenRouter keys if they were ever exposed.

## Pre-deploy checklist

1. Confirm `.env` is in `.gitignore` for every project
2. Use platform env vars (Vercel, Supabase, Neon, Clerk) — never commit secrets
3. Run `git log -p` search for accidental key commits if concerned
