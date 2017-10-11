Feature: create movies

  As a movie buff
  So that I can organize my list of movies
  I want to be able to create and delete movies

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: creating a new movie
    When I am on the RottenPotatoes home page
    And I follow "Add new movie"
    And I fill in "Title" with "The Matrix"
    And I select "R" from "Rating"
    And I select "2017" from "movie_release_date_1i"
    And I select "July" from "movie_release_date_2i"
    And I select "4" from "movie_release_date_3i"
    And I press "Save Changes"
    Then I should see "The Matrix was successfully created."
    And I should see "2017-07-04"

Scenario: destroying a created movie
	When I am on the RottenPotatoes home page
    And I follow "Add new movie"
    And I fill in "Title" with "The Matrix"
    And I select "R" from "Rating"
    And I select "2017" from "movie_release_date_1i"
    And I select "July" from "movie_release_date_2i"
    And I select "4" from "movie_release_date_3i"
    And I press "Save Changes"
    And I follow "More about The Matrix"
    And I press "Delete"
    Then I should see "Movie 'The Matrix' deleted."