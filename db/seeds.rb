# frozen_string_literal: true

user = User.find_or_initialize_by(email: 'test@test.com')

unless user.persisted?
  user.password = '123456abc@'

  user.save!
end

10.times do
  break if user.stories.count >= 10

  user.stories.create(title: Faker::Book.title, content: Faker::Lorem.paragraph)
end
