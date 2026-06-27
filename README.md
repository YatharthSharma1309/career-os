# Career OS v2.0

Your 90-day job search operating system. Master plan reference: `.cursor/plans/career_os_90-day_ce62d91d.plan.md`

## Quick start

1. **Today:** Revoke GitHub PAT ([SECURITY-AUDIT.md](./SECURITY-AUDIT.md)) + Whilter offboarding ([02-job-search/whilter-offboarding-checklist.md](./02-job-search/whilter-offboarding-checklist.md))
2. **Week 1:** Deploy RecruitAI + SupportAI ([04-portfolio/deploy-checklists.md](./04-portfolio/deploy-checklists.md))
3. **Daily:** Log applications in [02-job-search/job-tracker.csv](./02-job-search/job-tracker.csv)
4. **Sunday:** [07-weekly-reviews/weekly-review-template.md](./07-weekly-reviews/weekly-review-template.md)

## Folder map

| Folder | Purpose |
|--------|---------|
| `01-master-plan.md` | OKRs and tiers |
| `02-job-search/` | Tracker, resumes, targets, templates |
| `03-freelance/` | Packages, proposals, Week 2+ launch |
| `04-portfolio/` | Case studies, Loom scripts, deploy scripts |
| `05-interview-prep/` | STAR stories, system design, DSA log |
| `06-networking/` | Referral list |
| `07-weekly-reviews/` | Sunday reviews |

## After deploying demos

Set on portfolio Vercel:

```
NEXT_PUBLIC_DEMO_RECRUITAI_URL=https://...
NEXT_PUBLIC_DEMO_SUPPORTAI_URL=https://...
```

Redeploy portfolio — project cards show **View demo** automatically.
