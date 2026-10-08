-- =====================================================
-- FAKE DATA FOR PORTFOLIO PROJECT ONLY
-- Every name, date, and number here is made up.
-- There are NO real patients here.
-- NEVER put real patient data in a portfolio project.
-- =====================================================
-- Run this file ONE time in DB Browser for SQLite
-- (Execute SQL tab -> Open File -> Run).

DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS calls;
DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
    patient_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    doctor TEXT,
    last_awv_date TEXT
);

CREATE TABLE calls (
    call_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    call_date TEXT,
    outcome TEXT
);
-- outcome is one of: booked, no_answer, declined, wrong_number

CREATE TABLE appointments (
    appointment_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    call_id INTEGER,
    appointment_date TEXT,
    showed TEXT
);
-- showed is 'yes' or 'no'

INSERT INTO patients (patient_id, first_name, last_name, age, doctor, last_awv_date) VALUES
(1, 'Ava', 'Adams', 62, 'Dr. Smith', '2025-05-08'),
(2, 'Ben', 'Baker', 63, 'Dr. Lee', '2025-11-18'),
(3, 'Cara', 'Cole', 60, 'Dr. Smith', '2026-09-03'),
(4, 'Dev', 'Diaz', 68, 'Dr. Smith', '2024-12-18'),
(5, 'Eli', 'Evans', 67, 'Dr. Lee', '2025-10-14'),
(6, 'Fay', 'Ford', 69, 'Dr. Smith', '2026-05-25'),
(7, 'Gus', 'Grant', 65, 'Dr. Jones', '2026-04-05'),
(8, 'Hana', 'Hayes', 68, 'Dr. Smith', '2026-04-03'),
(9, 'Ira', 'Ingram', 79, 'Dr. Jones', '2024-08-20'),
(10, 'Jade', 'Jules', 71, 'Dr. Jones', '2025-10-18'),
(11, 'Kai', 'Khan', 62, 'Dr. Smith', '2026-03-18'),
(12, 'Lena', 'Lane', 73, 'Dr. Jones', '2025-12-19'),
(13, 'Moe', 'Moss', 67, 'Dr. Lee', '2026-09-08'),
(14, 'Nina', 'Nash', 73, 'Dr. Smith', '2026-06-13'),
(15, 'Omar', 'Owens', 72, 'Dr. Smith', '2026-04-12'),
(16, 'Pia', 'Park', 77, 'Dr. Lee', '2025-05-22'),
(17, 'Quinn', 'Reed', 59, 'Dr. Lee', '2026-07-24'),
(18, 'Rosa', 'Stone', 70, 'Dr. Jones', '2025-03-21'),
(19, 'Sam', 'Turner', 90, 'Dr. Smith', '2025-04-08'),
(20, 'Tina', 'Vance', 57, 'Dr. Jones', '2026-03-03'),
(21, 'Uma', 'Ward', 68, 'Dr. Lee', '2025-12-11'),
(22, 'Vic', 'Young', 68, 'Dr. Lee', '2026-03-15'),
(23, 'Wren', 'Zane', 64, 'Dr. Lee', '2025-06-18'),
(24, 'Xena', 'Avery', 89, 'Dr. Jones', '2024-12-19'),
(25, 'Yusuf', 'Blake', 80, 'Dr. Lee', '2026-07-16'),
(26, 'Zara', 'Crane', 60, 'Dr. Smith', '2026-08-21'),
(27, 'Abe', 'Dover', 65, 'Dr. Lee', '2026-03-03'),
(28, 'Beth', 'Ellis', 79, 'Dr. Lee', '2026-02-09'),
(29, 'Cole', 'Frost', 90, 'Dr. Lee', '2026-09-24'),
(30, 'Dana', 'Grove', 62, 'Dr. Jones', '2026-01-25'),
(31, 'Emil', 'Hart', 76, 'Dr. Smith', '2025-03-15'),
(32, 'Farah', 'Ives', 55, 'Dr. Jones', '2025-10-17'),
(33, 'Glen', 'Jett', 66, 'Dr. Lee', '2026-08-10'),
(34, 'Holly', 'Knoll', 87, 'Dr. Jones', '2026-07-25'),
(35, 'Ivan', 'Lark', 65, 'Dr. Smith', '2026-01-20'),
(36, 'June', 'Mead', 75, 'Dr. Jones', '2026-08-27'),
(37, 'Kurt', 'Nolan', 74, 'Dr. Lee', '2025-06-03'),
(38, 'Lila', 'Pike', 60, 'Dr. Lee', '2026-08-25'),
(39, 'Mara', 'Quill', 63, 'Dr. Lee', '2025-02-06'),
(40, 'Nora', 'Rhodes', 71, 'Dr. Jones', '2025-12-07');

