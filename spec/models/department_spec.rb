require "rails_helper"

RSpec.describe Department, type: :model do
  let(:mod) do
    create(:moderator)
  end
  context " #initialize without args" do
    let(:subject) { Department.new(moderator_id: mod.id) }
    it { is_expected.to be_invalid }
  end

  context " #initialize with args" do
    let(:subject) do
      Department.new(name: "hath", description: "making", moderator_id: mod.id)
    end
    it { is_expected.to be_valid }
  end
end
