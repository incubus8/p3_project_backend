class User < ActiveRecord::Base
    has_many :pet_posts
    has_many :comments


end