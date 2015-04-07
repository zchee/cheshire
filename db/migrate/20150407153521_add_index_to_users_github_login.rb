class AddIndexToUsersGithubLogin < ActiveRecord::Migration
  def change
    add_index :users, :github_login, unique: true
  end
end
