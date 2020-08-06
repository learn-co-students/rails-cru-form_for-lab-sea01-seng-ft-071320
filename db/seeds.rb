# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create(name: "Adele", bio:"Adele Laurie Blue Adkins MBE born 5 May 1988 is an English singer-songwriter.")
Artist.create(name:"Lady Gaga", bio:"Stefani Joanne Angelina Germanotta born March 28, 1986, known professionally as Lady Gaga, is an American singer, songwriter, record producer, actress, and businesswoman.")
Artist.create(name:"Madoona", bio:"Stefani Joanne Angelina Germanotta born March 28, 1986, known professionally as Lady Gaga, is an American singer, songwriter, record producer, actress, and businesswoman.")
Artist.create(name:"Drake", bio:"Stefani Joanne Angelina Germanotta born March 28, 1986, known professionally as Lady Gaga, is an American singer, songwriter, record producer, actress, and businesswoman.")

Genre.create(name: "Contemporary R&B")
Genre.create(name:"Pop")
Genre.create(name:"Rock")
Genre.create(name:"Jazz")

Song.create(name:"Ko", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name:"j", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name:"if", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name:"sd", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name:"bd", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)

