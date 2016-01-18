require_relative "../domain/tennis.rb"

class GameController < ApplicationController
    def home
        t = TennisGame.new
        @score = t.get_score
    end

    def server_scores
        t = TennisGame.new
        t.server_scores
        render :home
    end
end
