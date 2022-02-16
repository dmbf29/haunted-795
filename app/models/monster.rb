class Monster < ApplicationRecord
  belongs_to :haunted_house
  validates :name, presence: true
end
