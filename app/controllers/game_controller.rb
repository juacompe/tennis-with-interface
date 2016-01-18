require_relative "../domain/tennis.rb"

class GameController < ApplicationController
    def home
        t = TennisGame.new
        @score = t.get_score
    end
end
