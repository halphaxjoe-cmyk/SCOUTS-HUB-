# SCOUT HUB — Automatic Badges + Competences Fix

## Root cause fixed
Task completion called `StorageService.update()` which started the Supabase upsert without exposing/awaiting that in-flight request. The next `flush()/hydrate()` could therefore read the database before the task update committed and before the database triggers created the badge/skill.

## Fix
- Track in-flight Supabase writes in `StorageService`.
- `flush()` waits for those writes before hydrating.
- Task reward refresh retries up to 3 times with small delays.
- Database remains canonical: task completion -> DB triggers -> badge + competence.
- No client-side duplicate badge/skill inserts.

## Live Supabase verification
A temporary member + Morse task was inserted and completed in the live project. The database automatically created:
- badge: `📡 Mèt Morse`, linked by `source_task_id`
- competence: `Morse`, progress `25`

Temporary QA data was deleted after the test.
