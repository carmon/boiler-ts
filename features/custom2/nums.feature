Feature: RUN APP WITH CUSTOM1 ON NUMBERS

Background:
    Given a config = "custom1"

Scenario: H = M => K = F + D + (D * E / 100) (1)
    Given H value is "M"
    When evaluating numbers { "D": 2, "E": 5, "F": 5 }
    Then K = 3

Scenario: H = M => K = F + D + (D * E / 100) (2)
    Given H value is "M"
    When evaluating numbers { "D": 12.5, "E": 50, "F": 10 }
    Then K = 75

Scenario: H = M => K = F + D + (D * E / 100) (3)
    Given H value is "M"
    When evaluating numbers { "D": 23.5, "E": 50, "F": -10 }
    Then K = 141