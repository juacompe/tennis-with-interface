require_relative "../domain/tennis.rb"

class GameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def game
        if not @game
            @game = TennisGame.new
        end
        @game
    end

    def home
        @score = game.get_score
    end

    def server_scores
        game.server_scores
        home
        render :home
    end
end
