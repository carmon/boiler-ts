Feature: RUN APP WITH BASE ON BOOLEANS

Background:
    Given a config = "base"

Scenario: A && B && !C => H = M
    When evaluating booleans
    """
    {
        "A": true,
        "B": true,
        "C": false
    }
    """
    Then H = "M"

Scenario: A && B && C => H = P
    When evaluating booleans
    """
    {
        "A": true,
        "B": true,
        "C": true
    }
    """
    Then H = "P"

Scenario: !A && B && C => H = T
    When evaluating booleans
    """
    {
        "A": false,
        "B": true,
        "C": true
    }
    """
    Then H = "T"

Scenario: ERROR
    When evaluating booleans
    """
    {
        "A": false,
        "B": false,
        "C": false
    }
    """
    Then H has no value