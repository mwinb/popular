class CreatesEmployee
    attr_accessor :employee_full_name, :organization_name, :employee, :organization

    def initialize(employee_full_name: "", organization_name: "")
        @employee_full_name = employee_full_name
        @organization_name = organization_name
    end

    def build
       self.employee = Employee.new(full_name: employee_full_name)
       self.organization = Organization.new(name: organization_name)
    end

    def create
        build
        employee.organization = organization
        employee.save
    end

end