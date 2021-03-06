class Review < ApplicationRecord
  belongs_to :reader
  belongs_to :book

  validates :title, presence: true
  validates :content, presence: true
  validates :stars, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 6}
end
