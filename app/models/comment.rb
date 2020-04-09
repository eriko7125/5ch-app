class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :name, :body, presence:true
end
