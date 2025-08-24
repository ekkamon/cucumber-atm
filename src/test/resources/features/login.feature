Feature: login
    As a customer
    I want to login to ATM
    so that I can do transactions

Background:
    Given a customer with id 1 and pin 111 exists

Scenario: Correct id and pin
    When I login to ATM with id 1 and pin 111
    Then I can login

Scenario: Incorrect pin
    When I login to ATM with id 1 and pin 222
    Then I cannot login

Scenario: Incorrect id and pin
    When I login to ATM with id 100 and pin 999
    Then I cannot login

Scenario: Incorrect id and Correct pin
    When I login to ATM with id 999 and pin 111
    Then I cannot login
