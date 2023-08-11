# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# Character.create(name: "Luke", movie: movies.first)

categories = Category.create!([
  { title: 'Category 1' },
  { title: 'Category 2' },
  { title: 'Category 3' }
])

# Создание пользователей
users = User.create!([
  { name: 'User 1', email: 'user1@example.com' },
  { name: 'User 2', email: 'user2@example.com' },
  { name: 'User 3', email: 'user3@example.com' }
])

# Создание тестов
tests = Test.create!([
  { title: 'Test 1', level: 1, category: categories[0], author: users[0] },
  { title: 'Test 2', level: 2, category: categories[0], author: users[1] },
  { title: 'Test 3', level: 3, category: categories[0], author: users[2] }
])

# Создание вопросов для тестов
questions = Question.create!([
  { content: 'Какая деталь автомобиля получила своё название от одного из семи чудес Древнего мира?', test: tests[0] },
  { content: 'С каким из этих государств Румыния не имеет общих границ?', test: tests[0] },
  { content: 'Про кого из персонажей «Гамлета» Гертруда, королева датская, говорит в пьесе: «Он тучен и одышлив»?', test: tests[1] },
  { content: 'Кто возглавлял экспедицию, совершившую первое кругосветное плавание?', test: tests[1] },
  { content: 'Какое из этих государств не имеет морских берегов?', test: tests[2] },
  { content: 'Что такое фьючерс?', test: tests[2] }
])

# Создание ответов для вопросов
Answer.create!([
  { body: 'Фара', correct: true, question: questions[0] },
  { body: 'Бампер', correct: false, question: questions[0] },
  { body: 'Капот', correct: false, question: questions[0] },
  { body: 'Лобовое стекло', correct: false, question: questions[0] },
  { body: 'Сербия', correct: false, question: questions[1] },
  { body: 'Россия', correct: true, question: questions[1] },
  { body: 'Венгрия', correct: false, question: questions[1] },
  { body: 'Швейцария', correct: false, question: questions[1] },
  { body: 'Клавдий, король датский', correct: false, question: questions[2] },
  { body: 'Горацио, друг Гамлета', correct: false, question: questions[2] },
  { body: 'Гамлет, сын Гертруды', correct: true, question: questions[2] },
  { body: 'Answer 4 for Question 1', correct: false, question: questions[2] },
  { body: 'Христофор Колумб', correct: false, question: questions[3] },
  { body: 'Афанасий Никитин', correct: false, question: questions[3] },
  { body: 'Фердинанд Магеллан', correct: false, question: questions[3] },
  { body: 'Фернан Магеллан', correct: true, question: questions[3] },
  { body: 'Китай', correct: false, question: questions[4] },
  { body: 'Монголия', correct: true, question: questions[4] },
  { body: 'Индонезия', correct: false, question: questions[4] },
  { body: 'Австрия', correct: false, question: questions[4] },
  { body: 'Вид биржевого контракта', correct: true, question: questions[5] },
  { body: 'Сумма денег в казне государства', correct: false, question: questions[5] },
  { body: 'План на будущее', correct: false, question: questions[5] },
  { body: 'Парус на яхте', correct: false, question: questions[5] }
])

# Создание результатов для пользователей и тестов
Result.create!([
  { user: users[0], test: tests[0] },
  { user: users[1], test: tests[1] },
  { user: users[2], test: tests[2] }
])

puts 'Seed data created successfully!'
