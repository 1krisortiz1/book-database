class Reader < ApplicationRecord
  has_many :reviews
  has_many :books, through: :reviews

  has_many :books

  validates :username, uniqueness: true, presence: true, length: { minimum: { minimum: 3, maximum: 15 }

  has_secure_password
end
