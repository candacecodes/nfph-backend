class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.string :owner_uuid
      t.string :date
      t.belongs_to :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
