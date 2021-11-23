require "faker"
# TODO: Write a seed to insert 10 posts in the database

puts 'Creating 10 fake posts...'
10.times do
  article = Article.new(
    title: Faker::GreekPhilosophers.name,
    content: Faker::Internet.url
  )
  article.save!
end
puts 'Finished!'
