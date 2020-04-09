class CommentsController < ApplicationController
  def create
    board = Board.find(params[:board_id])
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.board_id = board.id
    if comment.save
      redirect_to board_path(board.id), notice: "【コメントを投稿しました】"
    else
      categories = Category.all
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :board_id, :name, :body)
  end
end
