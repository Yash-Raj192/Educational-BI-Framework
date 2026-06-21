use educational_bi_framework;

-- Use this script to reset all tables before reloading fresh data from Python
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE fact_performance;
TRUNCATE TABLE dim_students;
TRUNCATE TABLE dim_behavior;
TRUNCATE TABLE dim_environment;

SET FOREIGN_KEY_CHECKS = 1;

-- Verification queries
SELECT COUNT(*) FROM dim_students;
SELECT COUNT(*) FROM dim_behavior;
SELECT COUNT(*) FROM dim_environment;
SELECT COUNT(*) FROM fact_performance;
SELECT COUNT(DISTINCT student_id) FROM fact_performance;