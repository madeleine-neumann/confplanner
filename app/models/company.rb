class Company < ApplicationRecord
  has_many :company_contacts
  has_many :todos
  has_and_belongs_to_many :sponsorings

end
