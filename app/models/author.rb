class Author < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 15 }
end
