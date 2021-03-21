class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new_employee
    @employee = Employee.new(company_id: params[:id])
  end


end