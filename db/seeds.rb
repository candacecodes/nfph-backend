# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.destroy_all

Organization.create(name: 'UC Davis Health - MIND Institute', location: 'Sacramento, California', phone: '(916) 703-0317')
Organization.create(name: 'Stanford Health Center', location: 'Palo Alto, California', phone: '(650) 723-6469')
Organization.create(name: "UCSF Benioff Children's Hospital", location: 'San Francisco, California', phone: '(415) 353-7596')
Organization.create(name: "University of Washington Medical Center - Montlake", location: 'Seattle, Washington', phone: '(206) 598-2282')
Organization.create(name: "Seattle Children's Hospital", location: 'Seattle, Washington', phone: '(206) 987-2016')

# Provider.create(first_name: 'firstname1', title: 'Title1', field: 'Field1', provider_uuid: '1', organization_id: 1)


Patient.create(first_name: 'firstname1', patient_uuid: '1', diagnosis: 'diagnosis1', prescriptions: ['prescription1'], organization_id: 1, email_address: 'email1', password_digest: 'password1', last_name: 'lastname1')
Patient.create(first_name: 'firstname2', patient_uuid: '2', diagnosis: 'diagnosis2', prescriptions: ['prescription2'], organization_id: 2, email_address: 'email2', password_digest: 'password2', last_name: 'lastname2')

Entry.create(issue: 'issue1', location: 'location1', image: 'image1', pain_level: 'painlevel1', symptoms: 'symptom1', symptom_onset: 'symptomonset1', date_of_entry: 'dateofentry1', patient_id: 1)
Entry.create(issue: 'issue2', location: 'location2', image: 'image2', pain_level: 'painlevel2', symptoms: 'symptom2', symptom_onset: 'symptomonset2', date_of_entry: 'dateofentry2', patient_id: 2)

Comment.create(text: 'text1', owner_uuid: '1', date: 'date1', entry_id: 1)
Comment.create(text: 'text2', owner_uuid: '2', date: 'date2', entry_id: 2)

puts 'Seeds done!'