require 'sequel'
require 'sqlite3'
require 'faker'

database = Sequel.sqlite('sqpsandbox.sqlite3')

database.run "CREATE TABLE artists (id integer primary key autoincrement, name varchar(255))"
database.run "CREATE TABLE albums (id integer primary key autoincrement, title varchar(255), artist_id integer foriegn key)"
database.run "CREATE TABLE people (id integer primary key autoincrement, name varchar(255))"
database.run "CREATE TABLE owned_albums (id integer primary key autoincrement, person_id integer foriegn key, album_id integer foriegn key)"


100.times do
  database.from(:artists).insert(:name => "#{Faker::Hacker.ingverb.capitalize} #{Faker::Team.creature.capitalize}")
  database.from(:albums).insert(:title => "#{Faker::Hipster.sentence.capitalize}", artist_id: (1..100).to_a.sample )
  database.from(:people).insert(:name => "#{Faker::Name.name}" )
  database.from(:owned_albums).insert(:person_id => (1..100).to_a.sample, :album_id => (1..100).to_a.sample)
end
