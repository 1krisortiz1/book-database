class Book < ApplicationRecord
  belongs_to :author
  belongs_to :reader
  has_many :reviews
  has_many :readers, through: :reviews
end
