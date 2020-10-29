class Comment < ApplicationRecord
  belongs_to :entry

  validates :text, :owner_uuid, :date, :entry_id, presence: true
end
