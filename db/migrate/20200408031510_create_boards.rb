class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.integer :category_board_id
      t.string :title, null: false
      t.string :editor, null: false

      t.timestamps
    end
  end
end
