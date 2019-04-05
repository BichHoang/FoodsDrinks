class Category < ApplicationRecord
  has_many :products
  has_many :subcategories, class_name: :Category, foreign_key: :parent_id, dependent: :destroy

  scope :basic_category, ->{where(parent_id: 0)}

  validates :name, presence: true, uniqueness: true,
    length: {maximum: Settings.category_max_length}
end
