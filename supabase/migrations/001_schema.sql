create table users (
  id uuid primary key default gen_random_uuid(),
  email text unique,
  is_student boolean default false,
  wallet_balance numeric default 0,
  created_at timestamp default now()
);

create table data_plans (
  id uuid primary key default gen_random_uuid(),
  name text,
  base_price numeric,
  markup_price numeric,
  student_price numeric,
  cycle_days int default 28
);

create table subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  plan_id uuid,
  total_price numeric,
  amount_paid numeric default 0,
  status text default 'paying'
);
