class PhysicalInformation < ApplicationRecord
  belongs_to :user, optional: true
  validates :age, presence: true,
  numericality: { only_integer: true, greater_than_or_equal_to: 15, less_than_or_equal_to: 130 },
  format: { with: /\A[0-9]+\z/ }
  validates :body_heigth, presence: true,
  numericality: { only_integer: true, greater_than_or_equal_to: 100, less_than_or_equal_to: 250 },
  format: { with: /\A[0-9]+\z/ }
  validates :body_weigth, presence: true,
  numericality: { only_integer: true, greater_than_or_equal_to: 30, less_than_or_equal_to: 200 },
  format: { with: /\A[0-9]+\z/ }
  validates :basal_metabolism, numericality: { only_integer: true }
end
