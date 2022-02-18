class Monster < ApplicationRecord
  belongs_to :haunted_house
  has_many :curses, dependent: :destroy  # medusa.curses
  has_many :powers, through: :curses     # medusa.powers
  validates :name, presence: true
  has_one_attached :photo
end
