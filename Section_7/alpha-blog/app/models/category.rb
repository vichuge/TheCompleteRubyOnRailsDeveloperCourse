class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
  # validate_uniqueness_of :name
  # validate_length_of :name, minimum: 3, maximum: 25
end
