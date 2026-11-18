-- FDE Progress: one row per signed-in user and app section.
-- Run this entire file in Supabase Dashboard → SQL Editor → New query.

create table if not exists public.fde_progress (
  user_id uuid not null references auth.users(id) on delete cascade,
  section text not null check (section in ('progress', 'code', 'studio')),
  updated_at bigint not null default 0,
  data jsonb not null default '{}'::jsonb,
  primary key (user_id, section)
);

alter table public.fde_progress enable row level security;

-- Remove broad/default access, then grant only signed-in users the operations
-- required by the app. RLS below limits each user to their own rows.
revoke all on table public.fde_progress from anon, authenticated;
grant select, insert, update, delete on table public.fde_progress to authenticated;

drop policy if exists "FDE progress: read own rows" on public.fde_progress;
create policy "FDE progress: read own rows"
  on public.fde_progress for select to authenticated
  using ((select auth.uid()) = user_id);

drop policy if exists "FDE progress: insert own rows" on public.fde_progress;
create policy "FDE progress: insert own rows"
  on public.fde_progress for insert to authenticated
  with check ((select auth.uid()) = user_id);

drop policy if exists "FDE progress: update own rows" on public.fde_progress;
create policy "FDE progress: update own rows"
  on public.fde_progress for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists "FDE progress: delete own rows" on public.fde_progress;
create policy "FDE progress: delete own rows"
  on public.fde_progress for delete to authenticated
  using ((select auth.uid()) = user_id);

create index if not exists fde_progress_user_id_idx
  on public.fde_progress (user_id);
