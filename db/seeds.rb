# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'pry'
require 'rest-client'

Character.destroy_all
SortingHatQuestion.destroy_all
SortingHatAnswer.destroy_all

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

q1 = SortingHatQuestion.create(
    question: "What is the best way to solve a problem?"
)

q2 = SortingHatQuestion.create(
    question: "What is the most valuable trait in a person?"
)

q3= SortingHatQuestion.create(
    question: "What is the best action to take if you were to encounter a troll?"
)

a3a = SortingHatAnswer.create(

    house: "g",
    text: "Fight the troll bravely"
)
a3b = SortingHatAnswer.create(
    house: "r",
    text: "Outwit the troll through wordplay"
)

a3c = SortingHatAnswer.create(
    house: "h",
    text: "Loyally support your friends who are fighting the troll"
)

a3d = SortingHatAnswer.create(
    house: "s",
    text: "Seek to make allies with the troll to intimidate others"
)

q3.sorting_hat_answers << [a3a, a3b, a3c, a3d]


q4= SortingHatQuestion.create(
    question: "Which spell would you cast on yourself?"
)

a4a = SortingHatAnswer.create(

    house: "g",
    text: "fly"
)
a4b = SortingHatAnswer.create(
    house: "r",
    text: "mind reader"
)

a4c = SortingHatAnswer.create(
    house: "h",
    text: "invisible"
)

a4d = SortingHatAnswer.create(
    house: "s",
    text: "strength"
)

q4.sorting_hat_answers << [a4a, a4b, a4c, a4d]







