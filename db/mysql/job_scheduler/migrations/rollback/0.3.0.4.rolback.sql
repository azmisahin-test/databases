-- ===================================================================================
-- @file: 0.3.0.3.rolback.sql
-- @version: 0.3.0.3
-- ===================================================================================
ALTER TABLE job_service DROP FOREIGN KEY job_service_jobs_FK;
-- ALTER TABLE job_service DROP FOREIGN KEY job_service_services_FK;
ALTER TABLE jobs DROP FOREIGN KEY jobs_job_types_FK;
ALTER TABLE jobs DROP FOREIGN KEY jobs_job_status_types_FK;
ALTER TABLE jobs DROP FOREIGN KEY jobs_job_priority_levels_FK;
ALTER TABLE tasks DROP FOREIGN KEY tasks_task_types_FK;
ALTER TABLE tasks DROP FOREIGN KEY tasks_task_status_types_FK;
ALTER TABLE tasks DROP FOREIGN KEY tasks_jobs_FK;
ALTER TABLE job_history DROP FOREIGN KEY job_history_jobs_FK;
ALTER TABLE job_history DROP FOREIGN KEY job_history_job_status_types_FK;
ALTER TABLE job_history DROP FOREIGN KEY job_history_job_priority_levels_FK;
ALTER TABLE task_history DROP FOREIGN KEY task_history_tasks_FK;
ALTER TABLE task_history DROP FOREIGN KEY task_history_task_status_types_FK;
COMMIT;