Feature: RUN APP WITH CUSTOM2 ON BOOLEANS

Background:
    Given an app A with config = 'custom2'

Scenario: A && B && !C => H = T
    Given a boolean group $BOOLS with
    """
    {
        "A": true,
        "B": true,
        "C": false
    }
    """
    When evaluating $BOOLS
    Then H = "T"

Scenario: A && !B && C => H = M
    Given a boolean group $BOOLS with
    """
    {
        "A": true,
        "B": false,
        "C": true
    }
    """
    When evaluating $BOOLS
    Then H = "M"