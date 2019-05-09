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
         employee_dob: params[:employee][:dob],
         employee_job_title: params[:employee][:job_title])
        # @employee = Employee.new(
        #     full_name: params[:employee][:full_name],
        #     dob: params[:employee][:dob],
        #     job_title: params[:employee][:job_title],
        #     organization: Organization.new(name: "test", location: "butt")
        # )
        #byebug
        if @workflow.create
            redirect_to employees_path
        else 
            render :new
        end
        #@workflow.create
        #redirect_to employees_path
    end
end
