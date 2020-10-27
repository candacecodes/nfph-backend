class Organization < ApplicationRecord
    has_many :providers
    has_many :patients
end
