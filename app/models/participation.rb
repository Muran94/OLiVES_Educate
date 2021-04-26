class Participation < ApplicationRecord
  ### Modules

  ### Associations
  belongs_to :conference
  belongs_to :user
  belongs_to :slot

  ### Callbacks

  ### Enums

  ### Delegations

  ### Validations
  validates :user_id, presence: true
  validates :slot_id, presence: true

  ### Scopes

  ### Class Methods
  class << self
  end

  ### Instance Methods

end
