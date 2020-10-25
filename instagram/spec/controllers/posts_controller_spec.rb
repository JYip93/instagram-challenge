require 'rails_helper'



RSpec.describe PostsController, type: :controller do
    login_user
    describe "GET/" do
        it "respond with 200" do
            sign_in @user, scope: :admin
            get :index
            expect(response).to have_http_status(200)
        end
    end
end