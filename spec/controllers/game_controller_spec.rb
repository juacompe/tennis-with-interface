require 'rails_helper'

RSpec.describe GameController, type: :controller do
    describe "GET #home" do
        it "use the correct template" do
            get :home
            expect(response).to render_template(:home)
        end

        it "displays the current score" do
            game = double(TennisGame)
            allow(TennisGame).to receive(:new).and_return(game)
            allow(game).to receive(:get_score).and_return("Score Text")
            get :home
            expect(assigns(:score)).to eq "Score Text"
        end
    end

    describe "POST #server_scores" do
        it "should redirects to home" do
            post :server_scores
            expect(response).to render_template(:home)
        end

        it "tell game that the server scores" do
            game = spy(TennisGame)
            allow(TennisGame).to receive(:new).and_return(game)
            post :server_scores
            expect(game).to have_received(:server_scores)
        end
    end
end
