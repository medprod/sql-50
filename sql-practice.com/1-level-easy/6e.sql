SELECT pat.first_name, pat.last_name, pro.province_name
FROM patients pat 
INNER JOIN province_names pro
ON pat.province_id = pro.province_id