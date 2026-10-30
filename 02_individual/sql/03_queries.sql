SELECT * FROM Patients;

SELECT full_name, phone FROM Patients;

SELECT * FROM Patients
WHERE birth_date < '1996-01-01';

SELECT * FROM Appointments
WHERE status = 'Запланирован';

SELECT * FROM Services;

SELECT Doctors.full_name, Specialties.name
FROM Doctors
JOIN Specialties ON Doctors.specialty_id = Specialties.specialty_id;

SELECT Appointments.appointment_id, Patients.full_name, Appointments.appointment_date
FROM Appointments
JOIN Patients ON Appointments.patient_id = Patients.patient_id;

SELECT Appointments.appointment_id, Doctors.full_name, Appointments.appointment_date
FROM Appointments
JOIN Doctors ON Appointments.doctor_id = Doctors.doctor_id;

SELECT COUNT(*) AS total_patients
FROM Patients;

SELECT COUNT(*) AS total_doctors
FROM Doctors;

SELECT AVG(price) AS average_price
FROM Services;

SELECT * FROM Services
WHERE price = (SELECT MAX(price) FROM Services);

SELECT doctor_id, COUNT(*) AS appointment_count
FROM Appointments
GROUP BY doctor_id;

SELECT SUM(amount) AS total_payments
FROM Payments;

SELECT full_name
FROM Patients
WHERE patient_id IN (
    SELECT patient_id FROM Appointments
);
