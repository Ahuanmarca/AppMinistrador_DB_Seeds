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
