class CreateCompanyContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :company_contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :company_id

      t.timestamps
    end
  end
end
