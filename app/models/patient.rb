class Patient < ApplicationRecord
  belongs_to :organization
  has_many :providers, through: :organization
  has_many :entries
end
