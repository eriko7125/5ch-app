class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @categories = Category.all
    @comment = Comment.new
    @board = Board.where(board_id: params[:id])
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "【カテゴリを作成しました】"
    else
      @categories = Category.all
      render action: :index
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
