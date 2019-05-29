class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def index
    @employees = Employee.all
  end

  def create
    @workflow = CreatesEmployee.new(
    employee_full_name: params[:employee][:full_name],
    organization_id: params[:employee][:organization_id],
    employee_dob: params[:employee][:dob],
    employee_job_title: params[:employee][:job_title])
   
    @workflow.create

    if @workflow.success?
     redirect_to employees_path
    else
     @employee = @workflow.employee
     render :new
    end
  end
end
