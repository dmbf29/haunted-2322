class Monster < ApplicationRecord
  belongs_to :house # creates the method: monster.house
  validates :name, presence: true, uniqueness: true

  # def image_url
  #   super || "custom url"
  # end
end
