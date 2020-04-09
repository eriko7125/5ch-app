class BoardsController < ApplicationController
  def index
    @board = Board.new
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @comments = Comment.where(board_id: params[:id])
    @comment = Comment.new
  end

  def edit
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      # @category_board = CategoryBoard.new
      # @category_board.board_id = @board.id
      # @category_board.category_id = @board
      # @category_board.save
      redirect_to boards_path, notice: "スレッドを作成しました"
    else
      @boards = Board.all
      render action: :index
    end
  end
  private

  def board_params
    params.require(:board).permit(:title, :editor, category_ids: [])
  end
end