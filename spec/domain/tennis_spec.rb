require_relative "../../app/domain/tennis.rb"

RSpec.describe TennisGame do
    it "new game" do
        t = TennisGame.new
        expect(t.get_score).to eq "Love All"
    end

    it "should have Fifteen Love after server scores" do
        t = TennisGame.new
        t.server_scores
        expect(t.get_score).to eq "Fifteen Love"
    end
end
