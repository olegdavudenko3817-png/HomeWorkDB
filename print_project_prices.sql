SELECT 
	p.id,
	SUM(w.salary) * DATEDIFF('MONTH, p.start_date, p.finish_date) AS price
FROM project p
JOIN project_worker pw
 	ON p.id = pw.project_id
JOIN worker w
	ON pw.worker_id = w.id
GROUP BY
	p.id,
	p_start_date
	p_finish_date
ORDER BY price DESC