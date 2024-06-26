DROP TABLE IF EXISTS import.master_people;
DROP TABLE IF EXISTS import.master_buildings;
DROP TABLE IF EXISTS import.master_properties;
DROP TABLE IF EXISTS import.master_providers;
DROP TABLE IF EXISTS import.master_incidences;
DROP TABLE IF EXISTS import.master_announces;
DROP TABLE IF EXISTS import.master_bank_accounts;
DROP TABLE IF EXISTS import.master_banking_transactions;
DROP SCHEMA IF EXISTS import;

DROP TABLE IF EXISTS community_fees CASCADE;
DROP TABLE IF EXISTS banking_transactions CASCADE;
DROP TABLE IF EXISTS bank_accounts CASCADE;
DROP TABLE IF EXISTS neighbors_to_properties CASCADE;
DROP TABLE IF EXISTS owners_to_properties CASCADE;
DROP TABLE IF EXISTS incidences CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS announces CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS buildings CASCADE;
DROP TABLE IF EXISTS providers CASCADE;
DROP TABLE IF EXISTS people CASCADE;
CREATE SCHEMA import;

CREATE TABLE import.master_people(
    id TEXT,
    forename TEXT,
    surname TEXT,
    second_surname TEXT,
    email TEXT,
    phone_code TEXT,
    phone_number TEXT,
    birth TEXT,
    dni TEXT,
    building_id TEXT,
    residence_id TEXT,
    username TEXT,
    password TEXT,
    hash TEXT,
    validated TEXT,
    sys_admin TEXT,
    portrait_url TEXT,
    starting_date TEXT,
    ending_date TEXT
);


CREATE TABLE import.master_buildings(
    id TEXT,
    address_type TEXT,
    street_address TEXT,
    number TEXT,
    district TEXT,
    postal_code TEXT,
    locality TEXT,
    province TEXT,
    country TEXT,
    admin_dni TEXT,
    president_dni TEXT,
    build_year TEXT,
    floors TEXT,
    elevators TEXT,
    parking_slots TEXT,
    image_url TEXT
);


CREATE TABLE import.master_properties(
    id TEXT,
    building_id TEXT,
    floor TEXT,
    door TEXT,
    owner_dni TEXT
);


CREATE TABLE import.master_providers(
    id TEXT,
    title TEXT,
    description TEXT,
    category TEXT,
    phone_code TEXT,
    phone_number TEXT,
    email TEXT,
    avg_review TEXT,
    review_count TEXT,
    image_url TEXT
);


CREATE TABLE import.master_incidences(
    id TEXT,
    title TEXT,
    description TEXT,
    image_url TEXT,
    user_dni TEXT,
    building_id TEXT,
    provider_id TEXT,
    date TEXT,
    time TEXT,
    status TEXT,
    category TEXT
);


CREATE TABLE import.master_announces(
    id TEXT,
    title TEXT,
    description TEXT,
    building_id TEXT,
    date TEXT,
    time TEXT
);


CREATE TABLE import.master_bank_accounts(
    id TEXT,
    iban TEXT,
    holder TEXT,
    bank TEXT,
    currency TEXT,
    description TEXT
);


CREATE TABLE import.master_banking_transactions(
    id TEXT,
    account_id TEXT,
    property_id TEXT,
    description TEXT,
    category TEXT,
    date TEXT,
    time TEXT,
    amount TEXT,
    building_id TEXT,
    property_due TEXT,
    due_date TEXT
);
COPY import.master_people FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/people.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_buildings FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/buildings.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_properties FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/properties.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_providers FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/providers.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_incidences FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/incidences.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_announces FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/announces.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_bank_accounts FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/bank_accounts.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_banking_transactions FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/banking_transactions_building_1.csv' WITH DELIMITER ',' HEADER CSV;
COPY import.master_banking_transactions FROM '/Users/renzobelon/Desktop/repositories/AppMinistrador/AppMinistrador_DBSeeds/data/banking_transactions_building_2.csv' WITH DELIMITER ',' HEADER CSV;
CREATE TABLE people(
    id SERIAL,
    forename VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    second_surname VARCHAR(255),
    email VARCHAR(255),
    -- phone can be null for people, but not for users
    -- should users table have it's own phone field?
    phone_code VARCHAR(55),
    phone_number VARCHAR(255),
    birth DATE,
    dni VARCHAR(55) UNIQUE,
    PRIMARY KEY (id)
);


CREATE TABLE users(
    id SERIAL,
    person_dni VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(255) NOT NULL,
    hash TEXT NOT NULL,
    is_validated BOOLEAN DEFAULT FALSE NOT NULL,
    is_system_admin BOOLEAN DEFAULT FALSE NOT NULL,
    portrait_url VARCHAR(255),
    PRIMARY KEY (id)
);
ALTER TABLE users ADD CONSTRAINT fk_person_dni
FOREIGN KEY (person_dni) REFERENCES people(dni);


