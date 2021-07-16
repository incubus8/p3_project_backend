class PetPost < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments
    

    def comments_with_user
        self.comments.map do |comment|
            {
                id: comment.id,
                content: comment.content,
                user_name: comment.user.name
            }
        end 
    end 

end
