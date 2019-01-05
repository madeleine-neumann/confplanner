class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street
      t.string :postal_code
      t.string :city

      t.timestamps
    end
  end
end
