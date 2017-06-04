Feature: ATA calc test

  Background: 
    Given user open "http://ata123456789123456789.appspot.com/" in browser

  Scenario Outline: Regression Test
    And user enter <firstVal> and <secondVal>
    When select <opt>
    And click on calculate
    Then result should <result>

    Examples: 
      | firstVal | secondVal | opt        | result |
      |        3 |         4 | "Multiply" |     12 |
      |        2 |         4 | "Add"      |      6 |
      |        2 |         4 | "Multiply" |      6 |
