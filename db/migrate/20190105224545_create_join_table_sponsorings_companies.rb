class CreateJoinTableSponsoringsCompanies < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sponsorings, :companies do |t|
      t.index [:sponsoring_id, :company_id]
    end
  end
end
