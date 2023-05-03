class User < ApplicationRecord
    # a user needs to have a username, email and password
    validates :username, :email, :password, presence: true 

    # a username and email need to be unique
    validates :username, :email, uniqueness: true 

    # a user can have many posts and comments
    has_many :posts
    has_many :comments
end
