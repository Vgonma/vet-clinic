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

CREATE INDEX idx_patient_id
ON medical_histories(patient_id ASC);

CREATE TABLE IF NOT EXISTS invoices (
  id SERIAL PRIMARY KEY,
  total_ammount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history__id INT REFERENCES medical_histories(id)
);

CREATE INDEX idx_medical_histories__id
ON invoices(medical_histories__id ASC);

CREATE TABLE IF NOT EXISTS treatments (
  id SERIAL PRIMARY KEY,
  type TEXT,
  name TEXT
);

CREATE TABLE IF NOT EXISTS histories_treatments (
  history_id INT REFERENCES medical_histories(id),
  treatment_id INT REFERENCES treatments(id)
);

CREATE INDEX idx_history_id 
ON histories_treatments(history_id ASC);

CREATE INDEX idx_treatment_id
ON histories_treatments(treatment_id ASC);

CREATE TABLE IF NOT EXISTS invoice_items (
  id SERIAL PRIMARY KEY,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoice_id INT,
  treatment_id INT
);
