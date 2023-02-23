/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL,
    name varchar(100),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal,
);

ALTER TABLE animals ADD species varchar(50);

CREATE TABLE owners(
	id SERIAL,
	full_name varchar(100),
	age integer,
    PRIMARY KEY(id)
);

CREATE TABLE species(
	id SERIAL,
	name varchar(100)
    PRIMARY KEY(id)
);

ALTER TABLE animals ADD PRIMARY KEY (id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id integer;
ALTER TABLE animals ADD FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id integer;
ALTER TABLE animals ADD FOREIGN KEY(owner_id) REFERENCES owners(id);

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    age integer,
    date_of_graduation date
);

CREATE TABLE specializations (
    vet_id integer,
    species_id integer
);

CREATE TABLE visits (
    animal_id integer,
    vet_id integer,
    visit_date date
);
