class Entry < ApplicationRecord
  belongs_to :patient
  has_many :comments

  validates :issue, :location, :pain_level, :symptoms, :date_of_entry, :patient_id, presence: true
end
