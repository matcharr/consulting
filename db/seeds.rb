# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Folder.destroy_all

User.create(name: 'Bobo', email: 'balfoldi@yahoo.fr', password: '123123', administrator: true)
User.create(name: 'HarleyBoy', email: 'falfoldi@gmail.com', password: '123123', administrator: true)

10.times do
    User.create(name: Faker::Name.first_name, email: Faker::Internet.email, password: "123123")
end

10.times do
    Folder.create(title: Faker::Lorem.characters(number: rand(3..12)), content: Faker::Lorem.paragraph(sentence_count: 20..100))
    rand(4).times do
        Comment.create(user: User.all.sample, folder: Folder.last, content: Faker::Lorem.paragraph(sentence_count: 4..8))
    end
end

