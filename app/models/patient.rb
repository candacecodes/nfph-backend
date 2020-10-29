class Patient < ApplicationRecord
  belongs_to :organization
  has_many :providers, through: :organization
  has_many :entries

  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates :patient_uuid, :email_address, uniqueness: true
  validates :name, :patient_uuid, :organization_id, :email_address, presence: true
end
