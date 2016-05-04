require "rails_helper"

RSpec.describe Offering, type: :model do
  context " #initialize without department_id" do
    let(:subject) { Offering.new }
    it { is_expected.to be_invalid }
  end

  context " #initialize with department_id" do
    let(:mod) do
      Moderator.create(
        firstname: "Yusuf",
        lastname: "Daniju",
        email: "danijuyusuf@gmail.com",
        password: "aaaaaaa",
        password_confirmation: "aaaaaaa"
      )
    end

    let(:dept) do
      Department.create(
        name: "hath",
        description: "making",
        moderator_id: mod.id
      )
    end

    let(:subject) { Offering.new(department_id: dept.id) }
    it { is_expected.to be_valid }
  end
end
