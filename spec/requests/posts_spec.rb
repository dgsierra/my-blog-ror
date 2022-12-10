require 'rails_helper'

RSpec.describe 'Post', type: :request do
  describe 'Get index route of users controller' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end

    describe 'Rendering the show page for the show routes' do
      before :each do
        get users_path(1)
      end

      it 'Returns success status for show routes' do
        expect(response).to have_http_status(:success)
      end

      it 'Returns or renders the show template' do
        expect(response).to render_template(:index)
      end

      it 'Checks if the view is rendering' do
        expect(response.body).to include("My view for users")
      end

    end
  end
end
