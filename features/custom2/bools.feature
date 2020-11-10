Feature: RUN APP WITH CUSTOM2 ON BOOLEANS

Background:
    Given a config = "custom2"

Scenario: A && B && !C => H = T
    When evaluating booleans
    """
    {
        "A": true,
        "B": true,
        "C": false
    }
    """
    Then H = "T"

Scenario: A && !B && C => H = M
    When evaluating booleans
    """
    {
        "A": true,
        "B": false,
        "C": true
    }
    """
    Then H = "M"