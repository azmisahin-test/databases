-- ===================================================================================
-- @file: 0.3.0.3.sql
-- @purpose: job_service
-- @dependencies: 0.3.0.2.sql
-- @description: FOREIGN KEY
-- ===================================================================================
ALTER TABLE job_service ADD CONSTRAINT job_service_jobs_FK FOREIGN KEY (job_id) REFERENCES jobs(job_id);
-- ALTER TABLE job_service ADD CONSTRAINT job_service_services_FK FOREIGN KEY (service_id) REFERENCES services(service_id);
ALTER TABLE jobs ADD CONSTRAINT jobs_job_types_FK FOREIGN KEY (job_type_id) REFERENCES job_types(job_type_id);
ALTER TABLE jobs ADD CONSTRAINT jobs_job_status_types_FK FOREIGN KEY (job_status_type_id) REFERENCES job_status_types(job_status_type_id);
ALTER TABLE jobs ADD CONSTRAINT jobs_job_priority_levels_FK FOREIGN KEY (job_priority_level_id) REFERENCES job_priority_levels(job_priority_level_id);
ALTER TABLE tasks ADD CONSTRAINT tasks_task_types_FK FOREIGN KEY (task_type_id) REFERENCES task_types(task_type_id);
ALTER TABLE tasks ADD CONSTRAINT tasks_task_status_types_FK FOREIGN KEY (task_status_type_id) REFERENCES task_status_types(task_status_type_id);
ALTER TABLE tasks ADD CONSTRAINT tasks_jobs_FK FOREIGN KEY (job_id) REFERENCES jobs(job_id);
ALTER TABLE job_history ADD CONSTRAINT job_history_jobs_FK FOREIGN KEY (job_id) REFERENCES jobs(job_id);
ALTER TABLE job_history ADD CONSTRAINT job_history_job_status_types_FK FOREIGN KEY (job_status_type_id) REFERENCES job_status_types(job_status_type_id);
ALTER TABLE job_history ADD CONSTRAINT job_history_job_priority_levels_FK FOREIGN KEY (job_priority_level_id) REFERENCES job_priority_levels(job_priority_level_id);
ALTER TABLE task_history ADD CONSTRAINT task_history_tasks_FK FOREIGN KEY (task_id) REFERENCES tasks(task_id);
ALTER TABLE task_history ADD CONSTRAINT task_history_task_status_types_FK FOREIGN KEY (task_status_type_id) REFERENCES task_status_types(task_status_type_id);

COMMIT;