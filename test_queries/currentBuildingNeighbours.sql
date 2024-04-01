-- 2024-04-01
-- Counts current neighbors from one building by counting
-- only the ones with NULL ending_date

SELECT count(*) FROM properties
INNER JOIN neighbors_to_properties
ON neighbors_to_properties.property_id = properties.id
WHERE properties.building_id = 1
AND neighbors_to_properties.ending_date IS NULL;

-- Replace building_id with parameter value!
