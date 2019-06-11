 class CreatesOrganization
    attr_accessor :organization, :name, :location, :departments, :employees

    def initialize(name: "", location: nil, departments: nil, employees: nil)
        @name = name
        @location = location
        @departments = departments
        @employees = employees
    end

    def build
       self.organization = Organization.new(name: name,
                                            locations: location,
                                            departments: departments,
                                            employees: employees)
    end

    def create
        build
        result = organization.save
        @success = result
    end

    def success?
        @success
    end

end
