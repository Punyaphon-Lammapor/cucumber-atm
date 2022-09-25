Feature: deposit
  As a customer
  I want to deposit from my account using ATM

  Background:
    Given a customer with id 1 and pin 123 with balance 500 exists
    When I login to ATM with id 1 and pin 123

  Scenario: Deposit amount
    When I deposit 500 from ATM
    Then my account balance is 1000

  Scenario: Deposit negative amount
    When I deposit -100 from ATM
    Then my account balance is 500