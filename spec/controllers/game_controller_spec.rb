require 'rails_helper'

RSpec.describe GameController, type: :controller do
    describe "GET #home" do
        it "displays the current score" do
            get :home
            expect(response).to render_template(:home)
        end
    end
end