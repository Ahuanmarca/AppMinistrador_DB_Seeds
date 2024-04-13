TRUNCATE TABLE
    banking_transactions,
    announces,
    incidences,
    owners_to_properties,
    neighbors_to_properties,
    properties,
    buildings,
    users,
    people,
    providers,
    bank_accounts,
    community_fees;

INSERT INTO people(
    id,
    forename,
    surname,
    second_surname,
    email,
    phone_code,
    phone_number,
    birth,
    dni
)
SELECT
    import.master_people.id :: INTEGER,
    import.master_people.forename,
    import.master_people.surname,
    import.master_people.second_surname,
    import.master_people.email,
    import.master_people.phone_code,
    import.master_people.phone_number,
    import.master_people.birth :: DATE,
    import.master_people.dni
FROM import.master_people;

SELECT
    setval('people_id_seq', (SELECT max(id) FROM people) + 1);


INSERT INTO users(
    person_dni,
    username,
    hash,
    is_validated,
    is_system_admin,
    portrait_url
)
SELECT
    import.master_people.dni,
    import.master_people.username,
    import.master_people.hash,
    import.master_people.validated :: BOOLEAN,
    import.master_people.sys_admin :: BOOLEAN,
    import.master_people.portrait_url
FROM import.master_people
WHERE import.master_people.username IS NOT NULL;


INSERT INTO buildings(
    id,
    address_type,
    street_address,
    number,
    district,
    postal_code,
    locality,
    province,
    country,
    admin_dni,
    president_dni,
    build_year,
    floors,
    elevators,
    parking_slots,
    image_url
)
SELECT
    import.master_buildings.id :: INTEGER,
    import.master_buildings.address_type,
    import.master_buildings.street_address,
    import.master_buildings.number,
    import.master_buildings.district,
    import.master_buildings.postal_code,
    import.master_buildings.locality,
    import.master_buildings.province,
    import.master_buildings.country,
    import.master_buildings.admin_dni,
    import.master_buildings.president_dni,
    import.master_buildings.build_year :: INTEGER,
    import.master_buildings.floors :: INTEGER,
    import.master_buildings.elevators :: INTEGER,
    import.master_buildings.parking_slots :: INTEGER,
    import.master_buildings.image_url
FROM import.master_buildings;

SELECT
    setval('buildings_id_seq', (SELECT max(id) FROM buildings) + 1);


INSERT INTO properties(
    id,
    building_id,
    floor,
    door,
    owner_dni
)
SELECT
    import.master_properties.id :: INTEGER,
    import.master_properties.building_id :: INTEGER,
    import.master_properties.floor,
    import.master_properties.door,
    import.master_properties.owner_dni
FROM import.master_properties;

SELECT
    setval('properties_id_seq', (SELECT max(id) FROM properties) + 1);


INSERT INTO neighbors_to_properties(
    property_id,
    neighbor_dni,
    starting_date,
    ending_date
)
SELECT
    import.master_people.residence_id :: INTEGER,
    import.master_people.dni,
    import.master_people.starting_date :: DATE,
    import.master_people.ending_date :: DATE
FROM import.master_people
WHERE import.master_people.residence_id IS NOT NULL;


INSERT INTO owners_to_properties(
    property_id,
    owner_dni
)
SELECT
    import.master_properties.id :: INTEGER,
    import.master_properties.owner_dni
FROM import.master_properties;


INSERT INTO providers(
    id,
    title,
    description,
    category,
    phone_code,
    phone_number,
    email,
    avg_review,
    review_count,
    image_url
)
SELECT
    import.master_providers.id :: INTEGER,
    import.master_providers.title,
    import.master_providers.description,
    import.master_providers.category,
    import.master_providers.phone_code,
    import.master_providers.phone_number,
    import.master_providers.email,
    replace(import.master_providers.avg_review, ',', '') :: DECIMAL(10, 2),
    import.master_providers.review_count :: INTEGER,
    import.master_providers.image_url
FROM import.master_providers;

SELECT
    setval('providers_id_seq', (SELECT max(id) FROM providers) + 1);


INSERT INTO incidences(
    id,
    title,
    description,
    image_url,
    user_dni,
    building_id,
    provider_id,
    date,
    time,
    status,
    category
)
SELECT
    import.master_incidences.id :: INTEGER,
    import.master_incidences.title,
    import.master_incidences.description,
    import.master_incidences.image_url,
    users.person_dni,
    import.master_incidences.building_id :: INTEGER,
    import.master_incidences.provider_id :: INTEGER,
    import.master_incidences.date :: DATE,
    import.master_incidences.time :: TIME,
    import.master_incidences.status,
    import.master_incidences.category
FROM import.master_incidences
    INNER JOIN users
    ON import.master_incidences.user_dni = users.person_dni;

SELECT
    setval('incidences_id_seq', (SELECT max(id) FROM incidences) + 1);


INSERT INTO announces(
    id,
    title,
    description,
    building_id,
    date,
    time
)
SELECT
    import.master_announces.id :: INTEGER,
    import.master_announces.title,
    import.master_announces.description,
    import.master_announces.building_id :: INTEGER,
    import.master_announces.date :: DATE,
    import.master_announces.time :: TIME
FROM import.master_announces;

SELECT
    setval('announces_id_seq', (SELECT max(id) FROM announces) + 1);


INSERT INTO bank_accounts(
    id,
    iban,
    holder,
    bank,
    currency,
    description
)
SELECT
    import.master_bank_accounts.id :: INTEGER,
    import.master_bank_accounts.iban,
    import.master_bank_accounts.holder,
    import.master_bank_accounts.bank,
    import.master_bank_accounts.currency,
    import.master_bank_accounts.description
FROM import.master_bank_accounts;

SELECT
    setval('bank_accounts_id_seq', (SELECT max(id) FROM bank_accounts) + 1);


INSERT INTO banking_transactions(
    id,
    account_id,
    property_id,
    description,
    category,
    date,
    time,
    amount,
    building_id
)
SELECT
    import.master_banking_transactions.id :: INTEGER,
    import.master_banking_transactions.account_id :: INTEGER,
    import.master_banking_transactions.property_id :: INTEGER,
    import.master_banking_transactions.description,
    import.master_banking_transactions.category,
    import.master_banking_transactions.date :: DATE,
    import.master_banking_transactions.time :: TIME,
    replace(import.master_banking_transactions.amount, ',', '') :: DECIMAL(10, 2),
    import.master_banking_transactions.building_id :: INTEGER
FROM import.master_banking_transactions;

SELECT
    setval('banking_transactions_id_seq', (SELECT max(id) FROM banking_transactions) + 1);


INSERT INTO community_fees(
    property_id,
    description,
    building_id,
    property_due,
    due_date
)
SELECT
    import.master_banking_transactions.property_id :: INTEGER,
    import.master_banking_transactions.description,
    import.master_banking_transactions.building_id :: INTEGER,
    replace(import.master_banking_transactions.property_due, ',', '') :: DECIMAL(10, 2),
    import.master_banking_transactions.due_date :: DATE
FROM import.master_banking_transactions
WHERE import.master_banking_transactions.due_date IS NOT NULL;
