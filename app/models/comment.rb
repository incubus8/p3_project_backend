class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :pet_post

    def w_user 
        {
            id: self.id,
            content: self.content,
            user_name: self.user.name
        }
    end 


end