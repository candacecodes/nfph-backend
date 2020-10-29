class ChangeNameToFirstNameInPatients < ActiveRecord::Migration[6.0]
  def change
    rename_column :patients, :name, :first_name
    rename_column :providers, :name, :first_name
    add_column :patients, :last_name, :string
    add_column :providers, :last_name, :string
  end
end
