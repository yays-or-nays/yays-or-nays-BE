# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HotTake.destroy_all
Tag.destroy_all


food_tag = Tag.create(category: "Food & Beverage")
entertainment_tag = Tag.create(category: "Entertainment")
software = Tag.create(category: "Software Development")

software.hot_takes.create!(picture: "2", question: "Javascript is a good coding language", yes_vote: 1)
software.hot_takes.create(picture: "1", question: "Ruby is a great beginner coding language", yes_vote: 3)
software.hot_takes.create(picture: "1", question: "Javascript has too many unecessary brackets", yes_vote: 2)
software.hot_takes.create(picture: "1", question: "If you use VS Code and don't use the built in terminal it's weird", yes_vote: 1, no_vote: 1)

food_tag.hot_takes.create(picture: "1", question: "IPAs taste like bile", yes_vote: 1)
food_tag.hot_takes.create(picture: "1", question: "Boneless wings are better than bone-in wings", yes_vote: 2, no_vote: 3)
food_tag.hot_takes.create(picture: "1", question: "Whiteclaw does the job and shouldnt be downplayed", yes_vote: 1)
food_tag.hot_takes.create(picture: "1", question: "Connecticut is the pizza capital of the world", yes_vote: 2)
food_tag.hot_takes.create(picture: "1", question: "Angel Hair is the worst pasta", yes_vote: 1, no_vote: 2)
food_tag.hot_takes.create(picture: "1", question: "Dunkin Donuts > Krispy Kreme", yes_vote: 2, no_vote: 1)
food_tag.hot_takes.create(picture: "1", question: "Light mode on any application is terrible", yes_vote: 1, no_vote: 2)
food_tag.hot_takes.create(picture: "1", question: "Whataburger and In n Out are the same thing", yes_vote: 1, no_vote: 2)
food_tag.hot_takes.create(picture: "1", question: "Most songs would be better without the flute", yes_vote: 1, no_vote: 2)
food_tag.hot_takes.create(picture: "1", question: "Tomatoes are a drink", no_vote: 2)
food_tag.hot_takes.create(picture: "1", question: "Cinnamon is better in savory foods", yes_vote: 1)
food_tag.hot_takes.create(picture: "1", question: "Pizza is overrated", yes_vote: 1)
food_tag.hot_takes.create(picture: "1", question: "Soup is a drink", yes_vote: 1, no_vote: 2)

entertainment_tag.hot_takes.create(picture: "1", question: "The Queen's Gambit Needs More Chess", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "The Chimera ant arc in HxH is not only the best arc of the series, but possibly the best of any anime/manga ever, period.", yes_vote: 1, no_vote: 2)
entertainment_tag.hot_takes.create(picture: "1", question: "The Empire did nothing wrong.", yes_vote: 1, no_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Nicolas Cage is a good actor", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Tom Cruise sucks at acting", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Marvel movies haven't been good since Iron Man 1", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Mark Ruffalo is the hottest avenger", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "When people say Mark Ruffalo I always picture Mark Cuban", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "tik tok has taught me more than all previous schooling combined", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "most songs would be better without the flute", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Tik Tok has taught me more than all previous schooling combined", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Socks are basically weak shoes", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Clowns > standup clowns", yes_vote: 1)
entertainment_tag.hot_takes.create(picture: "1", question: "Avatar the Last Airbender isn’t an anime.", yes_vote: 1)
