class Provider < ApplicationRecord
  belongs_to :organization
  has_many :patients, through: :organization

  has_secure_password
  has_secure_password :recovery_password, validations: false
end
