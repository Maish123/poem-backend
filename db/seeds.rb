puts "🌱 Seeding spices..."

# Seed your database here
## Author details
10.times do
    Author.create(name: Faker::Name.name)
end

3.times do
    Genre.create(genre_name: Faker::Music.genre)
end

30.times do
    Poem.create(
        title: Faker::Lorem.word,
        content: Faker::Quote.matz,
        likes:rand(1...50),
        author_id:rand(1...10),
        genre_id:rand(1..3)
    )
end


puts "✅ Done seeding!"
