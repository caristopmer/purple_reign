User.create(username: "tom", email: "tom@tom.com", password: 1234)
User.create(username: "bob", email: "bob@bob.com", password: 1234)

5.times do
  Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraphs(5), author_id: User.all.sample.id)
end

20.times do
  Comment.create(body: Faker::Lorem.paragraph, author_id: User.all.sample.id, article_id: Article.all.sample.id)
end