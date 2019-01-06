class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.date :due_at
      t.integer :company_id
      t.boolean :archived, null: false, default: false

      t.timestamps
    end
  end
end
