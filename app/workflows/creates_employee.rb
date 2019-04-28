class CreatesEmployee
    attr_accessor :full_name, :employee

    def initialize(full_name: "")
        @full_name = full_name
    end

    def build
       self.employee = Employee.new(full_name: full_name)
    end

    def create
        build
        employee.save
    end

end