CREATE TABLE buildings(
    id SERIAL,
    address_type VARCHAR(255) NOT NULL,
    street_address VARCHAR(255) NOT NULL,
    number VARCHAR(255) NOT NULL,
    district VARCHAR(255) NOT NULL,
    postal_code VARCHAR(255) NOT NULL,
    locality VARCHAR(255) NOT NULL,
    province VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    admin_dni VARCHAR(255) NOT NULL,
    president_dni VARCHAR(255) NOT NULL,
    build_year INTEGER NOT NULL,
    floors INTEGER NOT NULL,
    elevators INTEGER NOT NULL,
    parking_slots INTEGER NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE buildings ADD CONSTRAINT fk_admin_dni
FOREIGN KEY (admin_dni) REFERENCES people(dni);
ALTER TABLE buildings ADD CONSTRAINT fk_president_dni
FOREIGN KEY (president_dni) REFERENCES people(dni);


CREATE TABLE properties(
    id SERIAL,
    building_id INTEGER,
    floor VARCHAR(55),
    door VARCHAR(55),
    owner_dni VARCHAR(55),
    PRIMARY KEY (id)
);
ALTER TABLE properties ADD CONSTRAINT fk_building_id
FOREIGN KEY (building_id) REFERENCES buildings(id);
ALTER TABLE properties ADD CONSTRAINT fk_owner_dni
FOREIGN KEY (owner_dni) REFERENCES people(dni);


CREATE TABLE neighbors_to_properties(
    id SERIAL,
    property_id INTEGER,
    neighbor_dni VARCHAR(55),
    starting_date DATE,
    ending_date DATE,
    PRIMARY KEY (id, property_id, neighbor_dni)
);
ALTER TABLE neighbors_to_properties ADD CONSTRAINT fk_property_id
FOREIGN KEY (property_id) REFERENCES properties(id);
ALTER TABLE neighbors_to_properties ADD CONSTRAINT fk_neighbor_dni
FOREIGN KEY (neighbor_dni) REFERENCES people(dni);


CREATE TABLE owners_to_properties(
    property_id INTEGER,
    owner_dni VARCHAR(55),
    PRIMARY KEY (property_id, owner_dni)
);
ALTER TABLE owners_to_properties ADD CONSTRAINT fk_property_id
FOREIGN KEY (property_id) REFERENCES properties(id);
ALTER TABLE owners_to_properties ADD CONSTRAINT fk_owner_dni
FOREIGN KEY (owner_dni) REFERENCES people(dni);


CREATE TABLE providers(
    id SERIAL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    category VARCHAR(255),
    phone_code VARCHAR(55) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    avg_review DECIMAL(10, 2),
    review_count INTEGER,
    image_url TEXT,
    PRIMARY KEY (id)
);


CREATE TABLE incidences(
    id SERIAL,
    title TEXT NOT NULL NOT NULL,
    description TEXT,
    image_url TEXT,
    user_dni VARCHAR(255) NOT NULL,
    building_id INTEGER NOT NULL,
    provider_id INTEGER,
    date DATE NOT NULL,
    time TIME NOT NULL,
    status VARCHAR(55) NOT NULL,
    category VARCHAR(55) NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE incidences ADD CONSTRAINT fk_user_dni
FOREIGN KEY (user_dni) REFERENCES users(person_dni);
ALTER TABLE incidences ADD CONSTRAINT fk_building_id
FOREIGN KEY (building_id) REFERENCES buildings(id);
ALTER TABLE incidences ADD CONSTRAINT fk_provider_id
FOREIGN KEY (provider_id) REFERENCES providers(id);


CREATE TABLE announces(
    id SERIAL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    building_id INTEGER NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE announces ADD CONSTRAINT fk_building_id
FOREIGN KEY (building_id) REFERENCES buildings(id);


CREATE TABLE bank_accounts(
    id SERIAL,
    iban VARCHAR(255),
    holder VARCHAR(255),
    bank VARCHAR(255),
    currency VARCHAR(55),
    description TEXT,
    PRIMARY KEY (id)
);


CREATE TABLE banking_transactions(
    id SERIAL,
    account_id INTEGER,
    property_id INTEGER,
    description TEXT,
    category VARCHAR(255),
    date DATE,
    time TIME,
    amount DECIMAL(10, 2),
    building_id INTEGER,
    PRIMARY KEY (id)
);
ALTER TABLE banking_transactions ADD CONSTRAINT fk_account_id
FOREIGN KEY (account_id) REFERENCES bank_accounts(id);
ALTER TABLE banking_transactions ADD CONSTRAINT fk_property_id
FOREIGN KEY (property_id) REFERENCES properties(id);
ALTER TABLE banking_transactions ADD CONSTRAINT fk_building_id
FOREIGN KEY (building_id) REFERENCES buildings(id);


CREATE TABLE community_fees(
    id SERIAL,
    property_id INTEGER,
    description TEXT,
    building_id INTEGER,
    property_due DECIMAL(10, 2),
    due_date DATE,
    PRIMARY KEY (id)
);
ALTER TABLE community_fees ADD CONSTRAINT fk_property_id
FOREIGN KEY (property_id) REFERENCES properties(id);
ALTER TABLE community_fees ADD CONSTRAINT fk_building_id
FOREIGN KEY (building_id) REFERENCES buildings(id);
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
