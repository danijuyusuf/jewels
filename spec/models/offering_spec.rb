require "rails_helper"

RSpec.describe Offering, type: :model do
  context " #initialize without department_id" do
    let(:subject) { Offering.new }
    it { is_expected.to be_invalid }
  end

  context " #initialize with department_id" do
    let(:mod) do
      create(:moderator)
    end

    let(:dept) do
      create(:department, moderator_id: mod.id)
    end

    let(:subject) { create(:offering, department_id: dept.id) }
    it { is_expected.to be_valid }
  end
end
