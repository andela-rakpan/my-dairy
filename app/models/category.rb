class Category < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  belongs_to :user
end
