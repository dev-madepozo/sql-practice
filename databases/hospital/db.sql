DROP DATABASE IF EXISTS hospital;

CREATE DATABASE hospital;

USE hospital;

DROP TABLE IF EXISTS province_names;

CREATE TABLE province_names(
  province_id CHAR(2) NOT NULL,
  province_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (province_id)
);

DROP TABLE IF EXISTS patients;

CREATE TABLE patients(
  patient_id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender CHAR(1) NOT NULL,
  birth_date DATE NOT NULL,
  city VARCHAR(30) NOT NULL,
  province_id CHAR(2),
  allergies VARCHAR(80) NULL,
  height DECIMAL(3,0) NOT NULL,
  weight DECIMAL(4,0) NOT NULL,
  PRIMARY KEY (patient_id),
  FOREIGN KEY (province_id) REFERENCES province_names(province_id)
);

DROP TABLE IF EXISTS doctors;

CREATE TABLE doctors(
  doctor_id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  specialty VARCHAR(25) NOT NULL,
  PRIMARY KEY (doctor_id)
);

DROP TABLE IF EXISTS admissions;

CREATE TABLE admissions(
  patient_id INTEGER NOT NULL,
  admission_date DATE NOT NULL,
  discharge_date DATE NOT NULL,
  diagnosis VARCHAR(50) NOT NULL,
  attending_doctor_id INTEGER NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
  FOREIGN KEY (attending_doctor_id) REFERENCES doctors(doctor_id)
);
