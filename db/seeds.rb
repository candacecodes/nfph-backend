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

Patient.create(email_address: "ionabrabender@gmail.com", password: "123", name: "Iona", patient_uuid: 1, diagnosis: "none", prescriptions: "none", organization_id: 1)

puts 'Seeds done!'