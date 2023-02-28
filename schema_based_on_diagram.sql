CREATE TABLE IF NOT EXISTS patients (
  id SERIAL PRIMARY KEY,
  name TEXT,
  date_of_birth DATE
);

CREATE TABLE IF NOT EXISTS medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at DATE,
  patient_id INT REFERENCES patients(id),
  status TEXT
);
