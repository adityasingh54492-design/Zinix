-- ZINX HUB SUPABASE DATABASE SCHEMA
-- Execute this script in your Supabase SQL Editor (https://supabase.com/dashboard/project/_/sql)

-- 1. Create Software Table
CREATE TABLE IF NOT EXISTS public.software (
  id TEXT PRIMARY KEY,
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  shortDescription TEXT NOT NULL,
  fullDescription TEXT,
  category TEXT NOT NULL,
  categoryName TEXT NOT NULL,
  categoryIcon TEXT DEFAULT 'Folder',
  latestVersion TEXT NOT NULL,
  fileSize TEXT NOT NULL,
  installerType TEXT NOT NULL,
  developer TEXT NOT NULL,
  developerUrl TEXT,
  officialDownloadUrl TEXT NOT NULL,
  supportedOs TEXT[] NOT NULL DEFAULT '{"windows"}',
  iconKey TEXT DEFAULT 'box',
  screenshots TEXT[] DEFAULT '{}',
  features TEXT[] DEFAULT '{}',
  systemRequirements JSONB DEFAULT '{}',
  installationSteps TEXT[] DEFAULT '{}',
  releaseDate TEXT,
  downloadsCount BIGINT DEFAULT 0,
  rating NUMERIC(2,1) DEFAULT 4.8,
  isFeatured BOOLEAN DEFAULT FALSE,
  isTrending BOOLEAN DEFAULT FALSE,
  isPopular BOOLEAN DEFAULT FALSE,
  license TEXT DEFAULT 'Free',
  verified BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Create Categories Table
CREATE TABLE IF NOT EXISTS public.categories (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  icon TEXT NOT NULL,
  description TEXT,
  color TEXT
);

-- 3. Create Broken Link Reports Table
CREATE TABLE IF NOT EXISTS public.broken_link_reports (
  id TEXT PRIMARY KEY,
  softwareId TEXT NOT NULL,
  softwareName TEXT NOT NULL,
  reportedUrl TEXT NOT NULL,
  reason TEXT NOT NULL,
  userEmail TEXT,
  status TEXT DEFAULT 'pending',
  createdAt TIMESTAMPTZ DEFAULT NOW()
);

-- 4. Create Download Logs Table
CREATE TABLE IF NOT EXISTS public.download_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  softwareId TEXT NOT NULL,
  softwareName TEXT NOT NULL,
  os TEXT,
  ip_address TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 5. RPC function to increment download counts atomically
CREATE OR REPLACE FUNCTION increment_downloads(app_id TEXT)
RETURNS VOID AS $$
BEGIN
  UPDATE public.software
  SET downloadsCount = downloadsCount + 1
  WHERE id = app_id;
END;
$$ LANGUAGE plpgsql;

-- 6. Row Level Security (RLS)
ALTER TABLE public.software ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.broken_link_reports ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.download_logs ENABLE ROW LEVEL SECURITY;

-- Public can read all software and categories
CREATE POLICY "Public read software" ON public.software FOR SELECT USING (true);
CREATE POLICY "Public read categories" ON public.categories FOR SELECT USING (true);

-- Anyone can submit a broken link report
CREATE POLICY "Public insert reports" ON public.broken_link_reports FOR INSERT WITH CHECK (true);

-- Anyone can insert download log
CREATE POLICY "Public insert download logs" ON public.download_logs FOR INSERT WITH CHECK (true);

-- Authenticated admins can modify software and manage reports
CREATE POLICY "Admins all on software" ON public.software FOR ALL TO authenticated USING (true);
CREATE POLICY "Admins all on categories" ON public.categories FOR ALL TO authenticated USING (true);
CREATE POLICY "Admins all on reports" ON public.broken_link_reports FOR ALL TO authenticated USING (true);

