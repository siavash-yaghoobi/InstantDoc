# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DoctorSpecialty.destroy_all
Specialty.destroy_all
Doctor.destroy_all


specialties = Specialty.create([{name: 'Allergy & Immunology'}, {name: 'Anesthesiology & Pain Medicine'}, {name: 'Cardiology'}, {name: 'Colon & Rectal Surgery'}, {name: 'Dermatology'}, {name: 'Emergency Medicine'}, {name: 'General Medicine'}, {name: 'Internal Medicine'}, {name: 'Medical Genetics'}, {name: 'Neurological Surgery'}, {name: 'Nuclear Medicine'}, {name: 'Obstetrics & Gynecology'}, {name: 'Ophthalmology'}, {name: 'Orthopaedic Surgery'}, {name: 'Otolaryngology'}, {name:'Pathology-Anatomic & Clinical / Hematology'}, {name: 'Pediatrics'}, {name: 'Physical Medicine & Rehabilitation'}, {name:'Plastic Surgery'}, {name: 'Pediatrics'}, {name: 'Psychiatry'}, {name: 'Radiation Oncology'}, {name: 'Radiology-Diagnostic'}, {name: 'Sleep Medicine'}, {name: 'Surgery-General'}, {name: 'Urology'}])

#already have a bunch of specialities

