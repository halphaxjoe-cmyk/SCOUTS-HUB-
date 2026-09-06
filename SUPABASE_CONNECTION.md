# Supabase connection

This build targets the Supabase project **Joe**.

- Project URL: `https://rapwjcyjudvbpputwwcu.supabase.co`
- Frontend key: publishable key in `js/supabase-config.js`
- Secret/service_role keys are never included.

## Runtime checks
The header status is based on a real Supabase SDK health check. After sign-in, the app also checks access to the `members` table.

## Message media
Messages use `messages.file_path` for private Storage paths. The UI requests short-lived signed URLs when rendering images/audio, so old signed URLs do not permanently expire inside the database.
