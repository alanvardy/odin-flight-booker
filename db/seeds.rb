# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Flight.delete_all

Airport.create(code: 'SFO', name: 'San Francisco International')
Airport.create(code: 'NYC', name: 'New York City')

Flight.create(start_id: Airport.first.id, end_id: Airport.last.id, departure: Time.now, duration: 124)
Flight.create(start_id: Airport.last.id, end_id: Airport.first.id, departure: Time.now, duration: 124)