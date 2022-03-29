# Git Flow for Pairs

## Person A
* Create a local git repository
* Link local repo to a GitHub repository (follow all Github instructions)
* Add Person B as a collaborator to the repository
  * From the GitHub Repository main page, click on settings
  * In the left nav bar, click on Collaborators
  * Search for Person B's username and click Add Collaborator

## Person B
* Check email for invitation to join the project as a collaborator
* Click link in the email and accept the invitation.
* Clone the repository to your local machine.
* Create new branch `deposit_xy` (replace `xy` with your initials)
* Unskip test `3. can deposit money` in `bank_account_spec.rb` file
* Run `rspec` to check errors
* Add/revise code to `deposit` method in `BankAccount` class
* Repeat steps as needed to pass test
* Commit and push branch to Github
* Create Pull Request on GitHub

## Person A
* Review and comment on Person B’s Pull Request
* Merge Person B’s Pull Request
* Create new branch `withdraw_ab` (replace `ab` with your initials)
* Unskip tests `4. can withdraw money` and `5. cannot overdraw account` in `bank_account_spec.rb` file
* Run `rspec` to check errors
* Add/revise code to `withdraw` method in `BankAccount` class
* Repeat steps as needed to pass test
* Commit and push branch to Github
* Create Pull Request on GitHub

## Person B
* Review and comment on Person A’s Pull Request
* Merge Person A’s Pull Request

## Both Persons
* Checkout local `main` branch
* Pull from `main` branch
* Create new branches:
  * Person A: Create new branch `verify_ab`
  * Person B: Create new branch `verify_xy`
* Unskip test `6. can verify account details` in `bank_account_spec.rb` file
* Run `rspec` to check errors
* Add/revise code to `verify?` method in `BankAccount` class
* Repeat steps as needed to pass test
* Commit and push branch to Github
* Create Pull Request on GitHub

## Person A
* Review and comment on Person B’s Pull Request
* Merge Person B’s Pull Request

## Person B
* Review and comment on Person A’s Pull Request
* Merge Person A’s Pull Request
* uh oh...
