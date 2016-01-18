require_relative "../domain/tennis.rb"

class GameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def home
        if @game == nil
            @game = TennisGame.new
        end
        @score = @game.get_score
    end

    def server_scores
        if @game == nil
            @game = TennisGame.new
        end
        @game.server_scores
        @score = @game.get_score
        render :home
    end
end
