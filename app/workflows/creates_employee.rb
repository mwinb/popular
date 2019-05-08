class CreatesEmployee
    attr_accessor :employee_full_name, :employee_dob, :organization_name, :employee, :organization

    def initialize(employee_full_name: "", organization_name: "", employee_dob: "")
        @employee_full_name = employee_full_name
        @organization_name = organization_name
        @employee_dob = employee_dob
    end

    def build
       self.employee = Employee.new(full_name: employee_full_name, dob: employee_dob)
       self.organization = Organization.new(name: organization_name)
    end

    def create
        build
        employee.organization = organization
        employee.save
    end

end