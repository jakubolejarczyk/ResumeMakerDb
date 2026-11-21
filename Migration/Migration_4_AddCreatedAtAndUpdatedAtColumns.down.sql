-- Migration 4 (down): Add created at and updated at columns

-- Users
ALTER TABLE Users
DROP CONSTRAINT df_users_created_at;

ALTER TABLE Users
DROP COLUMN created_at;

ALTER TABLE Users
DROP CONSTRAINT df_users_updated_at;

ALTER TABLE Users
DROP COLUMN updated_at;

-- Links
ALTER TABLE Links
DROP CONSTRAINT df_links_created_at;

ALTER TABLE Links
DROP COLUMN created_at;

ALTER TABLE Links
DROP CONSTRAINT df_links_updated_at;

ALTER TABLE Links
DROP COLUMN updated_at;

-- Resumes
ALTER TABLE Resumes
DROP CONSTRAINT df_resumes_created_at;

ALTER TABLE Resumes
DROP COLUMN created_at;

ALTER TABLE Resumes
DROP CONSTRAINT df_resumes_updated_at;

ALTER TABLE Resumes
DROP COLUMN updated_at;