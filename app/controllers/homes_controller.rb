class HomesController < ApplicationController
  def top
    @boards = Board.all.order(created_at: :desc)
  end
end
