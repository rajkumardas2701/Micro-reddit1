class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :post_content, presence: true, length: { minimum: 20, maximum: 200 }
end
