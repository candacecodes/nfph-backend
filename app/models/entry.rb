class Entry < ApplicationRecord
  belongs_to :patient
  has_many :comments
end
