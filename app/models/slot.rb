class Slot < ApplicationRecord
  ### Modules

  ### Associations
  belongs_to :track
  has_many :presentations, dependent: :destroy
  has_many :participations
  has_many :users, through: :participations

  ### Callbacks

  ### Enums

  ### Delegations

  ### Validations

  ### Scopes

  ### Class Methods
  class << self
  end

  ### Instance Methods
  def pdatetime
    start_time.strftime("%Y年%m月%d日") + " " + ptime
  end

  def ptime
    start_time.strftime("%H:%M") + " - " + end_time.strftime("%H:%M")
  end
end
