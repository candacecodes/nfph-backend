class Provider < ApplicationRecord
  belongs_to :organization
  has_many :patients, through: :organization

  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates :provider_uuid, :email_address, :NPI_number, uniqueness: true
  validates :name, :provider_uuid, :organization_id, :email_address, :NPI_number, presence: true
  validates :NPI_number, length: { is: 10 }, numericality: true
end
