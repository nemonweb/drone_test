require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(assigns(:article)).to eq(Article.first)
      expect(assigns(:count)).to eq(Article.count)
      expect(response).to have_http_status(:success)
    end
  end

end
