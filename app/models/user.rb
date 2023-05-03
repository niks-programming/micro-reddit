class User < ApplicationRecord
    # a user needs to have a username, email and password
    validates :username, :email, :password, presence: true 

    # a username and email need to be unique
    validates :username, :email, uniqueness: true 
end
