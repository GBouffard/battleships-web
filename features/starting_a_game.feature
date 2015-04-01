Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    Then I should see "What's your name?"
    And I press "Start Game"
    And I see "Hello"
    And I see a board
    And I click on a cell