doctor1 = Doctor.create(first_name: 'Katrin', last_name: 'Luft', address: 'Hauptstraße 87, 12159 Berlin', waiting_time: 44, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/royn6cesjwznvrsou4m7.jpg')
doctor2 = Doctor.create(first_name: 'Gabriele' , last_name: 'Thalmann', address: 'Königin-Luise-Straße 37, 14195 Berlin', waiting_time: 29, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/olmaemeumydnqlvwtmfq.jpg')
doctor3 = Doctor.create(first_name: 'Dr. Nikolas Peter', last_name: 'Höllen', address: 'Kyffhaeuserstraße 11, 10781 Berlin', waiting_time: 38, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/a3biepfkidqcd99o0yr7.jpg')
doctor4 = Doctor.create(first_name: 'Friedhelm', last_name: 'Distler', address: 'Breite Straße 20B, 13187 Berlin', waiting_time: 31, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/pcszmeaeepobxhaunhc6.jpg')
doctor5 = Doctor.create(first_name: 'Ines', last_name: 'Becker', address: 'Helene-Weigel-Platz 10, 12681 Berlin', waiting_time: 24, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/irlquohjoaxymradxdda.jpg')
doctor6 = Doctor.create(first_name: 'Mathias', last_name: 'Ellinger', address: 'Karl-Marx-Allee 82, 10243 Berlin', waiting_time: 37, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/rqzagk7t9gr9cngo2vo3.jpg')
doctor7 = Doctor.create(first_name: 'Kinga', last_name: 'Vehmeyer', address: 'Kurfürstendamm 42, 10719 Berlin', waiting_time: 30, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/ok8p5hnsjzs3g4eydgdv.jpg')
doctor8 = Doctor.create(first_name: 'Sohrab', last_name: 'Fahimi', address: 'Bergmannstraße 5, 10961', waiting_time: 45, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/mk8xa5niofrmeq4zxwss.jpg')
doctor9 = Doctor.create(first_name: 'Hermann', last_name: 'Schmid', address: 'Goethestraße 26A, 14163 Berlin', waiting_time: 40, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/uijh4o51nxxqowp39zpa.jpg')
doctor10 = Doctor.create(first_name: 'Nicolette', last_name: 'Juche', address: 'Müllerstraße 51, 13349 Berlin ', waiting_time: 22, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/vtfnshlerjsflzdqzlzq.jpg')
doctor11 = Doctor.create(first_name: 'Luise', last_name: 'Schröter', address: 'Schönwalder Str. 28, 13347 Berlin', waiting_time: 25, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/jawl6n1p9wcpqviiaaar.jpg')
doctor12 = Doctor.create(first_name: 'Dr. med. Anja', last_name: 'Ingwers', address: 'Oldenburger Str. 37, 10551 Berlin', waiting_time: 21, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/ba2oizqmrqpcvdikfdrn.jpg')
doctor13 = Doctor.create(first_name: 'Dr. med. Najeeb', last_name: 'Al Saidi', address: 'Hänselstraße 45, 12437 Berlin', waiting_time: 18, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/uhsv1ygaite9dqnuy4gc.jpg')
doctor14 = Doctor.create(first_name: 'Dr. med. Ljiljana', last_name: 'Otasevic-Wieschalla', address: 'Carmerstraße 7 10623 Berlin', waiting_time: 14, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/enu3ksdonkuunn6w9mwc.jpg')
doctor15 = Doctor.create(first_name: 'Jasmin', last_name: 'Shaltout', address: 'Mecklenburgische Str. 20, 10713 Berlin', waiting_time: 15, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/zmyx3ayncrjintbrqotb.jpg')
doctor16 = Doctor.create(first_name: 'Elmar', last_name: 'Gieseke', address: 'Kurfürstendamm 42, 10719', waiting_time: 49 , picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/tbvs2sxg50y1sn5nbph6.jpg')
doctor17 = Doctor.create(first_name: 'Stefanie', last_name: ' Kühn', address: 'Mommsenstraße 7, 10629 Berlin', waiting_time: 57, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/mcgpmociorsbtrlafz2k.jpg')
doctor18 = Doctor.create(first_name: 'Karl', last_name: 'Ziegler', address: 'Clayallee 225, 14195 Berlin', waiting_time: 88, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/mdqmioelbzofih5u9tc6.jpg')
doctor19 = Doctor.create(first_name: 'Marten', last_name: 'Stanisak', address: 'Heidebrinker Str. 15, 13357 Berlin', waiting_time: 14, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/sbnyfgz5i9y6cqyqkwav.jpg')
doctor20 = Doctor.create(first_name: 'Katrin ', last_name: 'Reimer-Bürkle', address: 'Kapweg 5, 13405 Berlin', waiting_time: 7, picture_url: 'https://res.cloudinary.com/doctolib/image/upload/q_auto:eco,f_auto,w_1024,h_700,c_limit/qdndyukbt9fhnhal68op.jpg')

DoctorSpecialty.create(doctor_id: doctor1.id, specialty_id: Specialty.find_by(name:'Internal Medicine').id)
DoctorSpecialty.create(doctor_id: doctor2.id, specialty_id: Specialty.find_by(name: 'Radiology-Diagnostic').id)
DoctorSpecialty.create(doctor_id: doctor2.id, specialty_id: Specialty.find_by(name: 'Radiation Oncology').id)
DoctorSpecialty.create(doctor_id: doctor3.id, specialty_id: Specialty.find_by(name: 'Surgery-General').id)
DoctorSpecialty.create(doctor_id: doctor3.id, specialty_id: Specialty.find_by(name: 'Cardiology').id)
DoctorSpecialty.create(doctor_id: doctor4.id, specialty_id: Specialty.find_by(name:'General Medicine').id)
DoctorSpecialty.create(doctor_id: doctor4.id, specialty_id: Specialty.find_by(name:'Pediatrics').id)
DoctorSpecialty.create(doctor_id: doctor5.id, specialty_id: Specialty.find_by(name: 'Psychiatry').id)
DoctorSpecialty.create(doctor_id: doctor6.id, specialty_id: Specialty.find_by(name:'Orthopaedic Surgery').id)
DoctorSpecialty.create(doctor_id: doctor7.id, specialty_id: Specialty.find_by(name:'Internal Medicine').id)
DoctorSpecialty.create(doctor_id: doctor7.id, specialty_id: Specialty.find_by(name:'Otolaryngology').id)
DoctorSpecialty.create(doctor_id: doctor8.id, specialty_id: Specialty.find_by(name:'Internal Medicine').id)
DoctorSpecialty.create(doctor_id: doctor9.id, specialty_id: Specialty.find_by(name:'Plastic Surgery').id)
DoctorSpecialty.create(doctor_id: doctor10.id, specialty_id: Specialty.find_by(name:'General Medicine').id)
DoctorSpecialty.create(doctor_id: doctor11.id, specialty_id: Specialty.find_by(name:'General Medicine').id)
DoctorSpecialty.create(doctor_id: doctor11.id, specialty_id: Specialty.find_by(name:'Dermatology').id)
DoctorSpecialty.create(doctor_id: doctor12.id, specialty_id: Specialty.find_by(name:'Pathology-Anatomic & Clinical / Hematology').id)
DoctorSpecialty.create(doctor_id: doctor13.id, specialty_id: Specialty.find_by(name:'Sleep Medicine').id)
DoctorSpecialty.create(doctor_id: doctor13.id, specialty_id: Specialty.find_by(name:'Radiology-Diagnostic').id)
DoctorSpecialty.create(doctor_id: doctor14.id, specialty_id: Specialty.find_by(name:'Allergy & Immunology').id)
DoctorSpecialty.create(doctor_id: doctor14.id, specialty_id: Specialty.find_by(name:'Dermatology').id)
DoctorSpecialty.create(doctor_id: doctor15.id, specialty_id: Specialty.find_by(name:'Anesthesiology & Pain Medicine').id)
DoctorSpecialty.create(doctor_id: doctor15.id, specialty_id: Specialty.find_by(name:'Internal Medicine').id)
DoctorSpecialty.create(doctor_id: doctor16.id, specialty_id: Specialty.find_by(name:'Colon & Rectal Surgery').id)
DoctorSpecialty.create(doctor_id: doctor17.id, specialty_id: Specialty.find_by(name:'Emergency Medicine').id)
DoctorSpecialty.create(doctor_id: doctor18.id, specialty_id: Specialty.find_by(name:'Pediatrics').id)
DoctorSpecialty.create(doctor_id: doctor18.id, specialty_id: Specialty.find_by(name:'Dermatology').id)
DoctorSpecialty.create(doctor_id: doctor19.id, specialty_id: Specialty.find_by(name:'Medical Genetics').id)
DoctorSpecialty.create(doctor_id: doctor19.id, specialty_id: Specialty.find_by(name:'Nuclear Medicine').id)
DoctorSpecialty.create(doctor_id: doctor20.id, specialty_id: Specialty.find_by(name:'Obstetrics & Gynecology').id)
DoctorSpecialty.create(doctor_id: doctor20.id, specialty_id: Specialty.find_by(name:'General Medicine').id)
DoctorSpecialty.create(doctor_id: doctor18.id, specialty_id: Specialty.find_by(name:'Pediatrics').id)
