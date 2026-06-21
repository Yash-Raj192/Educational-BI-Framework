use educational_bi_framework;

select risk_category,
count(*) as total_students
from fact_performance
group by risk_category;

select ds.learning_style,
round(avg(fp.performance_index), 2) as avg_performance
from fact_performance fp
join dim_students ds
on fp.student_id = ds.student_id
group by ds.learning_style
order by avg_performance desc;

select db.stress_level,
round(avg(fp.performance_index), 2) as avg_performance
from fact_performance fp
join dim_behavior db
on fp.behavior_id = db.behavior_id
group by db.stress_level
order by avg_performance desc;

select risk_category,
round(avg(engagement_score), 2) as avg_engagement,
round(avg(performance_index), 2) as avg_performance,
count(*) as total_students 
from fact_performance
group by risk_category
order by avg_performance desc;

select 
	case
		when attendance >= 85 then 'High Attendance'
        when attendance >= 70 then 'Medium Attendance'
        else 'Low Attendance'
	end as attendance_category,
	round(avg(performance_index), 2) as avg_performance,
    count(*) as total_students
from fact_performance
group by attendance_category
order by avg_performance desc;

select motivation,
round(avg(performance_index), 2) as avg_performance,
round(avg(engagement_score), 2) as avg_engagement,
count(*) as total_students
from fact_performance fp
join dim_behavior db on fp.behavior_id = db.behavior_id
group by motivation
order by avg_performance desc;

select db.stress_level, db.motivation,
round(avg(fp.performance_index), 2) as avg_performance,
round(avg(fp.engagement_score), 2) as avg_engagement,
count(*) as total_students
from fact_performance fp join dim_behavior db on fp.behavior_id = db.behavior_id
group by db.stress_level, db.motivation
order by avg_performance desc;

select de.edutech,
round(avg(fp.performance_index),2) as avg_performance,
round(avg(fp.exam_score),2) as avg_exam_score
from fact_performance fp
join dim_environment de
on fp.environment_id = de.environment_id
group by de.edutech;