# frozen_string_literal: true

user = User.find_or_initialize_by(email: 'test@test.com')
user1 = User.find_or_initialize_by(email: 'test1@test.com')

unless user.persisted?
  user.password = '123456abc@'

  user.save!
end

unless user1.persisted?
  user1.password = '123456abc@'

  user1.save!
end

10.times do
  break if user.stories.count >= 10 && user1.stories.count >= 10

  unless user.stories.count >= 10
    user.stories.create(
      title: Faker::Book.title,
      content: Faker::Lorem.paragraph
    )
  end

  next if user1.stories.count >= 10

  user1.stories.create(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph
  )
end
