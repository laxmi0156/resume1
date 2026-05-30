# Hospital Management System using OOPs

class Patient:
    def __init__(self, patient_id, name, age, disease):
        self.patient_id = patient_id
        self.name = name
        self.age = age
        self.disease = disease

    def display_patient(self):
        print("\nPatient Details")
        print("Patient ID:", self.patient_id)
        print("Name:", self.name)
        print("Age:", self.age)
        print("Disease:", self.disease)


class Doctor:
    def __init__(self, doctor_id, doctor_name, specialization):
        self.doctor_id = doctor_id
        self.doctor_name = doctor_name
        self.specialization = specialization

    def display_doctor(self):
        print("\nDoctor Details")
        print("Doctor ID:", self.doctor_id)
        print("Doctor Name:", self.doctor_name)
        print("Specialization:", self.specialization)


class Appointment(Patient, Doctor):

    def __init__(self, patient_id, name, age, disease,
                 doctor_id, doctor_name, specialization, date):

        Patient.__init__(self, patient_id, name, age, disease)
        Doctor.__init__(self, doctor_id, doctor_name, specialization)

        self.date = date

    def display_appointment(self):

        print("\nAppointment Details")
        self.display_patient()
        self.display_doctor()

        print("Appointment Date:", self.date)


# Main Program

while True:

    print("\n===== Hospital Management System =====")
    print("1. Add Appointment")
    print("2. Exit")

    choice = int(input("Enter your choice: "))

    if choice == 1:

        patient_id = int(input("Enter Patient ID: "))
        name = input("Enter Patient Name: ")
        age = int(input("Enter Patient Age: "))
        disease = input("Enter Disease: ")

        doctor_id = int(input("Enter Doctor ID: "))
        doctor_name = input("Enter Doctor Name: ")
        specialization = input("Enter Specialization: ")

        date = input("Enter Appointment Date: ")

        obj = Appointment(
            patient_id,
            name,
            age,
            disease,
            doctor_id,
            doctor_name,
            specialization,
            date
        )

        obj.display_appointment()

    elif choice == 2:
        print("Program Closed")
        break

    else:
        print("Invalid Choice")