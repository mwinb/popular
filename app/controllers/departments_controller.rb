class DepartmentsController < ApplicationController

  def new
    @department = Department.ne
  end

  def index
    @departments = Department.all
  end

  def create
    @workflow = CreateDepartment.new(
      name: params[:department][:name],
      organization: params[:department][:organization],
      employees: params[:department][:employees]
    )

    if @workflow.save
      redirect_to department_path
    else
      render :new
    end
  end
end
