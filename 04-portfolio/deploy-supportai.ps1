# Deploy SupportAI to Vercel + Neon + Clerk

Run from: `AI Customer Support Platform/`

## Prerequisites

- Neon PostgreSQL
- Clerk application
- OpenRouter API key

## Steps

1. Read `DEPLOY.md` in project folder
2. `npm install -g vercel` && `vercel login`
3. From project root:

```powershell
cd "c:\Users\Yatharth\Documents\Personal_Projects\AI Customer Support Platform"
vercel link
# Add env vars per DEPLOY.md
vercel --prod
```

4. Post-deploy:
```powershell
$env:DATABASE_URL="neon-pooled-url"
npm run db:migrate:deploy
```

5. Seed demo via dashboard or:
```powershell
curl -X POST https://YOUR-APP.vercel.app/api/demo/seed -H "Authorization: Bearer YOUR_DEMO_SEED_SECRET"
```

6. Portfolio env:
```
NEXT_PUBLIC_DEMO_SUPPORTAI_URL=https://your-app.vercel.app
```

## Verify

- Sign up → org → upload doc → chat with citation
