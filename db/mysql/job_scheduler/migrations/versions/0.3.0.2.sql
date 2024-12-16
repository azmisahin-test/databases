-- ===================================================================================
-- @file: 0.3.0.1.sql
-- @purpose: jobs
-- @dependencies: 0.2.x.sql
-- @description: jobs tables, seeds
-- ===================================================================================
SOURCE db/mysql/job_scheduler/schemas/jobs/tables/table_job_history.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/tables/table_job_priority_levels.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/tables/table_job_service.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/tables/table_job_status_types.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/tables/table_job_types.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/tables/table_jobs.sql;
COMMIT;
SOURCE db/mysql/job_scheduler/schemas/jobs/seeds/seed_job_priority_levels.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/seeds/seed_job_status_types.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/seeds/seed_job_types.sql;
SOURCE db/mysql/job_scheduler/schemas/jobs/seeds/seed_jobs.sql;
COMMIT;