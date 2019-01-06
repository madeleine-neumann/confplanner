class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :postalcode
      t.string :city
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