INSERT INTO calls (call_id, patient_id, call_date, outcome) VALUES
(1, 1, '2026-09-25', 'wrong_number'),
(2, 1, '2026-09-23', 'booked'),
(3, 1, '2026-09-22', 'no_answer'),
(4, 2, '2026-09-17', 'no_answer'),
(5, 2, '2026-09-04', 'wrong_number'),
(6, 3, '2026-09-03', 'no_answer'),
(7, 4, '2026-09-18', 'wrong_number'),
(8, 5, '2026-09-08', 'booked'),
(9, 5, '2026-09-03', 'booked'),
(10, 5, '2026-09-08', 'no_answer'),
(11, 6, '2026-09-28', 'no_answer'),
(12, 7, '2026-09-17', 'wrong_number'),
(13, 8, '2026-09-22', 'no_answer'),
(14, 8, '2026-09-07', 'declined'),
(15, 9, '2026-09-24', 'no_answer'),
(16, 10, '2026-09-16', 'booked'),
(17, 11, '2026-09-04', 'no_answer'),
(18, 12, '2026-09-14', 'no_answer'),
(19, 12, '2026-09-14', 'booked'),
(20, 12, '2026-09-15', 'booked'),
(21, 13, '2026-09-21', 'no_answer'),
(22, 13, '2026-09-02', 'booked'),
(23, 13, '2026-09-24', 'no_answer'),
(24, 14, '2026-09-08', 'wrong_number'),
(25, 15, '2026-09-18', 'no_answer'),
(26, 16, '2026-09-14', 'declined'),
(27, 17, '2026-09-15', 'wrong_number'),
(28, 17, '2026-09-28', 'no_answer'),
(29, 18, '2026-09-28', 'declined'),
(30, 18, '2026-09-04', 'booked'),
(31, 19, '2026-09-18', 'booked'),
(32, 19, '2026-09-03', 'wrong_number'),
(33, 19, '2026-09-14', 'no_answer'),
(34, 20, '2026-09-07', 'booked'),
(35, 20, '2026-09-02', 'declined'),
(36, 21, '2026-09-01', 'booked'),
(37, 21, '2026-09-09', 'no_answer'),
(38, 22, '2026-09-14', 'declined'),
(39, 22, '2026-09-22', 'no_answer'),
(40, 23, '2026-09-07', 'booked'),
(41, 24, '2026-09-02', 'declined'),
(42, 25, '2026-09-24', 'no_answer'),
(43, 26, '2026-09-02', 'no_answer'),
(44, 27, '2026-09-28', 'declined'),
(45, 27, '2026-09-02', 'declined'),
(46, 27, '2026-09-03', 'declined'),
(47, 28, '2026-09-03', 'wrong_number'),
(48, 29, '2026-09-04', 'wrong_number'),
(49, 29, '2026-09-02', 'no_answer'),
(50, 30, '2026-09-22', 'declined'),
(51, 30, '2026-09-11', 'booked'),
(52, 31, '2026-09-22', 'no_answer'),
(53, 32, '2026-09-09', 'booked'),
(54, 33, '2026-09-22', 'booked'),
(55, 34, '2026-09-11', 'no_answer'),
(56, 34, '2026-09-01', 'no_answer'),
(57, 35, '2026-09-04', 'no_answer'),
(58, 35, '2026-09-18', 'wrong_number'),
(59, 35, '2026-09-17', 'booked'),
(60, 36, '2026-09-03', 'wrong_number'),
(61, 37, '2026-09-10', 'declined'),
(62, 37, '2026-09-15', 'declined'),
(63, 38, '2026-09-10', 'declined'),
(64, 38, '2026-09-01', 'declined'),
(65, 38, '2026-09-10', 'no_answer'),
(66, 39, '2026-09-09', 'no_answer'),
(67, 40, '2026-09-24', 'declined');

INSERT INTO appointments (appointment_id, patient_id, call_id, appointment_date, showed) VALUES
(1, 1, 2, '2026-10-05', 'yes'),
(2, 5, 8, '2026-10-20', 'yes'),
(3, 5, 9, '2026-10-11', 'yes'),
(4, 10, 16, '2026-10-21', 'no'),
(5, 12, 19, '2026-10-17', 'yes'),
(6, 12, 20, '2026-10-28', 'yes'),
(7, 13, 22, '2026-10-21', 'yes'),
(8, 18, 30, '2026-10-09', 'yes'),
(9, 19, 31, '2026-10-11', 'yes'),
(10, 20, 34, '2026-10-21', 'no'),
(11, 21, 36, '2026-10-06', 'yes'),
(12, 23, 40, '2026-10-18', 'yes'),
(13, 30, 51, '2026-10-18', 'yes'),
(14, 32, 53, '2026-10-03', 'no'),
(15, 33, 54, '2026-10-23', 'no'),
(16, 35, 59, '2026-10-18', 'yes');
