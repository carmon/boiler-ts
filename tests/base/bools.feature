Feature: RUN APP WITH BASE ON BOOLEANS

Background:
    Given an app A with config = 'base'

Scenario: A && B && !C => H = M
    Given a boolean group $BOOLS with
    """
    {
        "A": true,
        "B": true,
        "C": false
    }
    """
    When evaluating $BOOLS
    Then H = "M"

Scenario: A && B && C => H = P
    Given a boolean group $BOOLS with
    """
    {
        "A": true,
        "B": true,
        "C": true
    }
    """
    When evaluating $BOOLS
    Then H = "P"

Scenario: !A && B && C => H = T
    Given a boolean group $BOOLS with
    """
    {
        "A": false,
        "B": true,
        "C": true
    }
    """
    When evaluating $BOOLS
    Then H = "T"

Scenario: ERROR
    Given a boolean group $BOOLS with
    """
    {
        "A": false,
        "B": false,
        "C": false
    }
    """
    When evaluating $BOOLS
    Then H has no value