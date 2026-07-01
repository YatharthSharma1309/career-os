# Vercel environment setup checklist
# Run from each project directory after creating Supabase / Neon / Clerk accounts.
# Use: npx vercel env add VARIABLE_NAME production
# Then: npx vercel --prod

Write-Host "=== RecruitAI (Supabase) ===" -ForegroundColor Cyan
Write-Host @"
Required on Vercel project: recruit-ai
  DATABASE_URL          (Supabase pooled, port 6543)
  DIRECT_URL            (Supabase direct, port 5432)
  OPENROUTER_API_KEY
  OPENROUTER_MODEL
  NEXT_PUBLIC_APP_URL   (https://your-recruit-ai.vercel.app)
  STORAGE_PROVIDER=supabase
  SUPABASE_STORAGE_BUCKET=resumes
  NEXT_PUBLIC_SUPABASE_URL
  NEXT_PUBLIC_SUPABASE_ANON_KEY
  SUPABASE_SERVICE_ROLE_KEY
  REQUIRE_AUTH=false    (public demo)
"@

Write-Host "`n=== SupportAI (Neon + Clerk) ===" -ForegroundColor Cyan
Write-Host @"
Required on Vercel project: support-ai
  DATABASE_URL          (Neon pooled + sslmode=require)
  NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY
  CLERK_SECRET_KEY
  CLERK_WEBHOOK_SECRET
  OPENROUTER_API_KEY
  APP_URL               (https://your-support-ai.vercel.app)
  DEMO_SEED_SECRET      (random string for POST /api/demo/seed)
  NEVER set AUTH_BYPASS in production
"@

Write-Host "`n=== Portfolio (after demos live) ===" -ForegroundColor Cyan
Write-Host @"
On Vercel project: yatharthsharma
  NEXT_PUBLIC_DEMO_RECRUITAI_URL
  NEXT_PUBLIC_DEMO_SUPPORTAI_URL
"@

Write-Host "`nCommands:" -ForegroundColor Green
Write-Host "  cd 'AI Recruitment Assistant'; npx vercel env add DATABASE_URL production; npx vercel --prod"
Write-Host "  cd 'AI Customer Support Platform'; npx vercel env add DATABASE_URL production; npx vercel --prod"
Write-Host "`nFull guides: VERCEL-DEPLOY.md and DEPLOY.md in each repo."
