Feature: RUN APP WITH BASE ON NUMBERS

Background:
    Given a config = "base"

Scenario: H = M => K = D + (D * E / 10) (1)
    Given H value is "M"
    When evaluating numbers { "D": 2, "E": 5 }
    Then K = 3

Scenario: H = M => K = D + (D * E / 10) (2)
    Given H value is "M"
    When evaluating numbers { "D": 20, "E": 50 } 
    Then K = 120

Scenario: H = M => K = D + (D * E / 10) (3)
    Given H value is "M"
    When evaluating numbers { "D": 50, "E": 20 }
    Then K = 150

Scenario: H = P => K = D + (D * (E - F) / 25.5) (1)
    Given H value is "P"
    When evaluating numbers { "D": 2, "E": 50, "F": 50 }
    Then K = 9.843137254901961

Scenario: H = P => K = D + (D * (E - F) / 25.5) (2)
    Given H value is "P"
    When evaluating numbers { "D": 20, "E": 50, "F": 50 }
    Then K = 98.43137254901961

Scenario: H = P => K = D + (D * (E - F) / 25.5) (3)
    Given H value is "P"
    When evaluating numbers { "D": 50, "E": 50, "F": 50 }
    Then K = 246.07843137254903

Scenario: H = T => K = D - (D * F / 30) (1)
    Given H value is "T"
    When evaluating numbers { "D": 2, "F": 50 }
    Then K = -1.3333333333333335

Scenario: H = T => K = D - (D * F / 30) (2)
    Given H value is "T"
    When evaluating numbers { "D": 20, "F": 50 }
    Then K = -13.333333333333336

Scenario: H = T => K = D - (D * F / 30) (3)
    Given H value is "T"
    When evaluating numbers { "D": 50, "F": 50 }
    Then K = -33.33333333333333
