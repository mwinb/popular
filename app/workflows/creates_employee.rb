class CreatesEmployee
    attr_accessor :employee_full_name, :employee_dob, :employee_job_title, :organization_id, :employee, :organization

    def initialize(employee_full_name: nil,
                   organization_id: "",
                   employee_dob: "",
                   employee_job_title: "")
        @employee_full_name = employee_full_name
        @organization_id = organization_id
        @employee_dob = employee_dob
        @employee_job_title = employee_job_title
    end

    def build
      self.employee = Employee.new(full_name: employee_full_name,
                                   dob: employee_dob,
                                   job_title: employee_job_title,
                                   organization: get_organization_by_id(organization_id))
    end

    def create
        build
        result = employee.save
        @success = result
    end

    def success?
        @success
    end

    def get_organization_by_id(organization_id)
       Organization.find(organization_id) if organization_id != ""
    end


end
