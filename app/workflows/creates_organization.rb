class CreatesOrganization
    attr_accessor :name

    def initialize(name: "")
        @name = name
    end

    def build
       self.organization = Organization.new(name: name)
    end

    def create
        build
        organization.save
    end
end