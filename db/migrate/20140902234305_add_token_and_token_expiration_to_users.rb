class AddTokenAndTokenExpirationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :token_expiration, :timestamp
  end
end