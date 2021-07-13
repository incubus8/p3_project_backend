puts "Clearing old data..."
User.destroy_all
Comment.destroy_all
PetPost.destroy_all

puts "Seeding users..."

10.times do
    User.create(name: Faker::FunnyName.name)
end



10.times do
    user = User.all.sample
    likes = rand(1..1000)
    # img_url = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bhg.com%2Fpets%2Fdogs%2Fdog-names%2Fcute-dog-names%2F&psig=AOvVaw0yDSKru2Zzz6Y9-TxT5Jiu&ust=1626206322905000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCPDqkuSo3vECFQAAAAAdAAAAABAE"
    
    PetPost.create(user_id: user.id,
                    description: "Cute!",
                    img_url: "http://cdn.akc.org/content/article-body-image/keeshond_dog_pictures.jpg",
                    likes: likes
                    )
end
puts "Seeding pet posts..."


10.times do
        user = User.all.sample
        pet_post = PetPost.all.sample
        content = 'I wanna squish those cheeks!'
    
        Comment.create(content: content,
                        user_id: user.id,
                        pet_post_id: pet_post.id,
    
        )
    end

    puts "Seeding comments..."
    

    puts "Seeded!"
