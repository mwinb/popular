  require "rails_helper"

  RSpec.describe CreatesOrganization do
  describe "initialization" do
  

      it "creates organization given name and location" do
          creator = CreatesOrganization.new(organization_name: "Baddys Pub",
                                            organization_location: "PA")
          creator.create
          expect(creator.success?).to be(true)
      end
  end


  describe "error case" do
    
  
    it "fails if no name and no location passed" do
        creator = CreatesOrganization.new(organization_name: "", organization_location: nil)
        creator.create
        expect(creator).not_to be_a_success
    end
    
    it "fails to create an organization without a name" do
        creator = CreatesOrganization.new(organization_location: "PA")
        creator.create
        expect(creator).not_to be_a_success
    end

    it "fails to create an organization without a location" do
        creator = CreatesOrganization.new(organization_name: "Baddys Pub")
        creator.create
        expect(creator).not_to be_a_success
    end
    
    it "fails if organization with name and location already exists" do
      creator = CreatesOrganization.new(organization_name: "Paddys Pub", organization_location: "PA")
      creator.build
      creator.create
      duplicate_org = CreatesOrganization.new(organization_name: "Paddys Pub", organization_location: "PA")
      duplicate_org.create
      expect(duplicate_org).not_to be_a_success
    end
    

  end
end
