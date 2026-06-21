use educational_bi_framework;

create table dim_students (
    student_id int primary key,
    age int,
    gender varchar(20),
    learning_style varchar(20)
);

create table dim_behavior (
    behavior_id int primary key auto_increment,
    study_hours int,
    assignment_completion int,
    discussions int,
    motivation varchar(20),
    stress_level varchar(20)
);

create table dim_environment (
    environment_id int primary key auto_increment,
    internet_access varchar(20),
    online_courses int,
    extracurricular varchar(20),
    edutech varchar(20)
);

create table fact_performance (
    performance_id int primary key auto_increment,
    student_id int,
    behavior_id int,
    environment_id int,
    attendance int,
    exam_score int,
    final_grade varchar(10),
    performance_index float,
    engagement_score float,
    risk_category varchar(20),

    foreign key (student_id) references dim_students(student_id),
    foreign key (behavior_id) references dim_behavior(behavior_id),
    foreign key (environment_id) references dim_environment(environment_id)
);

show tables;

describe dim_students;
describe dim_behavior;
describe dim_environment;
describe fact_performance;

select * from dim_students limit 5;
select * from dim_behavior limit 5;
select * from dim_environment limit 5;
select * from fact_performance limit 5;
