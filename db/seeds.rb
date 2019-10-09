# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Candidat.destroy_all
List.destroy_all
Mark.destroy_all
VoteForCandidat.destroy_all
puts "La base de donnée est clean"

10.times do
    Candidat.create(name: Faker::Games::Pokemon.name)
end
puts "Les candidats sont créés"

300.times do
    List.create!(voterName: Faker::Alphanumeric.alpha(number: 10) )
end
puts "Les listes sont créées"

marks = ["exellent", "very_good", "good", "so_so", "not_really", "bad", "very_bad"]
marks.each do |markTitle|
    Mark.create(title: markTitle)
end
puts "les notes sont créées"

objectMarks = []
Mark.all.each do |mark|
  objectMarks << mark
end

List.all.each do |list|
  Candidat.all.each do |candidat|
     VoteForCandidat.create(list: list, candidat: candidat, mark: objectMarks.sample)
  end
end

puts "les votes des listes sont créées"
