class Reader < ApplicationRecord
  has_many :reviews
  has_many :books, through: :reviews

  has_many :books

  validates :username, uniqueness: true, presence: true

  has_secure_password
end
