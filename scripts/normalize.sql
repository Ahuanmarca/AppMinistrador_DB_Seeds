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
