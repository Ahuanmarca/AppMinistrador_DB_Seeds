-- Count Neighbours By Building Id and Date(s)
  -- Counts neighbours related to a building
  -- That have a starting_date prior to some date (excluding the ones that joined afterwards)
  -- And that have NULL as ending_date (are still living in the building)

SELECT '2024-01-31' AS "date", count(*) AS "count" FROM properties
INNER JOIN neighbors_to_properties
ON neighbors_to_properties.property_id = properties.id
WHERE properties.building_id = 1
AND neighbors_to_properties.starting_date < '2024-01-31' :: DATE
AND neighbors_to_properties.ending_date IS NULL;
