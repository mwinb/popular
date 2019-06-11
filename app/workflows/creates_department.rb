class CreateDepartment
  attr_accessor :department_name, :organization, :employees

  def initialize(department_name: "",
                 organization: "",
                 employees: "")
    @department_name = department_name
    @organization = organization
  end

  def build
    self.department = Department.new(name: department_name,
                                     organization: get_organization_by_id(organization_id))
  end

  def create
    build
    result = department.save
    @success = result
  end

  def success?
    @success
  end
end
