class RemoveCategoryBoardIdToBoard < ActiveRecord::Migration[5.2]
  def up
    remove_column :boards, :category_board_id
    remove_column :categories, :category_board_id
  end

  def down
    add_column :boards, :category_board_id, :integer
    add_column :categories, :category_board_id, :integer
  end
end
