# Создание категорий
category1 = Category.create(title: 'Category 1')
category2 = Category.create(title: 'Category 2')

# Создание пользователей
user1 = User.create(name: 'User 1')
user2 = User.create(name: 'User 2')

# Создание тестов
test1 = Test.create(title: 'Test 1', level: 1, category: category1)
test2 = Test.create(title: 'Test 2', level: 2, category: category2)

# Создание вопросов
question1 = Question.create(content: 'Question 1', test_id: test1.id)
question2 = Question.create(content: 'Question 2', test_id: test2.id)

# Создание ответов
answer1 = Answer.create(body: 'Answer 1', question: question1, correct: true)
answer2 = Answer.create(body: 'Answer 2', question: question2, correct: false)
