-- Execute no SQL editor do seu projeto Supabase. RLS protege saves de cada usuário.
create table if not exists public.lauana_saves (
  user_id uuid primary key references auth.users(id) on delete cascade,
  save_data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.lauana_saves enable row level security;
create policy "Users read own progress" on public.lauana_saves for select to authenticated using (auth.uid()=user_id);
create policy "Users create own progress" on public.lauana_saves for insert to authenticated with check (auth.uid()=user_id);
create policy "Users update own progress" on public.lauana_saves for update to authenticated using (auth.uid()=user_id) with check (auth.uid()=user_id);
