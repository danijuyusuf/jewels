require "rails_helper"

RSpec.describe SessionsController, type: :controller do
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    let(:mod) do
      create(:moderator)
    end

    before(:each) do
      allow_any_instance_of(ApplicationController).
        to receive(:params).and_return(session: mod)
    end

    context "successful login" do
      before do
        allow_any_instance_of(Moderator).
          to receive(:authenticate).and_return(true)
      end

      it "redirects to moderator" do
        post :create, params: { moderator: {
          email: mod.email,
          password: mod.password
        } }

        expect(response).to redirect_to(moderator_path(mod.id))
      end
    end

    context "unsuccessful login" do
      it "renders login page" do
        post :create, params: { moderator: {
          email: mod.email,
          password: mod.password
        } }

        expect(response).to render_template("sessions/new")
      end
    end
  end

  describe "DELETE" do
    let(:mod) do
      create(:moderator)
    end

    before(:each) do
      allow_any_instance_of(ApplicationController).
        to receive(:params).and_return(session: mod)
    end

    before do
      allow_any_instance_of(Moderator).
        to receive(:authenticate).and_return(true)
    end

    it "redirects moderator to app root on logout" do
      post :create, params: { moderator: {
        email: mod.email,
        password: mod.password
      } }

      delete :destroy, params: { id: mod.id }
      expect(response).to redirect_to(root_path)
    end
  end
end
