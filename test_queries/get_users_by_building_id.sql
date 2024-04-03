SELECT
    users.id AS id,
    people.forename,
    people.surname,
    people.email,
    CONCAT (people.phone_code, ' ', people.phone_number) AS phone,
    properties.floor AS f,
    properties.door AS d,
    users.portrait_url
FROM
    users INNER JOIN people
    ON users.person_dni = people.dni
    INNER JOIN neighbors_to_properties
    ON people.dni = neighbors_to_properties.neighbor_dni
    INNER JOIN properties
    ON neighbors_to_properties.property_id = properties.id
WHERE
    properties.building_id = 1
    AND neighbors_to_properties.ending_date IS NULL;

