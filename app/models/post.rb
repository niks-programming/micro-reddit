class Post < ApplicationRecord
        # a post needs to have a title and body
        validates :title, :body, :user_id, presence: true 

        # posts need to belong to a user
        belongs_to :user 

        # posts can have many comment
        has_many :comments
end
