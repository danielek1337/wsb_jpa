
-- addresses
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (1, 'Malbork', 'ul. Spacerowa 22/11', 'Brak', '12-600');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (2, 'Tarnobrzeg', 'ul. Mickiewicza 15', 'Brak', '21-731');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (3, 'Nowy Sącz', 'ul. Kasztanowa 88', 'Brak', '30-833');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (4, 'Kraków', 'ul. Kopernika 17', 'Brak', '05-311');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (5, 'Olkusz', 'ul. Konopnickiej 44/20', 'Brak', '02-979');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (6, 'Świnoujście', 'al. Leśna 10/5', 'Brak', '60-875');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (7, 'Poznań', 'ul. Lipowa 77', 'Brak', '19-112');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (8, 'Lębork', 'pl. Świerkowa 25/9', 'Brak', '71-304');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (9, 'Żagań', 'ul. Klonowa 101', 'Brak', '95-186');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (10, 'Szczecinek', 'ul. Piastów 33', 'Brak', '37-123');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (11, 'Gdynia', 'al. Orkana 12/34', 'Brak', '95-899');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (12, 'Łomża', 'pl. Słoneczny 77/23', 'Brak', '45-772');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (13, 'Gorlice', 'ul. Modrzewiowa 2', 'Brak', '57-472');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (14, 'Bielsk Podlaski', 'ul. Jesionowa 33/12', 'Brak', '68-842');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (15, 'Nysa', 'ul. Kwiatowa 50', 'Brak', '15-813');

--- doctors
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (1, 'Anna', 'Kowalska', '+48 32 118 79 81', 'anna.kowalska@example.com', 'DOC101', 'Chirurgia', 12);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (2, 'Marek', 'Nowak', '+48 720 803 549', 'marek.nowak@example.net', 'DOC102', 'Endokrynologia', 8);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (3, 'Joanna', 'Wiśniewska', '+48 605 699 443', 'joanna.wisniewska@gmail.com', 'DOC103', 'Onkologia', 14);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (4, 'Tomasz', 'Kaczmarek', '+48 792 965 495', 'tomasz.kaczmarek@gabinety.org', 'DOC104', 'Pediatria', 11);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (5, 'Katarzyna', 'Lis', '+48 787 266 361', 'katarzyna.lis@onet.pl', 'DOC105', 'Ginekologia', 7);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (6, 'Grzegorz', 'Żurek', '+48 722 956 540', 'grzegorz.zurek@example.org', 'DOC106', 'Kardiologia', 1);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (7, 'Zofia', 'Szymańska', '+48 780 661 550', 'zofia.szymanska@ppuh.com', 'DOC107', 'Rehabilitacja', 3);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (8, 'Piotr', 'Baran', '+48 32 747 32 75', 'piotr.baran@gmail.com', 'DOC108', 'Kardiologia', 13);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (9, 'Sylwia', 'Wójcik', '+48 692 137 758', 'sylwia.wojcik@hotmail.com', 'DOC109', 'Neurologia', 15);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (10, 'Jan', 'Krawczyk', '+48 696 838 877', 'jan.krawczyk@o2.pl', 'DOC110', 'Dermatologia', 2);

--- patients
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id) VALUES (1, 'Krzysztof', 'Majewski', '+48 885 598 633', 'krzysztof.majewski@onet.pl', 'PAT101', '1995-05-12', 4);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id) VALUES (2, 'Michał', 'Stępień', '32 569 75 88', 'michal.stepien@interia.pl', 'PAT102', '1988-06-07', 6);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id) VALUES (3, 'Ewa', 'Zielińska', '+48 505 951 799', 'ewa.zielinska@hotmail.com', 'PAT103', '1971-05-22', 5);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id) VALUES (4, 'Agnieszka', 'Piotrowska', '798 940 259', 'agnieszka.piotrowska@o2.pl', 'PAT104', '1974-09-15', 10);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id) VALUES (5, 'Jakub', 'Nowicki', '+48 732 659 176', 'jakub.nowicki@fundacja.pl', 'PAT105', '1976-01-28', 9);

--- visits
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (1, 'Kontrola roczna', '2024-11-10 10:30:00', 7, 3);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (2, 'Porada specjalistyczna', '2024-10-15 14:45:00', 6, 2);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (3, 'Pierwsza konsultacja', '2024-09-20 09:15:00', 3, 4);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (4, 'Wizyta kontrolna', '2024-10-28 16:00:00', 10, 5);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (5, 'Pilna konsultacja', '2024-08-20 13:45:00', 7, 1);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (6, 'Diagnostyka objawów', '2024-10-12 11:00:00', 2, 5);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (7, 'Terapia długoterminowa', '2024-11-05 15:30:00', 6, 3);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (8, 'Badanie diagnostyczne', '2024-08-22 10:00:00', 2, 4);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (9, 'Plan leczenia', '2024-11-22 18:45:00', 4, 2);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (10, 'Konsultacja wstępna', '2024-08-30 14:20:00', 1, 3);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (11, 'Porada dermatologiczna', '2024-09-05 12:00:00', 5, 4);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (12, 'Konsultacja pediatryczna', '2024-09-25 09:30:00', 6, 5);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (13, 'Terapia specjalistyczna', '2024-09-12 15:00:00', 3, 1);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (14, 'Badanie okresowe', '2024-10-18 10:15:00', 10, 2);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (15, 'Ocena wyników leczenia', '2024-09-28 17:45:00', 8, 4);

--- medical treatments

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (1, 'Operacja stawu', 'Operacja', 4);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (2, 'Porada rehabilitacyjna', 'Konsultacja', 2);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (3, 'Diagnoza neurologiczna', 'Diagnoza', 12);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (4, 'Zabieg korekcyjny', 'Operacja', 15);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (5, 'Zabieg laserowy', 'Operacja', 10);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (6, 'Program terapeutyczny', 'Terapia', 7);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (7, 'Sesja terapeutyczna', 'Terapia', 3);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (8, 'Diagnoza dermatologiczna', 'Diagnoza', 11);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (9, 'Zabieg chirurgiczny', 'Operacja', 9);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (10, 'Analiza diagnostyczna', 'Diagnoza', 8);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (11, 'Konsultacja kardiologiczna', 'Terapia', 1);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (12, 'Chirurgia plastyczna', 'Operacja', 14);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (13, 'Diagnostyka objawowa', 'Diagnoza', 6);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (14, 'Konsultacja ortopedyczna', 'Konsultacja', 13);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (15, 'Diagnostyka pediatryczna', 'Diagnoza', 5);
