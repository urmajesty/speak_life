# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Category seeds - These are the only three categories that should be in the db.
spiritual = Category.create(name: "Spiritual")
beautiful = Category.create(name: "Beautiful")
confident = Category.create(name: "Confident")

# Post seeds
post1 = Post.create(category_id: spiritual.id, content: "God has blessed me in the heavenly realms with every spiritual blessing in Christ.", likes: 0)
post2 = Post.create(category_id: beautiful.id, content: "I am beautiful inside and out.", likes: 0)
post3 = Post.create(category_id: confident.id, content: "I act POSITIVE and CONFIDENT at all times!", likes: 0)

user_post1 = Post.create(category_id: spiritual.id, content: "My full spiritual life is evolving into a grand and more glorious light..", likes: 0)
user_post2 = Post.create(category_id: beautiful.id, content: "I am beautiful in mind, body and spirit.", likes: 0)
user_post3 = Post.create(category_id: confident.id, content: "I am skilled, intelligent, and confident as I create an incredible masterpiece with my business.", likes: 0)

# Affirmation seeds
love_word = Affirmation.create(affirmation_keyword: "love")

post1.affirmations.create(affirmation_keyword: "healthy")
post1.affirmations.create(affirmation_keyword: "happiness")

post3.affirmations.create(affirmation_keyword: "wisdom")
post3.affirmations << love_word

user_post1.affirmations.create(affirmation_keyword: "calm")

user_post2.affirmations.create(affirmation_keyword: "intentional")
user_post2.affirmations.create(affirmation_keyword: "wealh")
user_post2.affirmations << love_word

user_post3.affirmations.create(affirmation_keyword: "success")