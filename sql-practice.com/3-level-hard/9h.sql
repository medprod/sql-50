-- Sort the province names in ascending order in such a way that the province 'Ontario' is always on top.

select province_name 
from province_names
ORDER BY IiF(province_name IN('Ontario'),0,1)