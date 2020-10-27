class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :patient_uuid
      t.string :diagnosis
      t.string :prescriptions, array: true, default: []
      t.belongs_to :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
