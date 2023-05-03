class Comment < ApplicationRecord
    # a comment needs to have content and a post and user who own it
    validates :content, :post_id, :user_id, presence: true 

    # comments need to belong to a post and user
    belongs_to :user
    belongs_to :post
end
