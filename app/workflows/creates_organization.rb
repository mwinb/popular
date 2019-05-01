class CreatesOrganization
    attr_accessor :organization_name, :organization

    def initialize(organization_name: "")
        @organization_name = organization_name
    end

    def build
       self.organization = Organization.new(name: organization_name)
    end

    def create
        build
        organization.save
    end
end