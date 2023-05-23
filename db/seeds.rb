# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

file = URI.open("https://res.cloudinary.com/dztwrgpbi/image/upload/v1659405138/891/zk2jl24a3duer4q7ieo5h3dx3no1.png")
article = Article.new(title: "BURGER", body: "A great burger")
article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
article.save

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save