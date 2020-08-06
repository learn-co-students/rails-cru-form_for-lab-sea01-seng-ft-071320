# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



adel = Artist.create(name: "Adele", bio:"Adele Laurie Blue Adkins MBE born 5 May 1988 is an English singer-songwriter.")
gaga  =Artist.create(name:"Lady Gaga", bio:"Stefani Joanne Angelina Germanotta born March 28, 1986, known professionally as Lady Gaga, is an American singer, songwriter, record producer, actress, and businesswoman.")

rnb = Genre.create(name: "Contemporary R&B")
pop = Genre.create(name:"Pop")

hello = Song.create(name:"Hello", artist_id: adel.id, genre_id: rnb.id)
telephone = Song.create(name:"Telephone", artist_id: gaga.id, genre_id: pop.id)
