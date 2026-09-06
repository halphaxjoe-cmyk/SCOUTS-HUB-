SCOUT HUB V15 — REAL TASK BADGES

1. The live Supabase project has been updated.
2. tasks.assigned_member_id now references public.members(id).
3. Completing an assigned task creates exactly one task-specific badge.
4. Badge identity uses source_task_id, so different tasks can award different badges to the same scout.
5. Emoji/title are selected from the task title.
6. Legacy duplicate task-badge triggers were removed.
7. The frontend keeps an optimistic local badge while the task syncs; the canonical remote badge is created by the database trigger.
8. Run supabase_v15_badges.sql on another matching database.
