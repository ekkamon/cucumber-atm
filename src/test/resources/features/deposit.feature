Feature: deposit
  As a customer
  I want to deposit cash to my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

  Scenario: Deposit successfully
    When I deposit 500
    Then my account balance is 700

  Scenario: Deposit less than zero
    When I deposit -100
    Then an error should be "Amount cannot be negative"
    And my account balance is 200

  Scenario: Deposit zero amount
    When I deposit 0
    Then my account balance is 200
