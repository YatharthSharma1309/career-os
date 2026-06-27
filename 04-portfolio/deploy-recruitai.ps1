# Deploy RecruitAI to Vercel + Supabase

Run from: `AI Recruitment Assistant/`

## Prerequisites

- Node.js 20+
- Supabase account
- Vercel account linked to GitHub

## Steps

1. Read `VERCEL-DEPLOY.md` in this folder
2. Create Supabase project; copy connection strings and API keys
3. Install Vercel CLI: `npm install -g vercel`
4. Login: `vercel login`
5. From project root:

```powershell
cd "c:\Users\Yatharth\Documents\Personal_Projects\AI Recruitment Assistant"
vercel link
vercel env add DATABASE_URL
vercel env add DIRECT_URL
vercel env add OPENROUTER_API_KEY
vercel env add NEXT_PUBLIC_APP_URL
# ... add remaining vars from VERCEL-DEPLOY.md
vercel --prod
```

6. Run migrations (if not in build):
```powershell
$env:DATABASE_URL="your-pooled-url"
npm run db:migrate:supabase
npm run db:seed
```

7. Update portfolio `.env.local`:
```
NEXT_PUBLIC_DEMO_RECRUITAI_URL=https://your-app.vercel.app
```

## Verify

- Create job → upload PDF → analyze → pipeline status change
