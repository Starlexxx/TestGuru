# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(email: 'user@gmail.com', password: 'passwd')

categories = Category.create([
                               { title: 'Ruby' },
                               { title: 'HTML/CSS' },
                               { title: 'JS' },
                               { title: 'SQL' }
                             ])

tests = Test.create([
                      { title: 'String interpolation', level: 1, category_id: categories[0].id,
                        author_id: user.id },
                      { title: 'Exeptions', level: 2, category_id: categories[0].id, author_id: user.id },
                      { title: 'Unordered list', level: 1, category_id: categories[1].id, author_id: user.id },
                      { title: 'SELECT SQL', level: 2, category_id: categories[3].id, author_id: user.id },
                      { title: 'JOIN SQL', level: 3, category_id: categories[3].id, author_id: user.id }
                    ])

questions = Question.create([
                              { body: 'How to select everything from table cars?', test_id: tests[3].id },
                              { body: 'What construction do we use for interpolation?', test_id: tests[0].id },
                              { body: 'What tag creates unordered list', test_id: tests[2].id },
                              {
                                body: 'Exeption handling when an object that was passed as an argument is not of the expected type?', test_id: tests[1].id
                              }
                            ])
Answer.create([
                { body: '!{}', question_id: questions[1].id },
                { body: '#{}', is_correct: true, question_id: questions[1].id },
                { body: '/{}', question_id: questions[1].id },
                { body: '{}', question_id: questions[1].id },
                { body: 'SELECT * FROM cars', is_correct: true, question_id: questions[0].id },
                { body: 'CHOOSE * FROM cars', question_id: questions[0].id },
                { body: 'SELECT everything FROM cars', question_id: questions[0].id },
                { body: 'cars.all', question_id: questions[0].id },
                { body: '<ol>', question_id: questions[2].id },
                { body: 'TypeError', is_correct: true, question_id: questions[3].id }
              ])
