class Curse < ApplicationRecord
  belongs_to :monster # medusa
  belongs_to :power # turn to stone
  validates :monster, uniqueness: { scope: :power }
  # validates :power, uniqueness: { scope: :monster }
end
