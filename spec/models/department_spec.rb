require "rails_helper"

RSpec.describe Department, type: :model do
  context "#initialize without args" do
    let(:subject) { Department.new }
    it { is_expected.to be_invalid }
  end

  context "#initialize with args" do
    let(:subject) do
      Department.new(name: "health", description: "making you happy")
    end
    it { is_expected.to be_valid }
  end
end
