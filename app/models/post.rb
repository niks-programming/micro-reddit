class Post < ApplicationRecord
        # a post needs to have a title and body
        validates :title, :body, presence: true 

        # posts need to belong to a user
        belongs_to :user 
end
