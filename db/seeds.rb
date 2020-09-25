# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'pry'
require 'rest-client'

response = RestClient.get("http://hp-api.herokuapp.com/api/characters/")
data = JSON.load(response)

data.each do |character|
    Character.create(   
        name: character["name"],
        house: character["house"],
        is_student: character["hogwartsStudent"],
        image: character["image"],
        birthyear: character["yearOfBirth"],
        patronus: character["patronus"]
    )
end