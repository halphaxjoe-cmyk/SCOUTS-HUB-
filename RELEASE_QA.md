# SCOUT HUB V15.14 — Final Clean Launch QA

- Package root contains `index.html` (GitHub Pages ready).
- JavaScript syntax checked for every `js/*.js` file.
- Main More-menu controls use a single delegated navigation handler.
- Badges, Skills/Compétences, Tasks, Calendar and Games routes are implemented.
- Games page and Games entry in More menu are preserved.
- Supabase `music_tracks` migration is included and was applied to the configured live project before this release.
- Notifications, realtime, automatic badges/competencies and first-login/badge animations are included.
- `.nojekyll` and GitHub Pages workflow included.

## Known product limits

- Site music library starts empty until authorized audio tracks are added.
- True OS background push while the browser/app is fully closed requires a push provider/VAPID backend; the current system provides realtime/in-app notifications and browser Notification API when available.

## Launch hardening pass — V15.14
- Service worker restricted to safe same-origin asset caching.
- Navigation requests use an offline app-shell fallback only.
- External/API failures are no longer incorrectly replaced by `index.html`.
- PWA manifest updated to V15.14 with scope and install icons.
