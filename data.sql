/* Populate database with sample data. */
INSERT INTO animals VALUES (DEFAULT, 'Agumon','02-03-2020', 0, TRUE, 10.23 );
INSERT INTO animals VALUES (DEFAULT, 'Gabumon','09-15-2018', 2, TRUE, 8.0 );
INSERT INTO animals VALUES (DEFAULT, 'Pikachu','01-07-2021', 1, FALSE, 15.04 );
INSERT INTO animals VALUES (DEFAULT, 'Devimon','05-12-2017', 5, TRUE, 11.0 );

INSERT INTO animals VALUES (DEFAULT, 'Charmander','02-08-2020', 0, FALSE, -11.0 );
INSERT INTO animals VALUES (DEFAULT, 'Plantmon','09-15-2021', 2, TRUE, -5.7 );
INSERT INTO animals VALUES (DEFAULT, 'Squirtle','04-02-1993', 3, FALSE, -12.13 );
INSERT INTO animals VALUES (DEFAULT, 'Angemon','06-12-2005', 1, TRUE, -45.0 );
INSERT INTO animals VALUES (DEFAULT, 'Boarmon','06-07-2005', 7, TRUE, 20.4 );
INSERT INTO animals VALUES (DEFAULT, 'Blossom','10-13-1998', 3, TRUE, 17.0 );
INSERT INTO animals VALUES (DEFAULT, 'Ditto','05-14-2022', 4, TRUE, 22.0 );

INSERT INTO owners VALUES (DEFAULT, 'Sam Smith', 34);
INSERT INTO owners VALUES (DEFAULT, 'Jennifer Orwell', 19);
INSERT INTO owners VALUES (DEFAULT, 'Bob', 45);
INSERT INTO owners VALUES (DEFAULT, 'Melody Pond', 77);
INSERT INTO owners VALUES (DEFAULT, 'Dean Winchester', 14);
INSERT INTO owners VALUES (DEFAULT, 'Jodie Whittaker', 38);

INSERT INTO species VALUES (DEFAULT, 'Pokemon');
INSERT INTO species VALUES (DEFAULT, 'Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name LIKE 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name LIKE 'Gabumon';
UPDATE animals SET owner_id = 2 WHERE name LIKE 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name LIKE 'Devimon';
UPDATE animals SET owner_id = 3 WHERE name LIKE 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name LIKE 'Charmander';
UPDATE animals SET owner_id = 4 WHERE name LIKE 'Squirtle';
UPDATE animals SET owner_id = 4 WHERE name LIKE 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name LIKE 'Angemon';
UPDATE animals SET owner_id = 5 WHERE name LIKE 'Boarmon';

INSERT INTO vets VALUES (DEFAULT, 'William Tatcher', 45, '04-23-2000');
INSERT INTO vets VALUES (DEFAULT, 'Maisy Smith', 26, 'Jan-17-2019');
INSERT INTO vets VALUES (DEFAULT, 'Stephanie Mendez', 64, 'May-04-1981');
INSERT INTO vets VALUES (DEFAULT, 'Jack Harkness', 38, 'Jun-08-2008');

INSERT INTO specializations VALUES (
  (SELECT id FROM vets WHERE vets.name = 'William Tatcher'), 
  (SELECT id FROM species WHERE species.name = 'Pokemon')
);

INSERT INTO specializations VALUES (
  (SELECT id FROM vets WHERE vets.name = 'Stephanie Mendez'), 
  (SELECT id FROM species WHERE species.name = 'Pokemon')
);

INSERT INTO specializations VALUES (
  (SELECT id FROM vets WHERE vets.name = 'Stephanie Mendez'), 
  (SELECT id FROM species WHERE species.name = 'Digimon')
);

INSERT INTO specializations VALUES (
  (SELECT id FROM vets WHERE vets.name = 'Jack Harkness'), 
  (SELECT id FROM species WHERE species.name = 'Digimon')
);

-- visits data ======================================================
INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Agumon'),
  (SELECT id FROM vets WHERE vets.name = 'William Tatcher'),
  'May-24-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Agumon'),
  (SELECT id FROM vets WHERE vets.name = 'Stephanie Mendez'),
  'Jul-22-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Gabumon'),
  (SELECT id FROM vets WHERE vets.name = 'Jack Harkness'),
  'Feb-02-2021'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Pikachu'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Jan-05-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Pikachu'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Mar-08-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Pikachu'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'May-14-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Devimon'),
  (SELECT id FROM vets WHERE vets.name = 'Stephanie Mendez'),
  'May-04-2021'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Charmander'),
  (SELECT id FROM vets WHERE vets.name = 'Jack Harkness'),
  'Feb-24-2021'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Plantmon'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Dec-21-2019'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Plantmon'),
  (SELECT id FROM vets WHERE vets.name = 'William Tatcher'),
  'Aug-10-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Plantmon'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Apr-07-2021'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Squirtle'),
  (SELECT id FROM vets WHERE vets.name = 'Stephanie Mendez'),
  'Sep-29-2019'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Angemon'),
  (SELECT id FROM vets WHERE vets.name = 'Jack Harkness'),
  'Oct-03-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Angemon'),
  (SELECT id FROM vets WHERE vets.name = 'Jack Harkness'),
  'Nov-04-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Boarmon'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Jan-24-2019'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Boarmon'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'May-15-2019'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Boarmon'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Feb-27-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Boarmon'),
  (SELECT id FROM vets WHERE vets.name = 'Maisy Smith'),
  'Aug-03-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Blossom'),
  (SELECT id FROM vets WHERE vets.name = 'Stephanie Mendez'),
  'May-24-2020'
);

INSERT INTO visits VALUES (
  (SELECT id FROM animals WHERE animals.name = 'Blossom'),
  (SELECT id FROM vets WHERE vets.name = 'William Tatcher'),
  'Jan-11-2021'
);
