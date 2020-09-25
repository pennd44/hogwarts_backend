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
Assignment.destroy_all
AssignmentQuestion.destroy_all

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

# Sorting Hat Answers and Questions

q1 = SortingHatQuestion.create(
    number: 1, 
    question: "What is the best way to solve a problem?",
    image: "https://static1.srcdn.com/wordpress/wp-content/uploads/2017/08/Harry-Potter-Goblet-of-Fire-maze.jpg?q=50&fit=crop&w=740&h=333"
)

a1a = SortingHatAnswer.create(
    house: "g",
    text: "Dare to try what others have not"
)
a1b = SortingHatAnswer.create(
    house: "r",
    text: "Use your intelligence"
)

a1c = SortingHatAnswer.create(
    house: "h",
    text: "Work with a band of friends to collaborate on an answer"
)

a1d = SortingHatAnswer.create(
    house: "s",
    text: "Find the loophole and take advantage of it"
)

q1.sorting_hat_answers << [a1a, a1b, a1c, a1d]

q2 = SortingHatQuestion.create(
    number: 2, 
    question: "If you were attending Hogwarts, which pet would you choose to take with you?"
)

a2a = SortingHatAnswer.create(

    house: "r",
    text: "Brown Owl",
    image: "https://my.wizardingworld.com/static/media/BrownOwl.5686bb8b.png"
)
a2b = SortingHatAnswer.create(
    house: "g",
    text: "Snowy Owl",
    image: "https://my.wizardingworld.com/static/media/SnowyOwl.2bbe33dd.png"
)

a2c = SortingHatAnswer.create(
    house: "h",
    text: "Barn Owl",
    image: "https://my.wizardingworld.com/static/media/BarnOwl.9327958f.png"
)

a2d = SortingHatAnswer.create(
    house: "s",
    image: "https://my.wizardingworld.com/static/media/ScreechOwl.0731be5f.png",
    text: "Screech Owl"
)

q2.sorting_hat_answers << [a2a, a2b, a2c, a2d]

q3= SortingHatQuestion.create(
    number: 3, 
    question: "What is the best action to take if you were to encounter a troll?",
    image: "https://vignette.wikia.nocookie.net/pottermore/images/9/9d/B1C10M3.jpg/revision/latest?cb=20120607124755"
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
    number: 4, 
    question: "Which spell would you cast on yourself?"
)

a4a = SortingHatAnswer.create(

    house: "g",
    text: "fly",
    image: "https://vignette.wikia.nocookie.net/harrypotter/images/1/1a/Flying_class_in_1991.jpg/revision/latest/top-crop/width/360/height/450?cb=20161213051125"
)
a4b = SortingHatAnswer.create(
    house: "r",
    text: "mind reader",
    image: "https://vignette.wikia.nocookie.net/harrypotter/images/5/5e/Mind-reading.png/revision/latest/scale-to-width-down/340?cb=20150112112416"
)

a4c = SortingHatAnswer.create(
    house: "h",
    text: "invisible",
    image: "https://vignette.wikia.nocookie.net/harrypotter/images/e/e5/Invisibility.png/revision/latest?cb=20121221021446"
)

a4d = SortingHatAnswer.create(
    house: "s",
    text: "strength",
    image: "https://vignette.wikia.nocookie.net/harrypotter/images/6/67/Superhuman_strength.png/revision/latest/window-crop/width/200/x-offset/16/y-offset/0/window-width/248/window-height/247?cb=20150112124517"
)

q4.sorting_hat_answers << [a4a, a4b, a4c, a4d]

q5= SortingHatQuestion.create(
    number: 5, 
    question: "Given the choice, would you rather invent a potion that would guarantee you:",
    image: "https://images.ctfassets.net/usf1vwtuqyxm/1Xu3upypGYkU8G2EW02oeg/2da84507e8a3588a5bf13f05f89ec341/HoraceSlughorn_PM_B6C9M1_SlughornsPotionsClass_Moment.jpg"
)


a5a = SortingHatAnswer.create(

    house: "g",
    text: "Glory"
)
a5b = SortingHatAnswer.create(
    house: "r",
    text: "Wisdom"
)

a5c = SortingHatAnswer.create(
    house: "h",
    text: "Love"
)

a5d = SortingHatAnswer.create(
    house: "s",
    text: "Power"
)

q5.sorting_hat_answers << [a5a, a5b, a5c, a5d]

q6= SortingHatQuestion.create(
    number: 6, 
    question: "Which class would you like the most?"
)


a6a = SortingHatAnswer.create(
    image: "https://i.ebayimg.com/images/g/LY4AAOSwXK1bP1Cx/s-l640.jpg",
    house: "g",
    text: "Defense Against the Dark Arts"
)
a6b = SortingHatAnswer.create(
    image: "https://i.pinimg.com/originals/b1/17/5c/b1175c427b3d47e24d6aabc3828ae30e.jpg",
    house: "r",
    text: "History of Magic"
)

a6c = SortingHatAnswer.create(
    image: "https://vignette.wikia.nocookie.net/harrypotter/images/1/14/The_Standard_Book_of_Spells_Grade_5.jpg/revision/latest?cb=20111102124711",
    house: "h",
    text: "Charms"
)

a6d = SortingHatAnswer.create(
    image: "https://i.pinimg.com/originals/25/14/ca/2514ca80f7fc7ffba5bb8c1a77fa805f.jpg", 
    house: "s",
    text: "Potions"
)

q6.sorting_hat_answers << [a6a, a6b, a6c, a6d]

cr = Assignment.create(name: "Close Reading")
cr_q1 = AssignmentQuestion.create(
    question: 'You flatter me," said Dumbledore calmly. "Voldemort had powers I will never have." (Chapter 1, Harry Potter and the Sorcerer\'s Stone'
)
cr_q2 = AssignmentQuestion.create(
    question: 'What is happening in the quote? Who is the speaker talking to?'
)
cr_q3 = AssignmentQuestion.create(
    question: 'What is the allegorical(symbolic) meaning? How does it relate to other parts of the book or stories you have heard?'
)
cr_q4 = AssignmentQuestion.create(
    question: 'What does it call for us as human beings to do?'
)

cr.assignment_questions << [cr_q1, cr_q2, cr_q3, cr_q4]

setting = Assignment.create(name: "Setting")
setting_q1 = AssignmentQuestion.create(
    question: 'TODO: Enter interesting quote'
)
setting_q2 = AssignmentQuestion.create(
    question: 'What is the mood of the passage?'
)
setting_q3 = AssignmentQuestion.create(
    question: 'What is one example of imagery that contributes to this mood?'
)
setting_q4 = AssignmentQuestion.create(
    question: 'Identify a second type of imagery in the passage that contributes to this mood.'
)

setting.assignment_questions << [setting_q1, setting_q2, setting_q3, setting_q4]














