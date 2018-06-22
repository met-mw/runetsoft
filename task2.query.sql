select
	p.id,
	p.name,
	count(pe.id) as progammers_count
from
	projects p
	join project_employees pe on pe.project_id = p.id
	join employees e on e.id = pe.employee_id and e.post_id = 1
group by
	p.id
having
	progammers_count >= 3
