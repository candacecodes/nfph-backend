class Provider < ApplicationRecord
  belongs_to :organization
  has_many :patients, through: :organization
end
