class CreateDepartment
  attr_accessor :department_name, :organization, :employees

  def initialize(department_name: nil,
                 organization_id: "")
    @department_name = department_name
    @organization_id = organization_id
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

  def get_organization_by_id(organization_id)
    Organization.find(organization_id) if organization_id != ""
  end

end
