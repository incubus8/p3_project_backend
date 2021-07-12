class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :pet_post




end