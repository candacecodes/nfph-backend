class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :issue
      t.string :location
      t.string :image
      t.integer :pain_level
      t.string :symptoms
      t.string :symptom_onset
      t.string :date_of_entry
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
