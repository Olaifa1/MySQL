-- select *
-- from SKU_DATA
-- where Buyer IN ('Nancy Meyers');

-- use cape_codd
		--	use cape_codd
			select SKU, SKU_Description, Department
			from CATALOG_SKU_2017
			where SKU in 
			(select SKU 
			from CATALOG_SKU_2018);
            
            select COUNT(SKU) AS count, SKU_Description, Department
			from CATALOG_SKU_2017
			where SKU in 
			(select SKU 
			from CATALOG_SKU_2018);
           
			select SKU, SKU_Description, Department
			from CATALOG_SKU_2017
			EXCEPT
			select SKU, SKU_Description, Department
			FROM CATALOG SKU 2018;
            
            select SKU, SKU_Description, Department
			from CATALOG_SKU_2017
			where sku not in(
				select SKU 
				from CATALOG_SKU_2018);