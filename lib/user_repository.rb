require 'user'

class UserRepository
  # Selecting all records
  # No arguments
  def all
    # Executes the SQL query:
    sql = 'SELECT id, email_address, username FROM users;'
    # excutes SQL and gets a response (result set)
    result_set = DatabaseConnection.exec_params(sql, [])
    # This looks like an array of hashes = [ { id => '1', email_address => 'user1@email.com, ... }, ... ]

    p result_set
    exit

    users = []
    result_set.each do |record|
      user = User.new
      user.id = record['id']
      user.email_address = record['email_address']
      user.username = record['username']

      users << user
    end

    return users
  end
end