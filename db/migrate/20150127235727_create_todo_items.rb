class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.belongs_to :todo_list, index: true
      t.string :title
      t.boolean :complete, default: false

      t.timestamps
    end
    #add_foreign_key :todo_items, :todo_lists
  end
end
