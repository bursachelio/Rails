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
                       { title: 'Test 1', level: 1, category_id: categories[0].id, author_id: users[0].id },
                       { title: 'Test 2', level: 2, category_id: categories[0].id, author_id: users[1].id },
                       { title: 'Test 3', level: 3, category_id: categories[0].id, author_id: users[2].id }
                     ])

# Создание вопросов для тестов
questions = Question.create!([
                               { content: 'Question 1', test_id: tests[0].id },
                               { content: 'Question 2', test_id: tests[0].id },
                               { content: 'Question 3', test_id: tests[1].id },
                               { content: 'Question 4', test_id: tests[1].id },
                               { content: 'Question 5', test_id: tests[2].id },
                               { content: 'Question 6', test_id: tests[2].id }
                             ])

# Создание ответов для вопросов
Answer.create!([
  { body: 'Answer 1 for Question 1', correct: true, question_id: questions[0].id },
  { body: 'Answer 2 for Question 1', correct: false, question_id: questions[0].id },
  { body: 'Answer 3 for Question 1', correct: false, question_id: questions[0].id },
  { body: 'Answer 4 for Question 1', correct: false, question_id: questions[0].id },
  { body: 'Answer 1 for Question 2', correct: false, question_id: questions[1].id },
  { body: 'Answer 2 for Question 2', correct: true, question_id: questions[1].id },
  { body: 'Answer 3 for Question 2', correct: false, question_id: questions[1].id },
  { body: 'Answer 4 for Question 2', correct: false, question_id: questions[1].id },
  { body: 'Answer 1 for Question 3', correct: false, question_id: questions[2].id },
  { body: 'Answer 2 for Question 3', correct: false, question_id: questions[2].id },
  { body: 'Answer 3 for Question 3', correct: true, question_id: questions[2].id },
  { body: 'Answer 4 for Question 3', correct: false, question_id: questions[2].id },
  { body: 'Answer 1 for Question 4', correct: false, question_id: questions[3].id },
  { body: 'Answer 2 for Question 4', correct: false, question_id: questions[3].id },
  { body: 'Answer 3 for Question 4', correct: false, question_id: questions[3].id },
  { body: 'Answer 4 for Question 4', correct: true, question_id: questions[3].id },
  { body: 'Answer 1 for Question 5', correct: false, question_id: questions[4].id },
  { body: 'Answer 2 for Question 5', correct: true, question_id: questions[4].id },
  { body: 'Answer 3 for Question 5', correct: false, question_id: questions[4].id },
  { body: 'Answer 4 for Question 5', correct: false, question_id: questions[4].id },
  { body: 'Answer 1 for Question 6', correct: true, question_id: questions[5].id },
  { body: 'Answer 2 for Question 6', correct: false, question_id: questions[5].id },
  { body: 'Answer 3 for Question 6', correct: false, question_id: questions[5].id },
  { body: 'Answer 4 for Question 6', correct: false, question_id: questions[5].id }
])

# Создание результатов для пользователей и тестов
Result.create!([
                 { user_id: users[0].id, test_id: tests[0].id },
                 { user_id: users[1].id, test_id: tests[1].id },
                 { user_id: users[2].id, test_id: tests[2].id }
               ])

puts 'Seed data created successfully!'
