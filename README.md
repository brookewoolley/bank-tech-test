# Bank Tech Test

I wrote this program in Ruby and have tested it with RSpec (I have 100% coverage).  I am using SimpleCov for coverage reporting and Rubocop for linting.

I have created two classes: BankAccount and BankStatement.  The account class looks after the balance and transactions.  The Statement looks after the display of the transactions.  

Process:

1.  Write user stories
2.  Diagram
3.  First test
4.  Pass test
5.  Refactor where possible
6.  Commit passing code and move onto the next test
7.  Once 'finished' I have sought feedback from a peer and have refactored both code and tests.

# User Stories

```
As a new bank account holder
when opening my account
I would like to start with a balance of 0
```

```
As a bank account holder
when making a deposit
I would like to see the amount, date and balance on my statement
```

```
As a bank account holder
when making a withdrawal
I would like to see the amount, date and balance on my statement
```

```
As a bank account holder
when wanting to review my finances
I would like to print my statement and see my transaction information
```

# Class Diagram

![irb](https://github.com/brookewoolley/bank-tech-test/blob/master/classDiagram.png)

# How to use the app

Clone this repo and run bundle install in your command-line
```
git clone git@github.com:brookewoolley/bank-tech-test.git
bundle install
```

To run the tests, open the directory in your command-line and run
```
rspec
```
To use the app, run irb and use the app as shown below

# Use of app in IRB

![irb](https://github.com/brookewoolley/bank-tech-test/blob/master/banktestirb.png)
