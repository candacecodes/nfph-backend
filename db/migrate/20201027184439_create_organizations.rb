class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :location
      t.string :phone

      t.timestamps
    end
  end
end
