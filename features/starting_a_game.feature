Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    Then I should see "What's your name?"
    When I press "Start Game"
    Then I should see "Hello"
