USER
Attributes
     username
     password
Relationships
    has many exercises
    has many patients through exercises

PATIENT
Attributes
    name 
    diagnosis
Relationships
    has many exercises
    has many patients through exercises

EXERCISE
Attributes
    name
    reps
    user id 
    patient id
Relationships
    belongs to user
    belongs to patient

