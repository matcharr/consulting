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

#10.times do
#    first_name = Faker::Name.first_name
#    User.create(name: first_name, email: first_name + "@yopmail.fr", password: "123123")
#end

10.times do
    content = ""
    rand(5..10).times do
        title = rand(1..6)
        content += "<h#{title}>#{Faker::Lorem.characters(number: rand(3..12))}</h#{title}>"
        content += "<p>#{Faker::Lorem.sentence(word_count: rand(40..100))}</p>"
    end
    Folder.create(title: Faker::Lorem.characters(number: rand(3..12)), content: content)
    rand(4).times do
        Comment.create(user: User.all.sample, folder: Folder.last, content: Faker::Lorem.paragraph(sentence_count: 4..8))
    end
end

