class Skill < ApplicationRecord
  validates :points, numericality: { greater_than: 0 ,less_than_or_equal_to: 5}
  belongs_to :user
end
