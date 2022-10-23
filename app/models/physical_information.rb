class PhysicalInformation < ApplicationRecord
  belongs_to :user, optional: true
  validates :age, :body_heigth, :body_weigth ,presence: true
end
