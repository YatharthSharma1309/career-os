# Career OS v2.0 / YCFS

Your 90-day job search operating system. **Career OS** is the engine; **YCFS** (Yatharth Career & Freelance Studio) is the session vocabulary — same folders, clearer commands.

Master plan: [01-master-plan.md](./01-master-plan.md)

## Quick start

1. **Today:** Revoke GitHub PAT ([SECURITY-AUDIT.md](./SECURITY-AUDIT.md)) + Whilter offboarding ([02-job-search/whilter-offboarding-checklist.md](./02-job-search/whilter-offboarding-checklist.md))
2. **Week 1:** Deploy RecruitAI + SupportAI ([04-portfolio/deploy-checklists.md](./04-portfolio/deploy-checklists.md))
3. **Daily:** Log applications in [02-job-search/job-tracker.csv](./02-job-search/job-tracker.csv)
4. **Sunday:** [07-weekly-reviews/weekly-review-template.md](./07-weekly-reviews/weekly-review-template.md)

## YCFS session commands

Start any Cursor/ChatGPT session with one of these — maps to existing folders:

| Command | Go to |
|---------|--------|
| **YCFS → Portfolio** | [04-portfolio/](./04-portfolio/) — case studies, Loom scripts, deploy |
| **YCFS → Recruiter Kit** | [02-job-search/](./02-job-search/) + [05-interview-prep/](./05-interview-prep/) |
| **YCFS → Client Kit** | [03-freelance/](./03-freelance/) — packages, proposals, [audience-pitches/](./03-freelance/audience-pitches/) |
| **YCFS → Project: RecruitAI** | [recruitai-case-study.md](./04-portfolio/recruitai-case-study.md) + [deploy-recruitai.ps1](./04-portfolio/deploy-recruitai.ps1) |
| **YCFS → Project: SupportAI** | [supportai-case-study.md](./04-portfolio/supportai-case-study.md) + [deploy-supportai.ps1](./04-portfolio/deploy-supportai.ps1) |
| **YCFS → LinkedIn** | [02-job-search/linkedin-kit.md](./02-job-search/linkedin-kit.md) |
| **YCFS → Weekly Review** | [07-weekly-reviews/](./07-weekly-reviews/) |

## Six roles (mental model)

| Role | Career OS home |
|------|----------------|
| Portfolio Architect | `04-portfolio/` |
| Technical Storyteller | `04-portfolio/*-case-study.md` |
| Sales Engineer | `03-freelance/audience-pitches/` |
| Brand Manager | `02-job-search/linkedin-kit.md` |
| Growth Manager | `02-job-search/job-tracker.csv` + weekly reviews |
| Quality gate | Review before publish (resume, posts, proposals) |

**Growth targets:** 50 apps/week, 5 freelance outreaches/week (not 150/70).

## Folder map

| Folder | Purpose |
|--------|---------|
| `01-master-plan.md` | OKRs and tiers |
| `02-job-search/` | Tracker, resumes, LinkedIn kit, targets |
| `03-freelance/` | Packages, proposals, audience pitches |
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
