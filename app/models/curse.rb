class Curse < ApplicationRecord
  belongs_to :monster
  belongs_to :power
end
