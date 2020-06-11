class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment_content, presence: true, length: { minimum: 20, maximum: 200 }
end
