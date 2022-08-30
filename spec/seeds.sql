-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE users, posts RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO users (email_address, username)
  VALUES  ('user1@email.com', 'user1'),
          ('user2@email.com', 'user2');

INSERT INTO posts (title, content, views, user_id)
  VALUES  ('title1', 'content1', 10, 1),
          ('title2', 'content2', 10, 2);