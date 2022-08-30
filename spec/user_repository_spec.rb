require 'user_repository'

def reset_users_table
  seed_sql = File.read('spec/seeds.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
  connection.exec(seed_sql)
end

RSpec.describe UserRepository do
  before(:each) do 
    reset_users_table
  end

  describe "#all" do
    it "returns an array of User objects" do
      repo = UserRepository.new

      users = repo.all # Returns an array of User objects

      expect(users.length).to eq 2

      expect(users[0].id).to eq 1
      expect(users[0].email_address).to eq 'user1@email.com'
      expect(users[0].username).to eq 'user1'

      expect(users[1].id).to eq 2
      expect(users[0].email_address).to eq 'user2@email.com'
      expect(users[0].username).to eq 'user2'
    end
  end
end