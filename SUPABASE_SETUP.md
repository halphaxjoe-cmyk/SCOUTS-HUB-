# SUPABASE SETUP — SCOUT HUB FINAL

This package is configured for the Supabase project **Joe**.

## Already configured
- Project URL: `https://rapwjcyjudvbpputwwcu.supabase.co`
- Publishable key: `js/supabase-config.js`
- Auth: Supabase Auth
- Database: PostgreSQL
- Media: private `scout-media` Storage bucket
- Messages: Supabase Realtime
- Security: RLS + Security Advisor checked with 0 security lints at build time

## Run in SPCK / Android
Serve the folder through an HTTP server and open the app over `http://localhost` or your LAN URL. Do not use `file://` because microphone, service worker and module/network behavior varies there.

## First account
Use **Plis → Kont → Kreye kont**. If email confirmation is enabled in Supabase Auth, confirm the email before signing in.

To make an account an admin, run in Supabase SQL Editor:

```sql
update public.profiles set role='admin' where id='YOUR_AUTH_USER_UUID';
update public.members set role='admin' where user_id='YOUR_AUTH_USER_UUID';
```

## Media
Images are compressed and uploaded to the private `scout-media` bucket. Voice notes use `MediaRecorder` and require microphone permission. The database stores the private Storage path and the app generates signed URLs when displaying media.

## Offline
Local changes are cached. Failed remote writes enter an outbox and are retried when the connection returns. The service worker caches the local application shell.

## Security
Never replace the publishable key with a Supabase `service_role` or secret key in this frontend package.
