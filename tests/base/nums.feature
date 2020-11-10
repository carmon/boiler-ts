Feature: RUN APP WITH BASE ON NUMBERS

Background:
    Given an app A with config = 'base'

Scenario: H = M => K = D + (D * E / 10) (1)
    Given a number group $NUMBERS with "{ \"D\": 2, \"E\": 5 }"
    When evaluating $NUMBERS with H = "M"
    Then K = 3

Scenario: H = M => K = D + (D * E / 10) (2)
    Given a number group $NUMBERS with "{ \"D\": 2, \"E\": 50 }"
    When evaluating $NUMBERS with H = "M"
    Then K = 12

Scenario: H = M => K = D + (D * E / 10) (3)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"E\": 50 }"
    When evaluating $NUMBERS with H = "M"
    Then K = 12

Scenario: H = P => K = D + (D * (E - F) / 25.5) (1)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"E\": 50, \"F\": 50 }"
    When evaluating $NUMBERS with H = "P"
    Then K = 12

Scenario: H = P => K = D + (D * (E - F) / 25.5) (2)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"E\": 50, \"F\": 50 }"
    When evaluating $NUMBERS with H = "P"
    Then K = 12

Scenario: H = P => K = D + (D * (E - F) / 25.5) (3)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"E\": 50, \"F\": 50 }"
    When evaluating $NUMBERS with H = "P"
    Then K = 12

Scenario: H = T => K = D - (D * F / 30) (1)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"F\": 50 }"
    When evaluating $NUMBERS with H = "T"
    Then K = 12

Scenario: H = T => K = D - (D * F / 30) (2)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"F\": 50 }"
    When evaluating $NUMBERS with H = "T"
    Then K = 12

Scenario: H = T => K = D - (D * F / 30) (3)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"F\": 50 }"
    When evaluating $NUMBERS with H = "T"
    Then K = 12
