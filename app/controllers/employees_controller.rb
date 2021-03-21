class EmployeesController < ApplicationController
  def create
    @employee = Employee.create(params.require(:employee).permit(:name, :title, :company_id))
    
    if @employee.valid?
      @company = Company.find(@employee.company_id)  
      redirect_to company_path(@company)
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path(params[:employee][:company_id])
    end
  end
end