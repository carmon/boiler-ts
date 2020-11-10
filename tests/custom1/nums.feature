Feature: RUN APP WITH CUSTOM1 ON NUMBERS

Background:
    Given an app A with config = 'custom1'

Scenario: H = P => K = 2 * D + (D * E / 100) (1)
    Given a number group $NUMBERS with "{ \"D\": 2, \"E\": 5 }"
    When evaluating $NUMBERS with H = "M"
    Then K = 3

Scenario: H = P => K = 2 * D + (D * E / 100) (2)
    Given a number group $NUMBERS with "{ \"D\": 2, \"E\": 50 }"
    When evaluating $NUMBERS with H = "M"
    Then K = 12

Scenario: H = P => K = 2 * D + (D * E / 100) (3)
    Given a number group $NUMBERS with "{ \"D\": 23.5, \"E\": 50 }"
    When evaluating $NUMBERS with H = "M"
    Then K = 12