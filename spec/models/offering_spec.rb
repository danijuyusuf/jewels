require "rails_helper"

RSpec.describe Offering, type: :model do
  context " #initialize without department_id" do
    let(:subject) { Offering.new }
    it { is_expected.to be_invalid }
  end

  context " #initialize with department_id" do
    dept = Department.create(name: "health", description: "making you happy")
    let(:subject) { Offering.new(department_id: dept.id) }
    it { is_expected.to be_valid }
  end
end
