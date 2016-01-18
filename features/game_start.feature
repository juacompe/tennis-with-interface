Feature: Game starts
    Scenario: Game starting
        Given Game starts
        Then Score should be "Love All"

    Scenario: First point
        Given Game starts
        When Server scores a point
        Then Score should be "Fifteen Love"
