-- ===================================================================================
-- @file: 0.3.0.2.sql
-- @purpose: tasks
-- @dependencies: 0.3.0.1.sql
-- @description: tasks tables, seeds
-- ===================================================================================
SOURCE db/mysql/job_scheduler/schemas/tasks/tables/table_task_history.sql;
SOURCE db/mysql/job_scheduler/schemas/tasks/tables/table_task_status_types.sql;
SOURCE db/mysql/job_scheduler/schemas/tasks/tables/table_task_types.sql;
SOURCE db/mysql/job_scheduler/schemas/tasks/tables/table_tasks.sql;
COMMIT;
SOURCE db/mysql/job_scheduler/schemas/tasks/seeds/seed_task_status_types.sql;
SOURCE db/mysql/job_scheduler/schemas/tasks/seeds/seed_task_types.sql;
SOURCE db/mysql/job_scheduler/schemas/tasks/seeds/seed_tasks.sql;
COMMIT;