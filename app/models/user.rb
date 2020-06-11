class User < ApplicationRecord
  has_many :posts
  has_many :comments

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 12 }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { minimum: 2, maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
end
