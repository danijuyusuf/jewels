require "rails_helper"

RSpec.describe ModeratorsController, type: :controller do
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    let(:mod) do
      build(:moderator)
    end

    context "successful signup" do
      it "redirects to moderator page" do
        post :create, params: { moderator: { firstname: mod.firstname,
                                             lastname: mod.lastname,
                                             email: mod.email,
                                             password: mod.password,
                                             password_confirmation:
                                   mod.password_confirmation }
                                 }
        expect(response).to redirect_to(moderator_path(assigns(:moderator)))
      end
    end

    context "unsuccessful signup" do
      it "renders signup form" do
        post :create, params: { moderator: { firstname: mod.firstname,
                                             lastname: mod.lastname,
                                             email: mod.email,
                                             password: mod.password,
                                             password_confirmation: "nonsen" }
                                           }
        expect(response).to render_template("moderators/new")
      end
    end
  end

  describe "GET show" do
    let(:mod) do
      create(:moderator)
    end

    before(:each) do
      allow_any_instance_of(ApplicationController).
        to receive(:current_moderator).and_return(mod)
    end

    it "renders show page" do
      get :show, id: mod.id
      expect(response).to render_template("moderators/show")
    end
  end
end
