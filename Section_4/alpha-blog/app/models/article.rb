class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  # belongs_to :user
  # has_many :comments, dependent: :destroy
  # validates :title, presence: true, length: { minimum: 5 }
  # validates :text, presence: true, length: { minimum: 10 }
end

# article.save
# article.errors.full_messages
