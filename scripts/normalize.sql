-- Uncomment DROP TABLE statements if you won't dropdb / createdb on Makefile

-- DROP TABLE IF EXISTS banking_transactions CASCADE;
-- DROP TABLE IF EXISTS bank_accounts CASCADE;
-- DROP TABLE IF EXISTS neighbors_to_properties CASCADE;
-- DROP TABLE IF EXISTS owners_to_properties CASCADE;
-- DROP TABLE IF EXISTS incidences CASCADE;
-- DROP TABLE IF EXISTS properties CASCADE;
-- DROP TABLE IF EXISTS announces CASCADE;
-- DROP TABLE IF EXISTS users CASCADE;
-- DROP TABLE IF EXISTS buildings CASCADE;
-- DROP TABLE IF EXISTS providers CASCADE;
-- DROP TABLE IF EXISTS people CASCADE;


CREATE TABLE people(
    id SERIAL,
    forename VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    second_surname VARCHAR(255),
    email VARCHAR(255),
    phone_code VARCHAR(55),
    phone_number VARCHAR(255),
    birth DATE,
    dni VARCHAR(55) UNIQUE,
    PRIMARY KEY (id)
);


CREATE TABLE users(
    id SERIAL,
    person_dni VARCHAR(255) UNIQUE,
    username VARCHAR(255),
    hash VARCHAR(255),
    is_validated BOOLEAN DEFAULT FALSE,
    is_system_admin BOOLEAN DEFAULT FALSE,
    portrait_url VARCHAR(255),
    PRIMARY KEY (id)
);
ALTER TABLE users ADD CONSTRAINT fk_person_dni
FOREIGN KEY (person_dni) REFERENCES people(dni);


CREATE TABLE buildings(
    id SERIAL,
    address_type VARCHAR(255),
    street_address VARCHAR(255),
    number VARCHAR(255),
    district VARCHAR(255),
    postal_code VARCHAR(255),
    locality VARCHAR(255),
    province VARCHAR(255),
    country VARCHAR(255),
    admin_dni VARCHAR(255),
    president_dni VARCHAR(255),
    build_year INTEGER,
    floors INTEGER,
    elevators INTEGER,
    parking_slots INTEGER,
    image_url VARCHAR(255),
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
ALTER TABLE properties ADD CONSTRAINT dk_owner_dni
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
    PRIMARY KEY (id)
);


CREATE TABLE incidences(
    id SERIAL,
    title TEXT NOT NULL,
    description TEXT,
    image_url TEXT,
    user_dni VARCHAR(255),
    building_id INTEGER,
    provider_id INTEGER,
    date DATE,
    time TIME,
    status VARCHAR(55),
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
    title VARCHAR(255),
    description TEXT,
    building_id INTEGER,
    date DATE,
    time TIME,
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
    PRIMARY KEY (id)
);
ALTER TABLE banking_transactions ADD CONSTRAINT fk_account_id
FOREIGN KEY (account_id) REFERENCES bank_accounts(id);
ALTER TABLE banking_transactions ADD CONSTRAINT fk_property_id
FOREIGN KEY (property_id) REFERENCES properties(id);
