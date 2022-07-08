# Calculator

1. Fork this repo
2. Clone your fork to your local machine
3. cd calculator
4. Add my repo as an upstream (`git remote add upstream git@github.com:jasonnoble/calculator.git`)
5. `bundle`

Open the editor of your choice.

## Setup

You should work on a topic branch. Make sure you are on the main branch:

```
$ git branch
* main
$
```

Make sure you have the latest changes:

```
$ git fetch upstream
$ git reset --hard upstream/main
```

Create a topic branch:

```
$ git checkout -b attempt_1
Switched to a new branch 'attempt_1'
$ git branch
* attempt_1
  main
$
```

## Overall Goals

1. Get comfortable with RSpec TDD process
2. Continue practicing Ruby
3. Get comfortable with staging and committing changes via `git`
4. You should commit at least at the end of each iteration.  The more you commit, the better.

## Running Guard

This repo has a number of automated tasks handled by the Guard gem. After creating your topic branch, run the following:

```
$ bundle exec guard --clear
```

This does a number of things:

* Runs `bundle` if you've changed your Gemfile
* Runs Rubocop to analyze your Ruby code for linting issues
* Runs RSpec

Leave this command running in your terminal. Whenever you change any code, guard will notice you saved changes and re-run the steps above.

## Iteration 1

A `Calculator` represents a simple calculator

Attributes:

* None

Methods:

* total (returns the current total, 0.00 by default)

Steps:
1. Create a spec/calculator_spec.rb file
   1. Require the spec_helper
   2. Require './lib/calculator'
   3. RSpec.describe Calculator

Verify the following via your spec file:

* Creating a calculator requires no arguments
* You can ask a calculator for its total

Iteration Rubric:

* Rubocop returns no errors
* All tests are green
* Code coverage shows 100% test coverage

## Iteration 2

A `Calculator` can add numbers

Methods:

* add(number)
  * Adds the number to the calculator's total

Special test cases (HINT: You should have an `it` block for each of these):

* Positive Numbers
* Negative Numbers
* Zero
* Decimal values (3.1415)

Iteration Rubric:

* Rubocop returns no errors
* All tests are green
* Code coverage shows 100% test coverage

## Iteration 3

A `Calculator` can subtract numbers

Methods:

* subtract(number)
  * Subtracts the number from the calculator's total

Special test cases:

* Positive Numbers
* Negative Numbers
* Zero
* Decimal values (3.1415)

Iteration Rubric:

* Rubocop returns no errors
* All tests are green
* Code coverage shows 100% test coverage

## Iteration 4

A `Calculator` can multiply numbers

Methods:

* multiply(number)
  * Multiply the calculator's total by the number

Special test cases:

* Positive Numbers
* Negative Numbers
* Zero
* Decimal values (3.1415)
* Calculators total is zero

Iteration Rubric:

* Rubocop returns no errors
* All tests are green
* Code coverage shows 100% test coverage

## Iteration 5

A `Calculator` can divide numbers

Methods:

* divide(number)
  * Divides the calculator's total by the number

Special test cases:

* Positive Numbers
* Negative Numbers
* Zero
* Decimal values (3.1415)
* Calculators total is zero

Iteration Rubric:

* Rubocop returns no errors
* All tests are green
* Code coverage shows 100% test coverage

## Iteration 6

A `Calculator` can clear its total

Methods:

* clear
  * resets the total to 0.00

Iteration Rubric:

* Rubocop returns no errors
* All tests are green
* Code coverage shows 100% test coverage

## Compare your results

After you've committed all your results via Git, you can check your work by running the following:

```
$ git diff upstream/complete
```

## Do it again!

```
git checkout main
git checkout -b attempt_2
```
