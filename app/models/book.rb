class Book < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :genre, presence: true, length: { minimum: 3, maximum: 20 }

  belongs_to :author
  belongs_to :reader
  has_many :reviews
  has_many :readers, through: :reviews

  accepts_nested_attributes_for :author
end
