Feature: RUN APP WITH CUSTOM1 ON NUMBERS

Background:
    Given a config = "custom1"

Scenario: H = P => K = 2 * D + (D * E / 100) (1)
    Given H value is "P"
    When evaluating numbers { "D": 2, "E": 5 }
    Then K = 4.1

Scenario: H = P => K = 2 * D + (D * E / 100) (2)
    Given H value is "P"
    When evaluating numbers { "D": 20, "E": 50 }
    Then K = 50

Scenario: H = P => K = 2 * D + (D * E / 100) (3)
    Given H value is "P"
    When evaluating numbers { "D": 23.5, "E": 50 }
    Then K = 58.75