CREATE INDEX idx_appointments_date
ON Appointments(appointment_date);

CREATE INDEX idx_appointments_doctor_date
ON Appointments(doctor_id, appointment_date);