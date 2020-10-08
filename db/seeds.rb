phil = User.create(username: "Dr. Phil", password: "pw")
mike = User.create(username: "Dr. Mike", password: "pw")
house = User.create(username: "Dr. House", password: "pw")
dre = User.create(username: "Dr. Dre", password: "pw")
doom = User.create(username: "Dr. Doom", password: "pw")

dutch = Patient.create(name:"Dutch Van Derlin", diagnosis: "Sprained ankle")
john = Patient.create(name:"John Marston", diagnosis: "Face laceration")
arthur = Patient.create(name:"Arthur Morgan", diagnosis: "TB")
bill = Patient.create(name:"Bill Williamson", diagnosis: "Stupidity")
charles = Patient.create(name: "Charles Smith", diagnosis: "Too cool for school")

exercise1 = Exercise.create(name: "Squats", reps: 10, user_id: phil.id, patient_id: dutch.id)
exercise2 = Exercise.create(name: "Get ups", reps: 20, user_id: phil.id , patient_id: dutch.id)
exercise3 = Exercise.create(name: "Lateral arm raises", reps: 10 , user_id: mike.id, patient_id: dutch.id)
exercise4 = Exercise.create(name: "Arm circles", reps: 10, user_id: mike.id, patient_id: john.id)
exercise5 = Exercise.create(name: "Banded shoulder pulls", reps: 25, user_id: house.id, patient_id: arthur.id)
exercise6 = Exercise.create(name: "Banded push ups", reps: 30, user_id: house.id, patient_id: arthur.id)
exercise7 = Exercise.create(name: "Neck rotations", reps: 7 , user_id: dre.id, patient_id: bill.id)
exercise8 = Exercise.create(name: "Hamstring stretch", reps: 19, user_id: dre.id, patient_id: bill.id)
exercise9 = Exercise.create(name: "Sit ups", reps: 13, user_id: doom.id, patient_id: charles.id)
exercise10 = Exercise.create(name: "Walking around", reps: 5, user_id: doom.id, patient_id: charles.id)



