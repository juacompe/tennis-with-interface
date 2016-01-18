Feature: Tennis game
    Scenario: Game starting
        Given Game starts
        Then Score should be "Love All"

    Scenario: Server scores
        Given Game starts
        When Server scores a point
        Then Score should be "Fifteen Love"

    Scenario: Receiver scores
        Given Game starts
        When Receiver scores a point
        Then Score should be "Love Fifteen"
