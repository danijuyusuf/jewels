require "rails_helper"

RSpec.describe Moderator, type: :model do
  context "#initialize wrongly" do
    let(:subject) do
      Moderator.create(
        password: "aaaaaaa",
        password_confirmation: "aaaaaaa"
      )
    end
    it { is_expected.to be_invalid }
  end

  context "#initialize rightly" do
    let(:subject) do
      Moderator.create(
        firstname: "Yusuf",
        lastname: "Daniju",
        email: "danijuyusuf@gmail.com",
        password: "aaaaaaa",
        password_confirmation: "aaaaaaa"
      )
    end
    it { is_expected.to be_valid }
  end
end
