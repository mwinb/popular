class EmployeesController < ApplicationController
    def new
        @employee = Employee.new
    end

    def index
        @employee = Employee.all
    end

    def create
        @workflow = CreatesEmployee.new(
        full_name: params[:employee][:full_name])
        @workflow.create
        redirect_to employees_path
    end
end
