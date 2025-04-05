select model, type from Product
where model not like '%[^0-9]%' or model not like '%[^A-Z]%'