class Conference < ApplicationRecord
  ### Modules

  ### Associations
  has_many :days, dependent: :destroy
  has_many :users
  has_many :participations

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
