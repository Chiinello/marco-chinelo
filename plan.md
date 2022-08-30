1) Setup your project
  - gem install bundle
  - bundle init (gemfile with dependencies tracked)
  - bundle add: rspec, pg
  - rspec --init
  - add your database_connection.rb to lib

2) Go through Design 2 Table Recipe
  - analyse user story
  - create table (table name, column names, data types)
  - create your test database
  - create .sql file for creating table => load unto test database

3) Go through design a Model & Repo Recipe
  - One for each model & repo pair
  - Design & implement Model Class
  - Design Repo Class methods & tests
  - create .sql test seed, for truncating table and inserting test records/values
  - IF tables are linked need to do it all in one sql seed file
  - Make the reload methods to run before each rspec test (refer to model and repo class design recipe step 7)
  - TDD