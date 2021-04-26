class Track < ApplicationRecord
  ### Modules

  ### Associations
  belongs_to :day
  has_many :slots, dependent: :destroy

  ### Callbacks

  ### Enums

  ### Delegations

  ### Validations

  ### Scopes

  ### Class Methods
  class << self
  end

  ### Instance Methods

end
