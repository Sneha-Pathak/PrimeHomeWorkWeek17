Feature: Search functionality

  @Smoke
  Scenario Outline: Search the buy car with model
    Given I am on homepage
    When I mouse hover on “buy+sell” tab
    And I click Search Cars
    Then I navigate to new and used car search page
    And I select make "<make>"
    And I select model "<model>"
    And I select location "<location>"
    And I select price "<price>"
    And I click on Find My Next Car tab
    Then I should see the make "<make>" in results

    Examples:
      | make          | model       | location           | price  |
      | Jeep          | Compass     | NSW - Newcastle    | 35000  |
      | Land Rover    | Range Rover | NSW - Sydney       | 150000 |
      | Kia           | Pregio      | NSW - Sydney       | 30000  |
      | Honda         | Civic       | NSW - New England  | 20000  |
      | Renault       | Captur      | NSW - Central West | 50000  |
      | Mercedes-Benz | A45         | NT - All           | 100000 |

