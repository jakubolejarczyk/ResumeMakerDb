-- Migration 8 (down): Add created at and updated at columns for experiences table

ALTER TABLE Experiences
DROP CONSTRAINT df_experiences_created_at;

ALTER TABLE Experiences
DROP COLUMN created_at;

ALTER TABLE Experiences
DROP CONSTRAINT df_experiences_updated_at;

ALTER TABLE Experiences
DROP COLUMN updated_at;