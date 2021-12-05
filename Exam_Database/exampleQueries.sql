select <column_name> from <table_name>
	select contact_last_name from contacts c //shows only one columns
	select * from contacts c //shows all columns
	
select <column_name> from <table_name> where <desired_column_name> = ''
	select * from contacts c where contact_first_name = 'James' // shows all columns of only James
	
select distinct <column_name> from <table_name> where <desired_column_name> = ''
	select distinct population_code from populations p2 

select count(<column_name>) from <table_name>
	select count(student_epita_email) from students s  
select student_epita_email, student_enrollment_status,student_population_period_ref  from students s where student_enrollment_status = 'completed' and student_population_period_ref = 'FALL'
select student_epita_email, student_enrollment_status from students s where student_enrollment_status = 'completed' or student_enrollment_status = 'selected'

select * from contacts c where contact_city ilike 'chicago' select contact_first_name from contacts c where contact_first_name like 'A%'

SELECT grade_student_epita_email_ref, grade_score, RANK() OVER (partition by grade_student_epita_email_ref order by grade_score desc ) FROM grades

select count(student_epita_email) from students where student_population_period_ref like 'F%' group by student_population_period_ref

select count(student_epita_email) as total_students from students s where student_enrollment_status='selected' group by student_enrollment_status

-- Calculate avg marks of a particular student
SELECT AVG(something) as Average_marks
FROM (SELECT grade_score as something FROM grades g where grade_student_epita_email_ref='simona.morasca@epita.fr') MyAliasTable
