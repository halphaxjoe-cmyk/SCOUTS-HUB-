
## V14.2 FIXED
- Quick Actions: Paramètres is full-width underneath the other buttons.
- Language selector applies Kreyòl / Français / Español across navigation and menu labels.
- New real Settings panel with language, theme, offline and local-data indicators.
- Added lightweight entrance/page/settings animations.
# SCOUT HUB ONLINE — Supabase Edition

SCOUT HUB is a mobile-first Scout management and communication web app.

## Backend
- Supabase Auth
- Supabase PostgreSQL
- Supabase Storage bucket `scout-media`
- Supabase Realtime for messages
- Browser-safe publishable key only

## Offline behavior
Core local data is cached in `localStorage`. Writes that cannot reach Supabase are placed in an outbox and retried when connectivity returns. The service worker caches the local application shell.

## Media
- Images: JPEG/PNG/WEBP up to 5 MB, compressed before upload.
- Voice: browser MediaRecorder; microphone permission is required.
- Private media uses signed Supabase Storage URLs.

## Important
A browser cannot honestly guarantee microphone access or network availability on every device. The app handles denied permissions, offline mode, upload errors, and retries instead of pretending a failed operation succeeded.


## V14 COMPLETE
- Added real local modules for attendance, notes, patrols, richer tasks, skill progress per Scout, badge awarding, active profile selection, and month navigation.
- Backup/restore now covers the expanded local data model.
- Added explicit authenticated grants for newly created Supabase public tables, because current Supabase projects may require explicit Data API exposure.
- Existing V10 media/voice fallback behavior and V12/V13 learning/calendar/announcement features are preserved.

## V15 — Real Task Badge Automation
Run `supabase_v15_badges.sql` after the existing Supabase schema. A completed assigned task automatically creates a task-specific badge with an emoji based on the task text. The badge is persisted in Supabase and linked by `source_task_id`.

## V15.3 Central i18n
The application now uses one central `I18n` service. The selected language is stored in `StorageService.settings().language`, applied globally on refresh, updates `<html lang>` and RTL for Arabic, and is shared by static UI plus generated feature/task interfaces.

Supported languages: Haitian Creole, French, Spanish, English, Simplified Chinese, Traditional Chinese (Taiwan), Japanese, Korean, Portuguese, German, Italian, Russian, Arabic.


## V15.13 notifications + site music
- Announcements create real Supabase notifications for every member linked to an auth user (`members.user_id`) and arrive through Realtime like a message.
- Messages, tasks, activities and badges have notification flows; badges also open a celebration overlay.
- First successful account connection on a device gets a one-time welcome animation.
- Site-hosted music is read from `music/library.json`; add authorized audio files to the site and reference them there. Local user-selected audio remains separate.
- True OS background push while the browser is fully closed still requires a push provider/VAPID backend; the app does not fake that capability.

## V15.14 — Site Music Management
- Site music is loaded from Supabase `music_tracks` in real time-compatible app flow, with JSON fallback.
- Admin/leader can add HTTPS-hosted audio tracks and remove site tracks.
- Local phone audio remains separate from site music.
- Notifications, welcome animation, badge celebration, central i18n and realtime remain preserved.

## V15.14 Final Clean Launch

- The More menu uses one central click router so Badges, Compétences, Tâches, Calendrier and the other feature controls do not fire duplicate handlers.
- Games are preserved and are also available from the More menu.
- GitHub Pages workflow is included at `.github/workflows/deploy-pages.yml`.
- `index.html` is at repository root for direct GitHub Pages deployment.


## V15.14 Pre-installed Scout Music
The site now ships with three original instrumental Scout HUB tracks in `music/`. They are listed in `music/library.json` and can play immediately without adding files from the phone. These tracks are original generated instrumental assets for this project.


### Quick Actions
The home Quick Actions now includes a dedicated 🏅 Badges card alongside Music, Tasks, Lessons, Messages and Settings.
