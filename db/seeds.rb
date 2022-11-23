# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# movies = Movie.create([{ title: "Star Wars" }, { title: "Lord of the Rings" }])
require 'json'
Movie.destroy_all
movies = JSON.parse(File.read("./public/movies.json"))


movies.each do |movie|
  Movie.create(title: movie["title"])
end

puts "#{Movie.all.count} movies created"
