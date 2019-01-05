class AddTaxToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :local_tax, :float
  end
end
