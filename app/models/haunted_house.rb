class HauntedHouse < ApplicationRecord
  has_many :monsters, dependent: :destroy
  validates :name, presence: true
end

# WITH dd
# haunted_house.destroy # it will destroy all of the monster associated to it

# withOUT dd
# haunted_house.destroy # it will block me from destroying this house
