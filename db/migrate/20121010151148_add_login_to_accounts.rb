class AddLoginToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :login, :string
  end
end
