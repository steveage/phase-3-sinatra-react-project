class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.string :due_date
      t.integer :effort
      t.timestamps
    end
  end
end
