puts "Clearing old data..."
User.destroy_all
Comment.destroy_all
PetPost.destroy_all

puts "Seeding users..."

10.times do
    User.create(name: Faker::FunnyName.name)
end


puts "Seeding pet posts..."
    # ids = User.pluck(:id)
    id = User.ids.sample
# hard code 5-10 unique PetPosts
    
    PetPost.create(user_id: 1,
                    description: "So much floof!",
                    img_url: "https://i2-prod.mirror.co.uk/incoming/article22568810.ece/ALTERNATES/s1200b/0_Adorable-dog-leaves-people-baffled-as-its-face-looks-so-human-it-doesnt-seem-real.jpg",
                    likes: rand(1..1000),
                    breed: "Toy Poodle",
                    name: "Kokoro",
                    )

    PetPost.create(user_id: User.all.sample.id,
                    description: "Sorry, I'm not gluten free...",
                    img_url: "https://static.boredpanda.com/blog/wp-content/uploads/2020/06/funny-animals-stuck-in-bread-8-5ee76818ecb57__700.jpg",
                    likes: rand(1..1000),
                    breed: "Pomeranian",
                    name: "Baguette"
                    )

    PetPost.create(user_id: User.all.sample.id,
                    description: "I go sploot after a long day!",
                    img_url: "http://www.luvbat.com/uploads/funny_corgi_puppy_napping__5429175095.jpg",
                    likes: rand(1..1000),
                    breed: "Corgi",
                    name: "Meatball"
                    )

    PetPost.create(user_id: User.all.sample.id,
                    description: "I'm not a player, I just sag a lot!",
                    img_url: "https://static.boredpanda.com/blog/wp-content/uploads/2015/04/bulldog-puppy-17__605.jpg",
                    likes: rand(1..1000),
                    breed: "English Bulldog",
                    name: "Sir Sags-A-Lot"
                    )

    PetPost.create(user_id: User.all.sample.id,
                    description: "How do you like my smile?",
                    img_url: "https://justsomething.co/wp-content/uploads/2017/12/this-is-ryujii-the-handsome-and-ridiculously-cute-shiba-from-japan-01-12.jpg",
                    likes: rand(1..1000),
                    breed: "Shiba Inu",
                    name: "Ryujii"
                    )


puts "Seeding comments..."

        user = User.all.sample
        pet_post = PetPost.all.sample
            
        Comment.create(content: "Such a cute ball of fur!",
                        user_id: User.all.sample.id,
                        pet_post_id: 1,
        )

        Comment.create(content: "Kokoro is so adorable!!",
                        user_id: User.all.sample.id,
                        pet_post_id: 1,
        )

        Comment.create(content: "Baguette looks like she's inbread",
                        user_id: User.all.sample.id,
                        pet_post_id: 2,
        )

        Comment.create(content: "Looks like Meatball had a long day!",
                        user_id: User.all.sample.id,
                        pet_post_id: 3,
        )

        Comment.create(content: "Such cute wrinkles!!",
                        user_id: User.all.sample.id,
                        pet_post_id: 4,
        )

        Comment.create(content: "Haha, what a cute name!",
                        user_id: User.all.sample.id,
                        pet_post_id: 4,
        )

        Comment.create(content: "I wish I could squish those cheeks!!",
                        user_id: User.all.sample.id,
                        pet_post_id: 5,
        )

        Comment.create(content: "Ryujii has the cutest smile.",
                        user_id: User.all.sample.id,
                        pet_post_id: 5,
        )

        Comment.create(content: "Omg she's so adorable with her tongue out like that",
                        user_id: User.all.sample.id,
                        pet_post_id: 1,
        )
 

    puts "Seeded!"