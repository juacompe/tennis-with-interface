class TennisGame
    def initialize
        @score = "Love All"
    end

    def get_score
        @score
    end

    def server_scores
        @score = "Fifteen Love"
    end

    def receiver_scores
        @score = "Love Fifteen"
    end
end
