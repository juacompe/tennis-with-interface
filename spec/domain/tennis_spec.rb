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

    it "should have Love Fifteen after receiver scores" do
        t = TennisGame.new
        t.receiver_scores
        expect(t.get_score).to eq "Love Fifteen"
    end
end
