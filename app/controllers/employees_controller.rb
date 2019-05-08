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
        organization_name: params[:organization_name],
        employee_dob: params[:employee][:dob])
        @workflow.create
        redirect_to employees_path
    end
end
