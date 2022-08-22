class Post < ApplicationRecord
  validates :store_name, presence: true
  validates :price, presence: true, format: {with: /\A[0-9]+\z/}, numericality: {only_integer: true}

  belongs_to :user
  belongs_to :product
end
