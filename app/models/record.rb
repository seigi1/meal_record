class Record < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image
  validates :meal_name, presence: true
  validates :calorie, :carbohydrate, :fat, :protein ,presence: true, numericality: { only_integer: true }
end
