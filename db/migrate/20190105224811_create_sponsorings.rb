class CreateSponsorings < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsorings do |t|
      t.string :name
      t.integer :net_price
      t.text :description

      t.timestamps
    end
  end
end
