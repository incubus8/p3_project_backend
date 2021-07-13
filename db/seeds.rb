puts "Clearing old data..."
User.destroy_all
Comment.destroy_all
PetPost.destroy_all

puts "Seeding users..."

10.times do
    User.create(name: Faker::FunnyName.name)
end


puts "Seeding pet posts..."

# hard code 5-10 unique PetPosts

10.times do
    user = User.all.sample
    likes = rand(1..1000)
    breed = Faker::Creature::Dog.breed
    name = Faker::Creature::Dog.name
    description = Faker::Creature::Dog.unique.meme_phrase
    
    PetPost.create(user_id: user.id,
                    description: description,
                    img_url: "http://cdn.akc.org/content/article-body-image/keeshond_dog_pictures.jpg",
                    likes: likes,
                    breed: breed,
                    name: name
                    )
end

puts "Seeding comments..."

25.times do
        user = User.all.sample
        pet_post = PetPost.all.sample
        content = 'I wanna squish those cheeks!'
            
        Comment.create(content: content,
                        user_id: user.id,
                        pet_post_id: pet_post.id,
                        
    
                        
        )
    end

    

    puts "Seeded!"