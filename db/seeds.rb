require 'date'
puts "🌱 Seeding spices..."

# Seed your database here
# create users
10.times do
    user = User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "password"
    )
  end
  # run a loop 50 times
  50.times do |i|

        # start_date = Date.new(2023, 1, 1)
        # end_date = Date.new(2023, 12, 31)

        # random_date = Faker::Date.between(start_date: start_date, end_date: end_date)
        Task.create(
          user_id: rand(1..10),
          name: Faker::Name.name,
          description: Faker::Lorem.sentence,
          date: Faker::Date.between(from: '2023-03-03', to: '2023-03-05'),     
          due_date: Faker::Date.between(from: '2023-01-01', to: '2023-03-31'),
          completion_status: ['In progress', 'Completed', 'On hold'].sample,
        )
      end

puts "✅ Done seeding!"