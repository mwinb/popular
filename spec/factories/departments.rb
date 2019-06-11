FactoryBot.define do
  factory :department do
    name { "HR" }
    organization { FactoryBot.create(:organization) }
  end

  def perform(big_dependency)
    big_dependency.execute
    42
  end
end
