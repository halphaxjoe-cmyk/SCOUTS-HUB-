# SCOUT HUB V15 — REALTIME / SESSION / NOTIFICATIONS / MUSIC

## Added
- Supabase session manager with persisted auth session + auth-state listener.
- Realtime subscriptions for messages, tasks, announcements, badges and notifications.
- Database notifications table with per-user RLS.
- Message recipient notification trigger.
- Browser Notification API permission flow + in-app banner.
- Service worker notification click handling.
- Page-to-page transition animation with reduced-motion support.
- Improved games card styling.
- Scout Music player using audio files selected from the device.
- Music is stopped automatically when entering Lessons.
- Improved browser sound feedback remains lightweight.

## Music rights
Commercial/copyrighted songs are not bundled into this ZIP. The player accepts audio files the user is authorized to use. Browser autoplay restrictions mean audible music cannot be forced to start without a user gesture.

## Push status
Realtime in-app notifications and browser Notification API are implemented. True background Web Push while the app/browser is fully closed still requires a Web Push provider/VAPID server endpoint and secrets; this is intentionally not faked.
