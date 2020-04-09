class Board < ApplicationRecord
  has_many :category_boards, dependent: :destroy
  has_many :categoriess, through: :category_boards
  has_many :comments, dependent: :destroy
end
