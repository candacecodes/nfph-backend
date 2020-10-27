class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :title
      t.string :field
      t.string :provider_uuid
      t.belongs_to :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
