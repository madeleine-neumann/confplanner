class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.includes(:company_contacts).find(params[:id])
  end
end
