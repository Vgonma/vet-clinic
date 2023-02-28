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

CREATE TABLE IF NOT EXISTS invoices (
  id SERIAL PRIMARY KEY,
  total_ammount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history__id INT REFERENCES medical_histories(id)
);

CREATE TABLE IF NOT EXISTS treatments (
  id SERIAL PRIMARY KEY,
  type TEXT,
  name TEXT
);

CREATE TABLE IF NOT EXISTS histories_treatments (
  history_id INT REFERENCES medical_histories(id),
  treatment_id INT REFERENCES treatments(id)
);
