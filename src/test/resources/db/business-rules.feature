@DB
Feature: Verify database related business rules


  @business_rule
  Scenario: Verify the pre-defined genres in the database
    When  I send a request to retrieve genres from genres table
    Then It should be the following genres

      | pop        |
      | techno     |
      | rnb        |
      | house      |
      | classical  |
      | jazz       |
      | electronic |
      | dance      |
      | reggae     |
      | reggaeton  |
      | rap        |

  @business_rule
  Scenario: Verify the column names for albums table
    When I send a request to retrieve column names for albums table
    Then It should be the following
      | id          |
      | title       |
      | artist      |
      | genre       |
      | artworkPath |


  Scenario: Verify the duplicate usernames
    When  I send a request to retrieve usernames
    Then  the result should contain duplicates


  @db_only
  Scenario: Verify the duplicate usernames
    When  I send a request to retrieve duplicate usernames
    Then  The result should be empty

#


