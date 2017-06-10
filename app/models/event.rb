class Event < ApplicationRecord
  validates :description, presence: true
  validates :category_id, presence: true

  belongs_to :user
  belongs_to :category
  has_many :comments
end
