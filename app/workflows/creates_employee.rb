class CreatesEmployee
    attr_accessor :employee_full_name, :employee_dob, :employee_job_title, :organization_name, :employee, :organization

    def initialize(employee_full_name: "", organization_name: "", employee_dob: "", employee_job_title: "")
        @employee_full_name = employee_full_name
        @organization_name = organization_name
        @employee_dob = employee_dob
        @employee_job_title = employee_job_title
    end

    def build
       self.employee = Employee.new(full_name: employee_full_name, dob: employee_dob, job_title: employee_job_title)
       self.organization = Organization.new(name: organization_name)
    end

    def create
        build
        employee.organization = organization
        result = employee.save
        @success = result
    end

    def success?
        @success
    end

end