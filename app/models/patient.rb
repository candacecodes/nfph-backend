class Patient < ApplicationRecord
  belongs_to :organization
  has_many :providers, through: :organization
  has_many :entries

  has_secure_password
  has_secure_password :recovery_password, validations: false

end
