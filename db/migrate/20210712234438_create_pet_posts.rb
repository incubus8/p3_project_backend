class CreatePetPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_posts do |t|
      t.integer :likes
      t.integer :user_id
      t.string :img_url
      t.string :description
      t.string :name
      t.string :breed
    end
  end
end
