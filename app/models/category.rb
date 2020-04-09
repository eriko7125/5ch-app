class Category < ApplicationRecord
  has_many :category_boards, dependent: :destroy
  has_many :boards, through: :category_boards

  validates :name, presence:true
end
