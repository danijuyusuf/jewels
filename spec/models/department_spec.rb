require "rails_helper"

RSpec.describe Department, type: :model do
  let(:mod) do
    Moderator.create(
      firstname: "Yusuf",
      lastname: "Daniju",
      email: "danijuyusuf@gmail.com",
      password: "aaaaaaa",
      password_confirmation: "aaaaaaa"
    )
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
