SELECT
a.*,
u.*,
c.gender, c.age, c.num_dependents,
s.status,
ct.city, ct.population

FROM account AS a

INNER JOIN account_usage AS u
	ON a.account_id = u.account_id
INNER JOIN churn_status AS s
	ON a.customer_id = s.customer_id
INNER JOIN customer AS c
	ON a.customer_id = c.customer_id
INNER JOIN city as ct
	ON c.zip_code = ct.zip_code;
