# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clients = Client.create([{name: "Napolean Bonaparte", email: "napolean@napolean.com", phone_number: "212-555-1212", description: "my computer is fried" }])

services = Service.create([{name: "Data Migration and Backup", description: "We save your info"}, {name: "PC Setup", description: "We create your info"}, {name: "Virus Protection", description: "We sanitize your info"}, {name: "Slow Computer", description: "We speed up your info"}])

