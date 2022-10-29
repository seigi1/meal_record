class Record < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image
  validates :meal_name, presence: true
  validates :calorie, :carbohydrate, :fat, :protein ,presence: true, numericality: { only_integer: true }

  def self.search(search)
    @records = Record.all
    if search != ""
      Record.where('meal_time LIKE(?)', "%#{search}%")
    else
      redirect_to root_path
    end
  end
end
