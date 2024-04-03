-- Count owners by building id

SELECT count(DISTINCT owners_to_properties.owner_dni)
FROM properties INNER JOIN owners_to_properties
ON owners_to_properties.property_id = properties.id
WHERE properties.building_id = 1;
