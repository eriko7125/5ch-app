class CreateCategoryBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :category_boards do |t|
      t.integer :category_id, null: false
      t.integer :board_id, null: false

      t.timestamps
    end
  end
end
