user1 = User.create(username: "Dr. Phil")
user2 = User.create(username: "Dr. Mike")
user3 = User.create(username: "Dr. House")
user4 = User.create(username: "Dr. Dre")
user5 = User.create(username: "Dr. Doom")

patient1 = Patient.create(name:"Dutch Van Derlin", diagnosis: "Sprained ankle")
patient2 = Patient.create(name:"John Marston", diagnosis: "Face laceration")
patient3 = Patient.create(name:"Arthur Morgan", diagnosis: "TB")
patient4 = Patient.create(name:"Bill Williamson", diagnosis: "Stupidity")
patient5 = Patient.create(name: "Charles Smith", diagnosis: "Too cool for school")

exercise1 = Exercise.create(name: "Squats", reps: 10, user_id: user1.id, patient_id: patient1.id)
exercise2 = Exercise.create(name: "Get ups", reps: 20, user_id: user1.id , patient_id: patient1.id)
exercise3 = Exercise.create(name: "Lateral arm raises", reps: 10 , user_id: user2.id, patient_id: patient2.id)
exercise4 = Exercise.create(name: "Arm circles", reps: 10, user_id: user2.id, patient_id: patient2.id)
exercise5 = Exercise.create(name: "Banded shoulder pulls", reps: 25, user_id: user3.id, patient_id: patient3.id)
exercise6 = Exercise.create(name: "Banded push ups", reps: 30, user_id: user3.id, patient_id: patient3.id)
exercise7 = Exercise.create(name: "Neck rotations", reps: 7 , user_id: user4.id, patient_id: patient4.id)
exercise8 = Exercise.create(name: "Hamstring stretch", reps: 19, user_id: user4.id, patient_id: patient4.id)
exercise9 = Exercise.create(name: "Sit ups", reps: 13, user_id: user5.id, patient_id: patient5.id)
exercise10 = Exercise.create(name: "Walking around", reps: 5, user_id: user5.id, patient_id: patient5.id)



