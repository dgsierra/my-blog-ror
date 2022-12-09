require 'rails_helper'

RSpec.describe "Users", type: :request do
  it "returns http success if the user exist" do
    get user_path(id: 1)
    expect(response).to have_http_status(:success)
  end

  it "returns http success to the list of users" do
    get users_path(id: 1)
    debugger
    expect(response).to have_http_status(:success)
  end

  it "validate if the controller require a value for sent back info" do
    get users_path(id: 1)
    expect(response.cache_control[:private]).to eq(true)
  end

end
