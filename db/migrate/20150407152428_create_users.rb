class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :github_login
      t.string :image
      t.string :access_token

      t.timestamps null: false
    end
  end
end
