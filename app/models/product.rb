class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one_attached :image

  validates :product_name, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
