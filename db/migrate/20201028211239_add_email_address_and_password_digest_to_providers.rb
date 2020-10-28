class AddEmailAddressAndPasswordDigestToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :email_address, :string
    add_column :providers, :password_digest, :string
  end
end
