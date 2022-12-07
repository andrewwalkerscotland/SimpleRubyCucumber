# SimpleRubyCucumber
You'll never get your head round this one

For a scaffold project that can be used in VS Code or your favourite IDE you can either just clone this repo or, if you want to create from scratch follow instructions below on linux box


cd

ruby -v
	
      ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux-gnu]

bundle -v
	
      Bundler version 2.3.5

cd Projects

mkdir SimpleRubyCucumber

cd SimpleRubyCucumber

vi Gemfile

          source "https://rubygems.org"
          gem 'cucumber'
          gem 'rspec-expectations'

sudo bundle install

bundle exec cucumber
	
      No such file or directory - features. You can use `cucumber --init` to get started.

cucumber –init
	
    create   features
	  create   features/step_definitions
	  create   features/support
	  create   features/support/env.rb

bundle exec cucumber
	
    0 scenarios
    0 steps
    0m0.000s

features/complex_math.feature

    Feature: Complex maths
    Scenario: Most simple test ever
    Given I add 1 plus 1
    Then the answer is 2

bundle exec cucumber

  Feature: Complex math

  Scenario: Most simple test ever # features/complex_math.feature:2
    Given I add 1 plus 1          # features/complex_math.feature:3
    Then the answer is 2          # features/complex_math.feature:4

  1 scenario (1 undefined)
  2 steps (2 undefined)
  0m0.013s

features/step_definitions/complex_math.rb

    Given('I add {int} plus {int}') do |numba1, numba2|
      @total = numba1 + numba2
    end

    Then('the answer is {int}') do |expectedTotal|
      expect(@total == expectedTotal)
    end

bundle exec cucumber

Feature: Complex math

  Scenario: Most simple test ever # features/complex_math.feature:2
    Given I add 1 plus 1          # features/step_definitions/complex_math.rb:1
    Then the answer is 2          # features/step_definitions/complex_math.rb:5

1 scenario (1 passed)
2 steps (2 passed)
0m0.013s
